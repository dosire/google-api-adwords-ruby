# This file was automatically generated during the "rake generate" step of
# library setup.
require 'adwords4r/v201003/ReportDefinitionServiceDriver.rb'

module AdWords
  module V201003
    module ReportDefinitionService

      # Wrapper class for the v201003 ReportDefinition service.
      # This class is automatically generated.
      class ReportDefinitionServiceWrapper

        # Holds the AdWords::API object to which the wrapper belongs.
        attr_reader :api

        # Holds a shortcut to the parent module.
        # Use this to avoid typing the full class name when creating classes
        # belonging to this service, e.g.
        #  service_object.module::ClassName
        # instead of
        #  AdWords::V201003::ReportDefinitionService::ClassName
        # This will make it easier to migrate your code between API versions.
        attr_reader :module

        public

        # Constructor for ReportDefinitionServiceWrapper.
        #
        # Args:
        # - driver: SOAP::RPC::Driver object with the remote SOAP methods for
        #   this service
        # - api: the AdWords::API object to which the wrapper belongs
        #
        def initialize(driver, api)
          @driver = driver
          @api = api
          @module = AdWords::V201003::ReportDefinitionService
        end

        # Calls the {get}[http://code.google.com/apis/adwords/v2009/docs/reference/ReportDefinitionService.html#get] method of the ReportDefinition service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/v2009/docs/reference/ReportDefinitionService.html#get].
        #
        # Args:
        # - selector: AdWords::V201003::ReportDefinitionService::ReportDefinitionSelector
        #
        # Returns:
        # - rval: AdWords::V201003::ReportDefinitionService::ReportDefinitionPage
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def get(selector)
          begin
            AdWords::Service.validate_param('selector',
                selector, AdWords::V201003::ReportDefinitionService::ReportDefinitionSelector)
            # Construct request object and make API call
            obj = AdWords::V201003::ReportDefinitionService::Get.new(selector)
            return @driver.get(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "get Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getReportFields}[http://code.google.com/apis/adwords/v2009/docs/reference/ReportDefinitionService.html#getReportFields] method of the ReportDefinition service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/v2009/docs/reference/ReportDefinitionService.html#getReportFields].
        #
        # Args:
        # - reportType: AdWords::V201003::ReportDefinitionService::ReportDefinitionReportType
        #
        # Returns:
        # - rval: SOAP::SOAPArray of AdWords::V201003::ReportDefinitionService::ReportDefinitionField
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getReportFields(reportType)
          begin
            AdWords::Service.validate_param('reportType',
                reportType, AdWords::V201003::ReportDefinitionService::ReportDefinitionReportType)
            # Construct request object and make API call
            obj = AdWords::V201003::ReportDefinitionService::GetReportFields.new(reportType)
            return @driver.getReportFields(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getReportFields Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {mutate}[http://code.google.com/apis/adwords/v2009/docs/reference/ReportDefinitionService.html#mutate] method of the ReportDefinition service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/v2009/docs/reference/ReportDefinitionService.html#mutate].
        #
        # Args:
        # - operations: SOAP::SOAPArray of AdWords::V201003::ReportDefinitionService::ReportDefinitionOperation
        #
        # Returns:
        # - rval: SOAP::SOAPArray of AdWords::V201003::ReportDefinitionService::ReportDefinition
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def mutate(operations)
          begin
            AdWords::Service.validate_param('operations',
                operations, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V201003::ReportDefinitionService::Mutate.new(operations)
            return @driver.mutate(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "mutate Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # <i>Extension method</i> -- Calls the AdWords::Extensions.downloadReport method
        # with +self+ as the first parameter.
        def downloadReport(report_definition_id, path)
          return AdWords::Extensions.downloadReport(self, report_definition_id, path)
        end

        # <i>Extension method</i> -- Calls the AdWords::Extensions.downloadReportAsFile method
        # with +self+ as the first parameter.
        def downloadReportAsFile(report_definition_id)
          return AdWords::Extensions.downloadReportAsFile(self, report_definition_id)
        end

      end
    end
  end
end
