#!/usr/bin/ruby
#
# Copyright 2009, Google Inc. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Contains the main classes for the client library.

require 'rubygems'
begin
  gem 'soap4r', '=1.5.8'
rescue
  require_gem 'soap4r', '=1.5.8'
end
require 'thread'
require 'uri'
require 'adwords4r/soap4rpatches'
require 'adwords4r/credentials'
require 'adwords4r/services'
require 'adwords4r/adwordslogger'
require 'adwords4r/apiextensions'

module AdWords

  # Wrapper class that serves as the main point of access for all the API usage
  class API

    attr_reader :credentials, :drivers, :xml_logger, :unit_logger, :mutex
    attr_accessor :last_units, :total_units

    public

    def initialize(credentials = AdWordsCredentials.new)
      @credentials = credentials
      @drivers = Hash.new
      @wrappers = Hash.new
      @total_units = 0
      @last_units = 0
      log_to_console = !ENV['ADWORDS4R_DEBUG'].nil? &&
          ENV['ADWORDS4R_DEBUG'].upcase == 'TRUE'
      @xml_logger = AdWordsLogger.new('soap_xml', log_to_console)
      @unit_logger = AdWordsLogger.new('request_info')
      @mutex = Mutex.new
      prepare_drivers
    end

    # Returns a service, given a version and its name. nil if not found.
    def get_service(version, name)
      return @wrappers[[version, name]]
    end

    private

    # Load all drivers and place them in a Hash, with version and name as key
    def prepare_drivers()
      Service.get_versions().each do |v|
        Service.do_require(v)
        Service.get_services(v).each do |s|
          @drivers[[v, s]], @wrappers[[v, s]] = prepare_driver(v, s)
        end
      end
    end

    def prepare_driver(v, s)
      # Set alternateurl if it has been set in credentials
      if (@credentials.alternateUrl and v <= 13) then
        endpointUrl = @credentials.alternateUrl + s + 'Service'
        driver =
            eval("#{Service.get_interface_name(v, s)}.new(\"#{endpointUrl}\")")
      elsif
        driver = eval("#{Service.get_interface_name(v, s)}.new")
      end
      @credentials.get_handlers(v).each do |handler|
        driver.headerhandler << handler
      end

      # Add response handler to this driver for API unit usage processing.
      driver.callbackhandler = ResponseHandler.new(self)
      # Plug the wiredump to our XML logger
      driver.wiredump_dev = @xml_logger
      driver.options['protocol.http.ssl_config.verify_mode'] = nil
      # NOTE: Set driver.proxy if you are behing a proxy

      # Generate wrapper class for this driver
      Service.generate_wrapper_class(v, s)
      # and create an instance of it
      wrapper = eval("#{Service.get_wrapper_name(v, s)}.new(driver)")
      return driver, wrapper
    end
  end

  # Error class to wrap several error types in Ruby objects
  class Error

    class Error < StandardError; end

    # Raised if a call is made to a method that does not exist
    # in the AdWords SOAP API
    class UnknownAPICall < Error; end

    # Raised if an attempt is made to instantiate a type that does not exist
    # in the AdWords SOAP API
    class UnknownType < Error; end

    # Raised if an attempt is made to authenticate in >= v200902 with missing or
    # wrong information
    class AuthError < Error; end

    # Raised if a call returns with a SOAP error,
    # gives you easy access to adwords error fields
    class ApiError < Error

      attr_accessor :soap_faultcode
      attr_accessor :soap_faultstring
      attr_accessor :top_code
      attr_accessor :internal
      attr_accessor :message
      attr_accessor :code
      attr_accessor :detail
      attr_accessor :field
      attr_accessor :index
      attr_accessor :isExemptable
      attr_accessor :textIndex
      attr_accessor :textLength
      attr_accessor :trigger

      # These *_ex attributes have been added to correct deficiencies with the
      # initial implementation.
      # They should expose more useful information (i.e. text of errors instead
      # of a SOAP element) and proper mapping of a fault's trigger and code.
      # The old attributes are left behind for backward compatibility;
      # hopefully this isn't too confusing!
      attr_accessor :trigger_ex
      attr_accessor :soap_faultcode_ex
      attr_accessor :soap_faultstring_ex
      attr_accessor :code_ex

      def initialize(soap_fault)
        @soap_faultcode = protect { soap_fault.faultcode }
        @soap_faultcode_ex = protect { soap_fault.faultcode.text }
        @soap_faultstring = protect { soap_fault.faultstring }
        @soap_faultstring_ex = protect { soap_fault.faultstring.text }
        if protect { soap_fault.detail and soap_fault.detail.fault }
          fault = soap_fault.detail.fault
          @top_code = protect { fault.code }
          @internal = protect { fault.internal }
          @message = protect { fault.message }
          @trigger_ex = protect { fault.trigger }
          @code_ex = protect { fault.code }
          if protect { fault.errors and fault.errors.size > 0 }
            error = fault.errors.first
            @code = protect { error.code }
            @detail = protect { error.detail }
            @field = protect { error.field }
            @index = protect { error.index }
            @isExemptable = protect { error.isExemptable }
            @textIndex = protect { error.textIndex }
            @textLength = protect { error.textLength }
            @trigger = protect { error.trigger }
          end
        end
      end

      private

      def protect(&block)
        begin
          block.call
        rescue
          nil
        end
      end
    end
  end

  # Handler class to process response messages for API unit usage and statistics
  # information.
  class ResponseHandler < SOAP::RPC::CallbackHandler

    def initialize(parent)
      @parent = parent
    end

    def on_callback(method_name, endpoint, envelope)
      units = nil
      operations = nil
      response_time = nil
      request_id = nil

      header = envelope.header

      @parent.mutex.synchronize do
        unless header['units'].nil?
          units = header['units'].element.text.to_i
          @parent.last_units = units
          @parent.total_units = @parent.total_units + units
        end

        unless header['operations'].nil?
          operations = header['operations'].element.text.to_i
        end

        unless header['responseTime'].nil?
          response_time = header['responseTime'].element.text.to_i
        end

        unless header['requestId'].nil?
          request_id = header['requestId'].element.text.to_s
        end

        host = URI.parse(endpoint).host

        data = "host=#{host} method=#{method_name} " +
               "responseTime=#{response_time} operations=#{operations} " +
               "units=#{units} requestId=#{request_id}"

        @parent.unit_logger << data
      end
    end
  end
end
