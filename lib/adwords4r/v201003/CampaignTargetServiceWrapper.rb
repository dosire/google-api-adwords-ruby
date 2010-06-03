# This file was automatically generated during the "rake generate" step of
# library setup.
require 'adwords4r/v201003/CampaignTargetServiceDriver.rb'

module AdWords
  module V201003
    module CampaignTargetService

      # Wrapper class for the v201003 CampaignTarget service.
      # This class is automatically generated.
      class CampaignTargetServiceWrapper

        # Holds the AdWords::API object to which the wrapper belongs.
        attr_reader :api

        # Holds a shortcut to the parent module.
        # Use this to avoid typing the full class name when creating classes
        # belonging to this service, e.g.
        #  service_object.module::ClassName
        # instead of
        #  AdWords::V201003::CampaignTargetService::ClassName
        # This will make it easier to migrate your code between API versions.
        attr_reader :module

        public

        # Constructor for CampaignTargetServiceWrapper.
        #
        # Args:
        # - driver: SOAP::RPC::Driver object with the remote SOAP methods for
        #   this service
        # - api: the AdWords::API object to which the wrapper belongs
        #
        def initialize(driver, api)
          @driver = driver
          @api = api
          @module = AdWords::V201003::CampaignTargetService
        end

        # Calls the {get}[http://code.google.com/apis/adwords/v2009/docs/reference/CampaignTargetService.html#get] method of the CampaignTarget service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/v2009/docs/reference/CampaignTargetService.html#get].
        #
        # Args:
        # - selector: AdWords::V201003::CampaignTargetService::CampaignTargetSelector
        #
        # Returns:
        # - rval: AdWords::V201003::CampaignTargetService::CampaignTargetPage
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def get(selector)
          begin
            AdWords::Service.validate_param('selector',
                selector, AdWords::V201003::CampaignTargetService::CampaignTargetSelector)
            # Construct request object and make API call
            obj = AdWords::V201003::CampaignTargetService::Get.new(selector)
            return @driver.get(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "get Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {mutate}[http://code.google.com/apis/adwords/v2009/docs/reference/CampaignTargetService.html#mutate] method of the CampaignTarget service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/v2009/docs/reference/CampaignTargetService.html#mutate].
        #
        # Args:
        # - operations: SOAP::SOAPArray of AdWords::V201003::CampaignTargetService::CampaignTargetOperation
        #
        # Returns:
        # - rval: AdWords::V201003::CampaignTargetService::CampaignTargetReturnValue
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def mutate(operations)
          begin
            AdWords::Service.validate_param('operations',
                operations, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V201003::CampaignTargetService::Mutate.new(operations)
            return @driver.mutate(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "mutate Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

      end
    end
  end
end
