# This file was automatically generated during the "rake generate" step of
# library setup.
require 'adwords4r/v201003/BidLandscapeServiceDriver.rb'

module AdWords
  module V201003
    module BidLandscapeService

      # Wrapper class for the v201003 BidLandscape service.
      # This class is automatically generated.
      class BidLandscapeServiceWrapper

        # Holds the AdWords::API object to which the wrapper belongs.
        attr_reader :api

        # Holds a shortcut to the parent module.
        # Use this to avoid typing the full class name when creating classes
        # belonging to this service, e.g.
        #  service_object.module::ClassName
        # instead of
        #  AdWords::V201003::BidLandscapeService::ClassName
        # This will make it easier to migrate your code between API versions.
        attr_reader :module

        public

        # Constructor for BidLandscapeServiceWrapper.
        #
        # Args:
        # - driver: SOAP::RPC::Driver object with the remote SOAP methods for
        #   this service
        # - api: the AdWords::API object to which the wrapper belongs
        #
        def initialize(driver, api)
          @driver = driver
          @api = api
          @module = AdWords::V201003::BidLandscapeService
        end

        # Calls the {getBidLandscape}[http://code.google.com/apis/adwords/v2009/docs/reference/BidLandscapeService.html#getBidLandscape] method of the BidLandscape service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/v2009/docs/reference/BidLandscapeService.html#getBidLandscape].
        #
        # Args:
        # - selector: AdWords::V201003::BidLandscapeService::BidLandscapeSelector
        #
        # Returns:
        # - rval: SOAP::SOAPArray of AdWords::V201003::BidLandscapeService::BidLandscape
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getBidLandscape(selector)
          begin
            AdWords::Service.validate_param('selector',
                selector, AdWords::V201003::BidLandscapeService::BidLandscapeSelector)
            # Construct request object and make API call
            obj = AdWords::V201003::BidLandscapeService::GetBidLandscape.new(selector)
            return @driver.getBidLandscape(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getBidLandscape Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

      end
    end
  end
end
