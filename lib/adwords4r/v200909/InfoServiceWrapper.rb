# This file was automatically generated during the "rake generate" step of
# library setup.
require 'adwords4r/v200909/InfoServiceDriver.rb'

module AdWords
  module V200909
    module InfoService

      # Wrapper class for the v200909 Info service.
      # This class is automatically generated.
      class InfoServiceWrapper

        # Holds the AdWords::API object to which the wrapper belongs.
        attr_reader :api

        # Holds a shortcut to the parent module.
        # Use this to avoid typing the full class name when creating classes
        # belonging to this service, e.g.
        #  service_object.module::ClassName
        # instead of
        #  AdWords::V200909::InfoService::ClassName
        # This will make it easier to migrate your code between API versions.
        attr_reader :module

        public

        # Constructor for InfoServiceWrapper.
        #
        # Args:
        # - driver: SOAP::RPC::Driver object with the remote SOAP methods for
        #   this service
        # - api: the AdWords::API object to which the wrapper belongs
        #
        def initialize(driver, api)
          @driver = driver
          @api = api
          @module = AdWords::V200909::InfoService
        end

        # Calls the {get}[http://code.google.com/apis/adwords/v2009/docs/reference/InfoService.html#get] method of the Info service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/v2009/docs/reference/InfoService.html#get].
        #
        # Args:
        # - selector: AdWords::V200909::InfoService::InfoSelector
        #
        # Returns:
        # - rval: AdWords::V200909::InfoService::ApiUsageInfo
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def get(selector)
          begin
            AdWords::Service.validate_param('selector',
                selector, AdWords::V200909::InfoService::InfoSelector)
            # Construct request object and make API call
            obj = AdWords::V200909::InfoService::Get.new(selector)
            return @driver.get(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "get Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

      end
    end
  end
end
