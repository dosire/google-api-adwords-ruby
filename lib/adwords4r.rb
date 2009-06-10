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
#
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
require 'adwords4r/utils'

# Main namespace for all the client library's modules and classes.
module AdWords

  # Wrapper class that serves as the main point of access for all the API usage.
  #
  # Holds all the services, as well as login credentials.
  #
  class API

    # AdWordsCredentials object used for authentication
    attr_reader :credentials
    # AdWordsLogger object used for logging SOAP XML
    attr_reader :xml_logger
    # AdWordsLogger object used for logging request info
    attr_reader :unit_logger
    # Mutex object for controlling concurrent access to API object data
    attr_reader :mutex
    # Number of units spent on the last operation via this API object
    attr_accessor :last_units
    # Number of units spent in total, via this API object
    attr_accessor :total_units

    public

    # Constructor for API.
    #
    # Args:
    # - credentials: AdWordsCredentials object containing the login information
    #
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

    # Obtain an API service, given a version and its name.
    #
    # Args:
    # - version: intended API version. Must be an integer.
    # - name: name for the intended service
    #
    # Returns:
    # The service wrapper for the intended service.
    #
    def get_service(version, name)
      return @wrappers[[version, name]]
    end

    private

    # Load all drivers and place them in a Hash, with version and name as key
    def prepare_drivers()
      Service.get_versions().each do |version|
        Service.do_require(version)
        Service.get_services(version).each do |service|
          @drivers[[version, service]], @wrappers[[version, service]] =
              prepare_driver(version, service)
        end
      end
    end

    # Handle loading of a single service.
    # Creates the driver, sets up handlers and loggers, declares the appropriate
    # wrapper class and creates an instance of it.
    #
    # Args:
    # - version: intended API version. Must be an integer.
    # - service: name for the intended service
    #
    # Returns:
    # - the driver for the service
    # - the simplified wrapper generated for the driver
    #
    def prepare_driver(version, service)
      # Set alternateurl if it has been set in credentials
      if (@credentials.alternateUrl and version <= 13) then
        endpointUrl = @credentials.alternateUrl + service + 'Service'
        driver = eval("#{Service.get_interface_name(version, service)}.new" +
                      "(\"#{endpointUrl}\")")
      elsif
        driver = eval("#{Service.get_interface_name(version, service)}.new")
      end
      @credentials.get_handlers(version).each do |handler|
        driver.headerhandler << handler
      end

      # Add response handler to this driver for API unit usage processing.
      driver.callbackhandler = ResponseHandler.new(self)
      # Plug the wiredump to our XML logger
      driver.wiredump_dev = @xml_logger
      driver.options['protocol.http.ssl_config.verify_mode'] = nil
      # NOTE: Set driver.proxy if you are behing a proxy

      # Create an instance of the wrapper class for this service.
      wrapper_class = Service.get_wrapper_name(version, service)
      wrapper = eval("#{wrapper_class}.new(driver, self)")
      return driver, wrapper
    end
  end

  # Error class to wrap several error types in Ruby objects
  class Error

    private

    # Creates a list of error types, where the index is the error number.
    #
    # Returns:
    # Array with error type per index.
    #
    def self.initialize_api_errors
      error_map = {
        :RequestError => [(1..10), (12..17), (19..42), (44..49), 51, 54,
                          (57..59), (61..63), (70..83), (87..94), 96, 97, 99,
                          112, 115, 116, (120..125), 127, 128, 131, 133, 134,
                          137, 138, (140..142), (144..147), 149, 153,
                          (156..158), (170..174), 176, 177, 184, 186, 188, 190,
                          206, 207],
        :GoogleInternalError => [0, 18, 55, 60, 95, 98, 117, 143, 155, 166],
        :AccountError => [(84..86), 111, 119, 129, 139, (162..165), 183, 189],
        :WebpageError => [(100..105)],
        :BillingError => [50, 52, 53, 106, 107, 109, 110, 114, 118, 130, 132]
      }

      error_list = []

      # Convert error map into a flat list, indexed by error number
      error_map.each do |error, ranges|
        ranges.each do |range|
          if range.respond_to? 'each'
            range.each { |number| error_list[number] = error }
          else
            error_list[range] = error
          end
        end
      end
      return error_list
    end

    @@api_errors = self.initialize_api_errors

    public

    # Creates a specific ApiError subclass, based on the provided SOAP fault.
    #
    # Args:
    # - soap_fault: the SOAP::FaultError on which to base this error
    #
    # Returns:
    # A new instance of the appropriate subclass of ApiError
    #
    def self.create_specific_api_error(soap_fault)
      error = @@api_errors[soap_fault.faultcode.text.to_i]
      if error.nil?
        return ApiError.new(soap_fault)
      else
        return eval("#{error}.new(soap_fault)")
      end
    end

    # Generic error class for non-specific errors.
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

      # The *_ex attributes have been added to correct deficiencies with the
      # initial implementation.
      # They should expose more useful information (i.e. text of errors instead
      # of a SOAP element) and proper mapping of a fault's trigger and code.
      # The old attributes are left behind for backward compatibility;
      # hopefully this isn't too confusing!
      attr_accessor :trigger_ex
      attr_accessor :soap_faultcode_ex
      attr_accessor :soap_faultstring_ex
      attr_accessor :code_ex

      # Constructor for ApiError.
      #
      # Args:
      # - soap_fault: SOAP fault returned by the service.
      #
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

    # Responsible for handling AdWords API errors 1-10, 12-17, 19-42, 44-49, 51,
    # 54, 57-59, 61-63, 70-83, 87-94, 96, 97, 99, 112, 115, 116, 120-125, 127,
    # 128, 131, 133, 134, 137, 138, 140-142, 144-147, 149, 153, 156-158,
    # 170-174, 176, 177, 184, 186, 188, 190, 206, 207.
    class RequestError < ApiError; end

    # Responsible for handling AdWords API errors 0, 18, 55, 60, 95, 98, 117,
    # 143, 155, 166.
    class GoogleInternalError < ApiError; end

    # Responsible for handling AdWords API errors 84-86, 111, 119, 129, 139,
    # 162-165, 183, 189.
    class AccountError < ApiError; end

    # Responsible for handling AdWords API errors 100-105.
    class WebpageError < ApiError; end

    # Responsible for handling AdWords API errors 50, 52, 53, 106, 107, 109,
    # 110, 114, 118, 130, 132.
    class BillingError < ApiError; end
  end

  # Handler class to process response messages for API unit usage and statistics
  # information.
  class ResponseHandler < SOAP::RPC::CallbackHandler

    # Constructor for ResponseHandler.
    #
    # Args:
    # - parent: AdWords::API object to which the ResponseHandler should be tied
    #
    def initialize(parent)
      @parent = parent
    end

    # Handles the callback method.
    # Logs the request data and tracks unit usage.
    #
    # Args:
    # - method_name: name for the operation that was invoked
    # - endpoint: the enodpoint URL the request was sent to
    # - envelope: the envelope for the SOAP response that was received
    #
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
