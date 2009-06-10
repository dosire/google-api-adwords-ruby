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
# Helper methods for loading and managing the available services.

#
module AdWords

  # Contains helper methods for loading and managing the available services.
  module Service

    @@services = {
      13 => ["Account", "AdGroup", "Ad", "Campaign", "Criterion", "Info",
             "KeywordTool", "Report", "SiteSuggestion", "TrafficEstimator"],
      200902 => ["AdGroupAd", "AdGroupCriterion", "AdGroup",
                 "CampaignCriterion", "Campaign", "CampaignTarget"]
    }

    ARRAY_CLASSNAME = 'SOAP::SOAPArray'

    public

    # Get the available API versions.
    #
    # Returns:
    # List of versions available (as integers)
    #
    def self.get_versions
      @@services.keys
    end

    # Get the list of service names for a given version
    #
    # Args:
    # - version: the API version (as an integer)
    #
    # Returns:
    # List of names of services (as strings) available for given version
    #
    def self.get_services(version)
      @@services[version]
    end

    # Perform the loading of the necessary source files for a version
    #
    # Args:
    # - version: the API version (as an integer)
    #
    def self.do_require(version)
      get_services(version).each do |service|
        eval("require 'adwords4r/v#{version}/#{service}ServiceWrapper.rb'")
      end
    end

    # Generate the wrapper class for a given service.
    # These classes make it easier to invoke the API methods, by removing the
    # need to instance a <MethodName> object, instead allowing passing of the
    # call parameters directly.
    # Here is an example of a generated wrapper class, with one API method and
    # one extension:
    #  class SampleServiceWrapper
    #
    #    attr_reader :api
    #
    #    def initialize(driver, api)
    #      @driver = driver
    #      @api = api
    #    end
    #
    #    def getSomething(par1, par2)
    #      begin
    #        AdWords::Service.validate_param('par1', par1, SOAP::SOAPArray)
    #        AdWords::Service.validate_param('par2', par2, SOAP::SOAPInt)
    #        # Construct request object and make API call
    #        obj = AdWords::V13::GetSomething.new(par1, par2)
    #        return @driver.getSomething(obj)
    #      rescue SOAP::FaultError => fault
    #        raise(AdWords::Error::create_specific_api_error(fault),
    #            "getSomething Call Failed: " + fault.faultstring.to_s, caller)
    #      end
    #    end
    #
    #    def doSomethingElseExtension(par1, par2)
    #      return AdWords::Extensions.doSomethingElseExtension(self, par1, par2)
    #    end
    #  end
    #
    # Args:
    # - version: the API version (as an integer)
    # - service: the service name (as a string)
    #
    # Returns:
    # The Ruby code for the class, as a string.
    #
    def self.generate_wrapper_class(version, service)
      wrapper = service + "ServiceWrapper"
      module_name = get_module_name(version, service)
      driver = get_interface_name(version, service)
      driver_class = eval(driver)

      registry = eval("#{module_name}::DefaultMappingRegistry::LiteralRegistry")

      class_def = <<-EOS
# This file was automatically generated during the "rake generate" step of the
# library setup.
require 'adwords4r/v#{version}/#{service}ServiceDriver.rb'

module AdWords
  module V#{version}
    module #{service}Service

      # Wrapper class for the v#{version.to_s} #{service} service.
      # This class is automatically generated.
      class #{wrapper}

        # Holds the AdWords::API object to which the wrapper belongs
        attr_reader :api

        public

        # Constructor for #{wrapper}.
        #
        # Args:
        # - driver: SOAP::RPC::Driver object with the remote SOAP methods for
        #   this service
        # - api: the AdWords::API object to which the wrapper belongs
        #
        def initialize(driver, api)
          @driver = driver
          @api = api
        end

      EOS

      # Add service methods
      methods = driver_class::Methods
      module_name = get_module_name(version, service)
      methods.each do |method|
        name = method[1]
        doc_link = get_doc_link(version, service, name)
        method_def = <<-EOS
        # Calls the {#{name}}[#{doc_link}] method of the #{service} service.
        # Check {the online documentation for this method}[#{doc_link}].
        EOS

        method_class = eval("#{module_name}::#{fix_case_up(name)}")
        arguments = registry.schema_definition_from_class(method_class).elements

        if arguments.size > 0
          method_def += <<-EOS
        #
        # Args:
          EOS
        end

        # Add list of arguments to the RDoc comment
        arguments.each_with_index do |elem, index|
          if get_type(elem) == ARRAY_CLASSNAME
            method_def += <<-EOS
        # - #{elem.varname}: #{get_type(elem)} of #{elem.mapped_class}
            EOS
          else
            method_def += <<-EOS
        # - #{elem.varname}: #{get_type(elem)}
            EOS
          end
        end

        response_class = eval("#{module_name}::#{fix_case_up(name)}Response")
        returns = registry.schema_definition_from_class(response_class).elements

        if returns.size > 0
          method_def += <<-EOS
        #
        # Returns:
          EOS
        end

        # Add list of returns to the RDoc comment
        returns.each_with_index do |elem, index|
          if get_type(elem) == ARRAY_CLASSNAME
            method_def += <<-EOS
        # - #{elem.varname}: #{get_type(elem)} of #{elem.mapped_class}
            EOS
          else
            method_def += <<-EOS
        # - #{elem.varname}: #{get_type(elem)}
            EOS
          end
        end

        arg_names = []
        arguments.each do |elem|
          arg_names << elem.varname
        end
        arg_list = arg_names.join(', ')

        method_def += <<-EOS
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def #{name}(#{arg_list})
          begin
        EOS

        # Add validation for every argument
        arguments.each_with_index do |elem, index|
          method_def += <<-EOS
            AdWords::Service.validate_param('#{elem.varname}',
                #{arg_names[index]}, #{get_type(elem)})
          EOS
        end

        method_def += <<-EOS
            # Construct request object and make API call
            obj = #{module_name}::#{fix_case_up(name)}.new(#{arg_list})
            return @driver.#{name}(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "#{name} Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        EOS
        class_def += method_def
      end

      # Add extension methods, if any
      extensions = AdWords::Extensions::extensions[[version, service]]
      unless extensions.nil?
        extensions.each do |ext|
          params = AdWords::Extensions::methods[ext].join(', ')
          arglist = 'self'
          arglist += ", #{params}" if params != ''
          method_def = <<-EOS
        # <i>Extension method</i> -- Calls the AdWords::Extensions.#{ext} method
        # with +self+ as the first parameter.
        def #{ext}(#{params})
          return AdWords::Extensions.#{ext}(#{arglist})
        end

          EOS
          class_def += method_def
        end
      end

      class_def += <<-EOS
      end
    end
  end
end
      EOS
      return class_def
    end

    # Returns the full module name for a given service
    #
    # Args:
    # - version: the API version (as an integer)
    # - service: the service name (as a string)
    #
    # Returns:
    # The full module name for the given service (as a string)
    #
    def self.get_module_name(version, service)
      return "AdWords::V#{version.to_s}::#{service}Service"
    end

    # Returns the full interface class name for a given service
    #
    # Args:
    # - version: the API version (as an integer)
    # - service: the service name (as a string)
    #
    # Returns:
    # The full interface class name for the given service (as a string)
    #
    def self.get_interface_name(version, service)
      if (version <= 13)
        return get_module_name(version, service) + "::#{service}Interface"
      else
        return get_module_name(version, service) +
            "::#{service}ServiceInterface"
      end
    end

    # Returns the full wrapper class name for a given service
    #
    # Args:
    # - version: the API version (as an integer)
    # - service: the service name (as a string)
    #
    # Returns:
    # The full wrapper class name for the given service (as a string)
    #
    def self.get_wrapper_name(version, service)
      return get_module_name(version, service) + "::#{service}ServiceWrapper"
    end

    # Validates whether a parameter is of the correct type
    # This method is invoked by the wrappers during runtime to check the
    # validity of every parameter.
    #
    # Args:
    # - param_name: the parameter name (as a String)
    # - param: the parameter value
    # - type: the expected type (the class object itself)
    #
    # Returns:
    # nil, upon success
    #
    # Raises:
    # - ArgumentError: in case of an unexpected type
    #
    def self.validate_param(param_name, param, type)
      return nil if param.is_a? type

      begin
        type.new(param)
      rescue
        raise ArgumentError, "Parameter '#{param_name}'" +
            " should be convertible into type #{type.to_s}"
      end
      return nil
    end

    private

    # Helper method to fix a method name from camelCase to CamelCase.
    #
    # Args:
    # - name: the method name
    #
    # Returns:
    # The fixed name.
    #
    def self.fix_case_up(name)
      return name[0, 1].upcase + name[1..-1]
    end

    # Helper method to create a link to a method's entry in the API online docs.
    #
    # Args:
    # - version: the API version (as an integer)
    # - service: the service name (as a string)
    # - method: the method name (as a string)
    #
    # Returns:
    # The URL to the method's entry in the documentation (as a string).
    # +nil+ if none.
    #
    def self.get_doc_link(version, service, method)
      if version <= 13
        base = 'http://code.google.com/apis/adwords/docs/developer/'
        url = base + service + 'Service.html#' + method
        return url
      elsif version >= 200902
        base = 'http://code.google.com/apis/adwords/v2009/docs/reference/'
        url = base + service + 'Service.html#' + method
        return url
      else
        return nil
      end
    end

    # Helper method to return the expected type for a parameter, given the
    # SchemaElementDefinition.
    #
    # Args:
    # - element: SOAP::Mapping::SchemaElementDefinition element for the
    #   parameter (taken from the schema definition of the class)
    #
    # Returns:
    # The full name for the expected parameter type (as a String)
    #
    def self.get_type(element)
      # Check if it's an array
      if element.as_array?
        return ARRAY_CLASSNAME
      else
        return element.mapped_class
      end
    end
  end
end
