# This file was automatically generated during the "rake generate" step of
# library setup.
require 'adwords4r/v200909/TargetingIdeaServiceDriver.rb'

module AdWords
  module V200909
    module TargetingIdeaService

      # Wrapper class for the v200909 TargetingIdea service.
      # This class is automatically generated.
      class TargetingIdeaServiceWrapper

        # Holds the AdWords::API object to which the wrapper belongs.
        attr_reader :api

        # Holds a shortcut to the parent module.
        # Use this to avoid typing the full class name when creating classes
        # belonging to this service, e.g.
        #  service_object.module::ClassName
        # instead of
        #  AdWords::V200909::TargetingIdeaService::ClassName
        # This will make it easier to migrate your code between API versions.
        attr_reader :module

        public

        # Constructor for TargetingIdeaServiceWrapper.
        #
        # Args:
        # - driver: SOAP::RPC::Driver object with the remote SOAP methods for
        #   this service
        # - api: the AdWords::API object to which the wrapper belongs
        #
        def initialize(driver, api)
          @driver = driver
          @api = api
          @module = AdWords::V200909::TargetingIdeaService
        end

        # Calls the {get}[http://code.google.com/apis/adwords/v2009/docs/reference/TargetingIdeaService.html#get] method of the TargetingIdea service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/v2009/docs/reference/TargetingIdeaService.html#get].
        #
        # Args:
        # - selector: AdWords::V200909::TargetingIdeaService::TargetingIdeaSelector
        #
        # Returns:
        # - rval: AdWords::V200909::TargetingIdeaService::TargetingIdeaPage
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def get(selector)
          begin
            AdWords::Service.validate_param('selector',
                selector, AdWords::V200909::TargetingIdeaService::TargetingIdeaSelector)
            # Construct request object and make API call
            obj = AdWords::V200909::TargetingIdeaService::Get.new(selector)
            return @driver.get(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "get Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getBulkKeywordIdeas}[http://code.google.com/apis/adwords/v2009/docs/reference/TargetingIdeaService.html#getBulkKeywordIdeas] method of the TargetingIdea service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/v2009/docs/reference/TargetingIdeaService.html#getBulkKeywordIdeas].
        #
        # Args:
        # - selector: AdWords::V200909::TargetingIdeaService::TargetingIdeaSelector
        #
        # Returns:
        # - rval: AdWords::V200909::TargetingIdeaService::TargetingIdeaPage
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getBulkKeywordIdeas(selector)
          begin
            AdWords::Service.validate_param('selector',
                selector, AdWords::V200909::TargetingIdeaService::TargetingIdeaSelector)
            # Construct request object and make API call
            obj = AdWords::V200909::TargetingIdeaService::GetBulkKeywordIdeas.new(selector)
            return @driver.getBulkKeywordIdeas(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getBulkKeywordIdeas Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

      end
    end
  end
end
