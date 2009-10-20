# This file was automatically generated during the "rake generate" step of
# library setup.
require 'adwords4r/v200909/GeoLocationServiceDriver.rb'

module AdWords
  module V200909
    module GeoLocationService

      # Wrapper class for the v200909 GeoLocation service.
      # This class is automatically generated.
      class GeoLocationServiceWrapper

        # Holds the AdWords::API object to which the wrapper belongs.
        attr_reader :api

        # Holds a shortcut to the parent module.
        # Use this to avoid typing the full class name when creating classes
        # belonging to this service, e.g.
        #  service_object.module::ClassName
        # instead of
        #  AdWords::V200909::GeoLocationService::ClassName
        # This will make it easier to migrate your code between API versions.
        attr_reader :module

        public

        # Constructor for GeoLocationServiceWrapper.
        #
        # Args:
        # - driver: SOAP::RPC::Driver object with the remote SOAP methods for
        #   this service
        # - api: the AdWords::API object to which the wrapper belongs
        #
        def initialize(driver, api)
          @driver = driver
          @api = api
          @module = AdWords::V200909::GeoLocationService
        end

        # Calls the {get}[http://code.google.com/apis/adwords/v2009/docs/reference/GeoLocationService.html#get] method of the GeoLocation service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/v2009/docs/reference/GeoLocationService.html#get].
        #
        # Args:
        # - selector: AdWords::V200909::GeoLocationService::GeoLocationSelector
        #
        # Returns:
        # - rval: SOAP::SOAPArray of AdWords::V200909::GeoLocationService::GeoLocation
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def get(selector)
          begin
            AdWords::Service.validate_param('selector',
                selector, AdWords::V200909::GeoLocationService::GeoLocationSelector)
            # Construct request object and make API call
            obj = AdWords::V200909::GeoLocationService::Get.new(selector)
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
