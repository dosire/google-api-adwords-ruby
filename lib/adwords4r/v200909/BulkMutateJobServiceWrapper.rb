# This file was automatically generated during the "rake generate" step of
# library setup.
require 'adwords4r/v200909/BulkMutateJobServiceDriver.rb'

module AdWords
  module V200909
    module BulkMutateJobService

      # Wrapper class for the v200909 BulkMutateJob service.
      # This class is automatically generated.
      class BulkMutateJobServiceWrapper

        # Holds the AdWords::API object to which the wrapper belongs.
        attr_reader :api

        # Holds a shortcut to the parent module.
        # Use this to avoid typing the full class name when creating classes
        # belonging to this service, e.g.
        #  service_object.module::ClassName
        # instead of
        #  AdWords::V200909::BulkMutateJobService::ClassName
        # This will make it easier to migrate your code between API versions.
        attr_reader :module

        public

        # Constructor for BulkMutateJobServiceWrapper.
        #
        # Args:
        # - driver: SOAP::RPC::Driver object with the remote SOAP methods for
        #   this service
        # - api: the AdWords::API object to which the wrapper belongs
        #
        def initialize(driver, api)
          @driver = driver
          @api = api
          @module = AdWords::V200909::BulkMutateJobService
        end

        # Calls the {get}[http://code.google.com/apis/adwords/v2009/docs/reference/BulkMutateJobService.html#get] method of the BulkMutateJob service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/v2009/docs/reference/BulkMutateJobService.html#get].
        #
        # Args:
        # - selector: AdWords::V200909::BulkMutateJobService::BulkMutateJobSelector
        #
        # Returns:
        # - rval: SOAP::SOAPArray of AdWords::V200909::BulkMutateJobService::BulkMutateJob
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def get(selector)
          begin
            AdWords::Service.validate_param('selector',
                selector, AdWords::V200909::BulkMutateJobService::BulkMutateJobSelector)
            # Construct request object and make API call
            obj = AdWords::V200909::BulkMutateJobService::Get.new(selector)
            return @driver.get(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "get Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {mutate}[http://code.google.com/apis/adwords/v2009/docs/reference/BulkMutateJobService.html#mutate] method of the BulkMutateJob service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/v2009/docs/reference/BulkMutateJobService.html#mutate].
        #
        # Args:
        # - operation: AdWords::V200909::BulkMutateJobService::JobOperation
        #
        # Returns:
        # - rval: AdWords::V200909::BulkMutateJobService::BulkMutateJob
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def mutate(operation)
          begin
            AdWords::Service.validate_param('operation',
                operation, AdWords::V200909::BulkMutateJobService::JobOperation)
            # Construct request object and make API call
            obj = AdWords::V200909::BulkMutateJobService::Mutate.new(operation)
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
