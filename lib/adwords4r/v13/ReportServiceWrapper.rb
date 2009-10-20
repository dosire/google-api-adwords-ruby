# This file was automatically generated during the "rake generate" step of
# library setup.
require 'adwords4r/v13/ReportServiceDriver.rb'

module AdWords
  module V13
    module ReportService

      # Wrapper class for the v13 Report service.
      # This class is automatically generated.
      class ReportServiceWrapper

        # Holds the AdWords::API object to which the wrapper belongs.
        attr_reader :api

        # Holds a shortcut to the parent module.
        # Use this to avoid typing the full class name when creating classes
        # belonging to this service, e.g.
        #  service_object.module::ClassName
        # instead of
        #  AdWords::V13::ReportService::ClassName
        # This will make it easier to migrate your code between API versions.
        attr_reader :module

        public

        # Constructor for ReportServiceWrapper.
        #
        # Args:
        # - driver: SOAP::RPC::Driver object with the remote SOAP methods for
        #   this service
        # - api: the AdWords::API object to which the wrapper belongs
        #
        def initialize(driver, api)
          @driver = driver
          @api = api
          @module = AdWords::V13::ReportService
        end

        # Calls the {deleteReport}[http://code.google.com/apis/adwords/docs/developer/ReportService.html#deleteReport] method of the Report service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/ReportService.html#deleteReport].
        #
        # Args:
        # - reportJobId: SOAP::SOAPLong
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def deleteReport(reportJobId)
          begin
            AdWords::Service.validate_param('reportJobId',
                reportJobId, SOAP::SOAPLong)
            # Construct request object and make API call
            obj = AdWords::V13::ReportService::DeleteReport.new(reportJobId)
            return @driver.deleteReport(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "deleteReport Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getAllJobs}[http://code.google.com/apis/adwords/docs/developer/ReportService.html#getAllJobs] method of the Report service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/ReportService.html#getAllJobs].
        #
        # Returns:
        # - getAllJobsReturn: SOAP::SOAPArray of AdWords::V13::ReportService::ReportJob
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getAllJobs()
          begin
            # Construct request object and make API call
            obj = AdWords::V13::ReportService::GetAllJobs.new()
            return @driver.getAllJobs(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getAllJobs Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getGzipReportDownloadUrl}[http://code.google.com/apis/adwords/docs/developer/ReportService.html#getGzipReportDownloadUrl] method of the Report service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/ReportService.html#getGzipReportDownloadUrl].
        #
        # Args:
        # - reportJobId: SOAP::SOAPLong
        #
        # Returns:
        # - getGzipReportDownloadUrlReturn: SOAP::SOAPString
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getGzipReportDownloadUrl(reportJobId)
          begin
            AdWords::Service.validate_param('reportJobId',
                reportJobId, SOAP::SOAPLong)
            # Construct request object and make API call
            obj = AdWords::V13::ReportService::GetGzipReportDownloadUrl.new(reportJobId)
            return @driver.getGzipReportDownloadUrl(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getGzipReportDownloadUrl Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getReportDownloadUrl}[http://code.google.com/apis/adwords/docs/developer/ReportService.html#getReportDownloadUrl] method of the Report service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/ReportService.html#getReportDownloadUrl].
        #
        # Args:
        # - reportJobId: SOAP::SOAPLong
        #
        # Returns:
        # - getReportDownloadUrlReturn: SOAP::SOAPString
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getReportDownloadUrl(reportJobId)
          begin
            AdWords::Service.validate_param('reportJobId',
                reportJobId, SOAP::SOAPLong)
            # Construct request object and make API call
            obj = AdWords::V13::ReportService::GetReportDownloadUrl.new(reportJobId)
            return @driver.getReportDownloadUrl(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getReportDownloadUrl Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getReportJobStatus}[http://code.google.com/apis/adwords/docs/developer/ReportService.html#getReportJobStatus] method of the Report service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/ReportService.html#getReportJobStatus].
        #
        # Args:
        # - reportJobId: SOAP::SOAPLong
        #
        # Returns:
        # - getReportJobStatusReturn: AdWords::V13::ReportService::ReportJobStatus
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getReportJobStatus(reportJobId)
          begin
            AdWords::Service.validate_param('reportJobId',
                reportJobId, SOAP::SOAPLong)
            # Construct request object and make API call
            obj = AdWords::V13::ReportService::GetReportJobStatus.new(reportJobId)
            return @driver.getReportJobStatus(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getReportJobStatus Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {scheduleReportJob}[http://code.google.com/apis/adwords/docs/developer/ReportService.html#scheduleReportJob] method of the Report service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/ReportService.html#scheduleReportJob].
        #
        # Args:
        # - job: AdWords::V13::ReportService::ReportJob
        #
        # Returns:
        # - scheduleReportJobReturn: SOAP::SOAPLong
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def scheduleReportJob(job)
          begin
            AdWords::Service.validate_param('job',
                job, AdWords::V13::ReportService::ReportJob)
            # Construct request object and make API call
            obj = AdWords::V13::ReportService::ScheduleReportJob.new(job)
            return @driver.scheduleReportJob(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "scheduleReportJob Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {validateReportJob}[http://code.google.com/apis/adwords/docs/developer/ReportService.html#validateReportJob] method of the Report service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/ReportService.html#validateReportJob].
        #
        # Args:
        # - job: AdWords::V13::ReportService::ReportJob
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def validateReportJob(job)
          begin
            AdWords::Service.validate_param('job',
                job, AdWords::V13::ReportService::ReportJob)
            # Construct request object and make API call
            obj = AdWords::V13::ReportService::ValidateReportJob.new(job)
            return @driver.validateReportJob(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "validateReportJob Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # <i>Extension method</i> -- Calls the AdWords::Extensions.downloadXmlReport method
        # with +self+ as the first parameter.
        def downloadXmlReport(job_id)
          return AdWords::Extensions.downloadXmlReport(self, job_id)
        end

        # <i>Extension method</i> -- Calls the AdWords::Extensions.downloadCsvReport method
        # with +self+ as the first parameter.
        def downloadCsvReport(job_id)
          return AdWords::Extensions.downloadCsvReport(self, job_id)
        end

      end
    end
  end
end
