# This file was automatically generated during the "rake generate" step of the
# library setup.
require 'adwords4r/v13/InfoServiceDriver.rb'

module AdWords
  module V13
    module InfoService

      # Wrapper class for the v13 Info service.
      # This class is automatically generated.
      class InfoServiceWrapper

        # Holds the AdWords::API object to which the wrapper belongs
        attr_reader :api

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
        end

        # Calls the {getFreeUsageQuotaThisMonth}[http://code.google.com/apis/adwords/docs/developer/InfoService.html#getFreeUsageQuotaThisMonth] method of the Info service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/InfoService.html#getFreeUsageQuotaThisMonth].
        #
        # Returns:
        # - getFreeUsageQuotaThisMonthReturn: SOAP::SOAPLong
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getFreeUsageQuotaThisMonth()
          begin
            # Construct request object and make API call
            obj = AdWords::V13::InfoService::GetFreeUsageQuotaThisMonth.new()
            return @driver.getFreeUsageQuotaThisMonth(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getFreeUsageQuotaThisMonth Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getMethodCost}[http://code.google.com/apis/adwords/docs/developer/InfoService.html#getMethodCost] method of the Info service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/InfoService.html#getMethodCost].
        #
        # Args:
        # - service: SOAP::SOAPString
        # - method: SOAP::SOAPString
        # - date: SOAP::SOAPDate
        #
        # Returns:
        # - getMethodCostReturn: SOAP::SOAPInt
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getMethodCost(service, method, date)
          begin
            AdWords::Service.validate_param('service',
                service, SOAP::SOAPString)
            AdWords::Service.validate_param('method',
                method, SOAP::SOAPString)
            AdWords::Service.validate_param('date',
                date, SOAP::SOAPDate)
            # Construct request object and make API call
            obj = AdWords::V13::InfoService::GetMethodCost.new(service, method, date)
            return @driver.getMethodCost(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getMethodCost Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getOperationCount}[http://code.google.com/apis/adwords/docs/developer/InfoService.html#getOperationCount] method of the Info service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/InfoService.html#getOperationCount].
        #
        # Args:
        # - startDate: SOAP::SOAPDate
        # - endDate: SOAP::SOAPDate
        #
        # Returns:
        # - getOperationCountReturn: SOAP::SOAPLong
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getOperationCount(startDate, endDate)
          begin
            AdWords::Service.validate_param('startDate',
                startDate, SOAP::SOAPDate)
            AdWords::Service.validate_param('endDate',
                endDate, SOAP::SOAPDate)
            # Construct request object and make API call
            obj = AdWords::V13::InfoService::GetOperationCount.new(startDate, endDate)
            return @driver.getOperationCount(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getOperationCount Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getOperationsQuotaThisMonth}[http://code.google.com/apis/adwords/docs/developer/InfoService.html#getOperationsQuotaThisMonth] method of the Info service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/InfoService.html#getOperationsQuotaThisMonth].
        #
        # Returns:
        # - getOperationsQuotaThisMonthReturn: SOAP::SOAPLong
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getOperationsQuotaThisMonth()
          begin
            # Construct request object and make API call
            obj = AdWords::V13::InfoService::GetOperationsQuotaThisMonth.new()
            return @driver.getOperationsQuotaThisMonth(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getOperationsQuotaThisMonth Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getUnitCount}[http://code.google.com/apis/adwords/docs/developer/InfoService.html#getUnitCount] method of the Info service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/InfoService.html#getUnitCount].
        #
        # Args:
        # - startDate: SOAP::SOAPDate
        # - endDate: SOAP::SOAPDate
        #
        # Returns:
        # - getUnitCountReturn: SOAP::SOAPLong
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getUnitCount(startDate, endDate)
          begin
            AdWords::Service.validate_param('startDate',
                startDate, SOAP::SOAPDate)
            AdWords::Service.validate_param('endDate',
                endDate, SOAP::SOAPDate)
            # Construct request object and make API call
            obj = AdWords::V13::InfoService::GetUnitCount.new(startDate, endDate)
            return @driver.getUnitCount(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getUnitCount Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getUnitCountForClients}[http://code.google.com/apis/adwords/docs/developer/InfoService.html#getUnitCountForClients] method of the Info service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/InfoService.html#getUnitCountForClients].
        #
        # Args:
        # - clientEmails: SOAP::SOAPArray of SOAP::SOAPString
        # - startDate: SOAP::SOAPDate
        # - endDate: SOAP::SOAPDate
        #
        # Returns:
        # - getUnitCountForClientsReturn: SOAP::SOAPArray of AdWords::V13::InfoService::ClientUsageRecord
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getUnitCountForClients(clientEmails, startDate, endDate)
          begin
            AdWords::Service.validate_param('clientEmails',
                clientEmails, SOAP::SOAPArray)
            AdWords::Service.validate_param('startDate',
                startDate, SOAP::SOAPDate)
            AdWords::Service.validate_param('endDate',
                endDate, SOAP::SOAPDate)
            # Construct request object and make API call
            obj = AdWords::V13::InfoService::GetUnitCountForClients.new(clientEmails, startDate, endDate)
            return @driver.getUnitCountForClients(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getUnitCountForClients Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getUnitCountForMethod}[http://code.google.com/apis/adwords/docs/developer/InfoService.html#getUnitCountForMethod] method of the Info service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/InfoService.html#getUnitCountForMethod].
        #
        # Args:
        # - service: SOAP::SOAPString
        # - method: SOAP::SOAPString
        # - startDate: SOAP::SOAPDate
        # - endDate: SOAP::SOAPDate
        #
        # Returns:
        # - getUnitCountForMethodReturn: SOAP::SOAPLong
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getUnitCountForMethod(service, method, startDate, endDate)
          begin
            AdWords::Service.validate_param('service',
                service, SOAP::SOAPString)
            AdWords::Service.validate_param('method',
                method, SOAP::SOAPString)
            AdWords::Service.validate_param('startDate',
                startDate, SOAP::SOAPDate)
            AdWords::Service.validate_param('endDate',
                endDate, SOAP::SOAPDate)
            # Construct request object and make API call
            obj = AdWords::V13::InfoService::GetUnitCountForMethod.new(service, method, startDate, endDate)
            return @driver.getUnitCountForMethod(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getUnitCountForMethod Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getUsageQuotaThisMonth}[http://code.google.com/apis/adwords/docs/developer/InfoService.html#getUsageQuotaThisMonth] method of the Info service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/InfoService.html#getUsageQuotaThisMonth].
        #
        # Returns:
        # - getUsageQuotaThisMonthReturn: SOAP::SOAPLong
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getUsageQuotaThisMonth()
          begin
            # Construct request object and make API call
            obj = AdWords::V13::InfoService::GetUsageQuotaThisMonth.new()
            return @driver.getUsageQuotaThisMonth(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getUsageQuotaThisMonth Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # <i>Extension method</i> -- Calls the AdWords::Extensions.getMethodUsage method
        # with +self+ as the first parameter.
        def getMethodUsage(start_date, end_date)
          return AdWords::Extensions.getMethodUsage(self, start_date, end_date)
        end

        # <i>Extension method</i> -- Calls the AdWords::Extensions.getClientUnitsUsage method
        # with +self+ as the first parameter.
        def getClientUnitsUsage(start_date, end_date)
          return AdWords::Extensions.getClientUnitsUsage(self, start_date, end_date)
        end

      end
    end
  end
end
