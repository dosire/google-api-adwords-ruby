# This file was automatically generated during the "rake generate" step of
# library setup.
require 'adwords4r/v13/AccountServiceDriver.rb'

module AdWords
  module V13
    module AccountService

      # Wrapper class for the v13 Account service.
      # This class is automatically generated.
      class AccountServiceWrapper

        # Holds the AdWords::API object to which the wrapper belongs.
        attr_reader :api

        # Holds a shortcut to the parent module.
        # Use this to avoid typing the full class name when creating classes
        # belonging to this service, e.g.
        #  service_object.module::ClassName
        # instead of
        #  AdWords::V13::AccountService::ClassName
        # This will make it easier to migrate your code between API versions.
        attr_reader :module

        public

        # Constructor for AccountServiceWrapper.
        #
        # Args:
        # - driver: SOAP::RPC::Driver object with the remote SOAP methods for
        #   this service
        # - api: the AdWords::API object to which the wrapper belongs
        #
        def initialize(driver, api)
          @driver = driver
          @api = api
          @module = AdWords::V13::AccountService
        end

        # Calls the {getAccountInfo}[http://code.google.com/apis/adwords/docs/developer/AccountService.html#getAccountInfo] method of the Account service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/AccountService.html#getAccountInfo].
        #
        # Returns:
        # - getAccountInfoReturn: AdWords::V13::AccountService::AccountInfo
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getAccountInfo()
          begin
            # Construct request object and make API call
            obj = AdWords::V13::AccountService::GetAccountInfo.new()
            return @driver.getAccountInfo(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getAccountInfo Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getClientAccountInfos}[http://code.google.com/apis/adwords/docs/developer/AccountService.html#getClientAccountInfos] method of the Account service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/AccountService.html#getClientAccountInfos].
        #
        # Returns:
        # - getClientAccountInfosReturn: SOAP::SOAPArray of AdWords::V13::AccountService::ClientAccountInfo
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getClientAccountInfos()
          begin
            # Construct request object and make API call
            obj = AdWords::V13::AccountService::GetClientAccountInfos.new()
            return @driver.getClientAccountInfos(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getClientAccountInfos Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getClientAccounts}[http://code.google.com/apis/adwords/docs/developer/AccountService.html#getClientAccounts] method of the Account service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/AccountService.html#getClientAccounts].
        #
        # Returns:
        # - getClientAccountsReturn: SOAP::SOAPArray of SOAP::SOAPString
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getClientAccounts()
          begin
            # Construct request object and make API call
            obj = AdWords::V13::AccountService::GetClientAccounts.new()
            return @driver.getClientAccounts(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getClientAccounts Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getMccAlerts}[http://code.google.com/apis/adwords/docs/developer/AccountService.html#getMccAlerts] method of the Account service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/AccountService.html#getMccAlerts].
        #
        # Returns:
        # - getMccAlertsReturn: SOAP::SOAPArray of AdWords::V13::AccountService::MccAlert
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getMccAlerts()
          begin
            # Construct request object and make API call
            obj = AdWords::V13::AccountService::GetMccAlerts.new()
            return @driver.getMccAlerts(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getMccAlerts Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {updateAccountInfo}[http://code.google.com/apis/adwords/docs/developer/AccountService.html#updateAccountInfo] method of the Account service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/AccountService.html#updateAccountInfo].
        #
        # Args:
        # - accountInfo: AdWords::V13::AccountService::AccountInfo
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def updateAccountInfo(accountInfo)
          begin
            AdWords::Service.validate_param('accountInfo',
                accountInfo, AdWords::V13::AccountService::AccountInfo)
            # Construct request object and make API call
            obj = AdWords::V13::AccountService::UpdateAccountInfo.new(accountInfo)
            return @driver.updateAccountInfo(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "updateAccountInfo Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

      end
    end
  end
end
