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
# Helper methods for loading and managing the available services

module AdWords

  class Service

    @@services = {
      13 => ["Account", "AdGroup", "Ad", "Campaign", "Criterion", "Info",
             "KeywordTool", "Report", "SiteSuggestion", "TrafficEstimator"],
      200902 => ["AdGroupAd", "AdGroupCriterion", "AdGroup",
                 "CampaignCriterion", "Campaign", "CampaignTarget"]
    }

    public

    # Get the available API versions
    def self.get_versions
      @@services.keys
    end

    # Get the list of service names for a given version
    def self.get_services(version)
      @@services[version]
    end

    # Perform the loading of the necessary source files for a version
    def self.do_require(version)
      get_services(version).each do |s|
        eval("require 'adwords4r/v#{version}/#{s}ServiceDriver'")
      end
    end

    # Generate the wrapper class for a given service.
    # These classes make it easier to invoke the API methods, by removing the
    # need to instance a <MethodName> object, instead allowing passing of the
    # call parameters directly.
    # Here is an example of a generated wrapper, with one API method and one
    # extension:
    # class SampleServiceWrapper
    #
    #   def initialize(driver)
    #     @driver = driver
    #   end
    #
    #   def getSomething(*arg)
    #     begin
    #       obj = AdWords::V13::GetSomething.new(*arg)
    #       return @driver.getSomething(obj)
    #     rescue SOAP::FaultError => fault
    #       raise (Error::ApiError.new(fault),
    #           "getSomething Call Failed: " + fault.faultstring.to_s, caller)
    #     end
    #   end
    #
    #   def doSomethingElseExtension(par1, par2)
    #     return AdWords::Extensions.doSomethingElseExtension(self, par1, par2)
    #   end
    # end
    def self.generate_wrapper_class(version, service)
      wrapper = service + "ServiceWrapper"

      mod = eval(get_module_name(version, service))

      unless mod.const_defined? wrapper  # Avoid double initialization
        driver = eval(get_interface_name(version, service))
        class_def = <<-EOS
          class #{wrapper}
            def initialize(driver)
              @driver = driver
            end
        EOS

        # Add service methods
        methods = driver::Methods
        module_name = get_module_name(version, service)
        methods.each do |method|
          name = method[1]
          method_def = <<-EOS
            def #{name}(*arg)
              begin
                obj = #{module_name}::#{fix_case_up(name)}.new(*arg)
                return @driver.#{name}(obj)
              rescue SOAP::FaultError => fault
                raise(Error::ApiError.new(fault),
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
              def #{ext}(#{params})
                return AdWords::Extensions.#{ext}(#{arglist})
              end
            EOS
            class_def += method_def
          end
        end

        class_def += "end"
        mod.class_eval(class_def)
      end
      return nil
    end

    # Returns the full module name for a given service
    def self.get_module_name(version, service)
      return "AdWords::V#{version.to_s}::#{service}Service"
    end

    # Returns the full interface class name for a given service
    def self.get_interface_name(version, service)
      if (version <= 13)
        return get_module_name(version, service) + "::#{service}Interface"
      else
        return get_module_name(version, service) +
            "::#{service}ServiceInterface"
      end
    end

    # Returns the full wrapper class name for a given service
    def self.get_wrapper_name(version, service)
      return get_module_name(version, service) + "::#{service}ServiceWrapper"
    end

    private

    def self.fix_case_up(name)
      return name[0, 1].upcase + name[1..-1]
    end
  end
end
