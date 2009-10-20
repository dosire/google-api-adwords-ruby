# This file was automatically generated during the "rake generate" step of
# library setup.
require 'adwords4r/v13/AdGroupServiceDriver.rb'

module AdWords
  module V13
    module AdGroupService

      # Wrapper class for the v13 AdGroup service.
      # This class is automatically generated.
      class AdGroupServiceWrapper

        # Holds the AdWords::API object to which the wrapper belongs.
        attr_reader :api

        # Holds a shortcut to the parent module.
        # Use this to avoid typing the full class name when creating classes
        # belonging to this service, e.g.
        #  service_object.module::ClassName
        # instead of
        #  AdWords::V13::AdGroupService::ClassName
        # This will make it easier to migrate your code between API versions.
        attr_reader :module

        public

        # Constructor for AdGroupServiceWrapper.
        #
        # Args:
        # - driver: SOAP::RPC::Driver object with the remote SOAP methods for
        #   this service
        # - api: the AdWords::API object to which the wrapper belongs
        #
        def initialize(driver, api)
          @driver = driver
          @api = api
          @module = AdWords::V13::AdGroupService
        end

        # Calls the {addAdGroup}[http://code.google.com/apis/adwords/docs/developer/AdGroupService.html#addAdGroup] method of the AdGroup service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/AdGroupService.html#addAdGroup].
        #
        # Args:
        # - campaignID: SOAP::SOAPInt
        # - newData: AdWords::V13::AdGroupService::AdGroup
        #
        # Returns:
        # - addAdGroupReturn: AdWords::V13::AdGroupService::AdGroup
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def addAdGroup(campaignID, newData)
          begin
            AdWords::Service.validate_param('campaignID',
                campaignID, SOAP::SOAPInt)
            AdWords::Service.validate_param('newData',
                newData, AdWords::V13::AdGroupService::AdGroup)
            # Construct request object and make API call
            obj = AdWords::V13::AdGroupService::AddAdGroup.new(campaignID, newData)
            return @driver.addAdGroup(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "addAdGroup Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {addAdGroupList}[http://code.google.com/apis/adwords/docs/developer/AdGroupService.html#addAdGroupList] method of the AdGroup service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/AdGroupService.html#addAdGroupList].
        #
        # Args:
        # - campaignID: SOAP::SOAPInt
        # - newData: SOAP::SOAPArray of AdWords::V13::AdGroupService::AdGroup
        #
        # Returns:
        # - addAdGroupListReturn: SOAP::SOAPArray of AdWords::V13::AdGroupService::AdGroup
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def addAdGroupList(campaignID, newData)
          begin
            AdWords::Service.validate_param('campaignID',
                campaignID, SOAP::SOAPInt)
            AdWords::Service.validate_param('newData',
                newData, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V13::AdGroupService::AddAdGroupList.new(campaignID, newData)
            return @driver.addAdGroupList(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "addAdGroupList Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getActiveAdGroups}[http://code.google.com/apis/adwords/docs/developer/AdGroupService.html#getActiveAdGroups] method of the AdGroup service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/AdGroupService.html#getActiveAdGroups].
        #
        # Args:
        # - campaignID: SOAP::SOAPInt
        #
        # Returns:
        # - getActiveAdGroupsReturn: SOAP::SOAPArray of AdWords::V13::AdGroupService::AdGroup
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getActiveAdGroups(campaignID)
          begin
            AdWords::Service.validate_param('campaignID',
                campaignID, SOAP::SOAPInt)
            # Construct request object and make API call
            obj = AdWords::V13::AdGroupService::GetActiveAdGroups.new(campaignID)
            return @driver.getActiveAdGroups(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getActiveAdGroups Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getAdGroup}[http://code.google.com/apis/adwords/docs/developer/AdGroupService.html#getAdGroup] method of the AdGroup service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/AdGroupService.html#getAdGroup].
        #
        # Args:
        # - adGroupId: SOAP::SOAPLong
        #
        # Returns:
        # - getAdGroupReturn: AdWords::V13::AdGroupService::AdGroup
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getAdGroup(adGroupId)
          begin
            AdWords::Service.validate_param('adGroupId',
                adGroupId, SOAP::SOAPLong)
            # Construct request object and make API call
            obj = AdWords::V13::AdGroupService::GetAdGroup.new(adGroupId)
            return @driver.getAdGroup(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getAdGroup Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getAdGroupList}[http://code.google.com/apis/adwords/docs/developer/AdGroupService.html#getAdGroupList] method of the AdGroup service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/AdGroupService.html#getAdGroupList].
        #
        # Args:
        # - adgroupIDs: SOAP::SOAPArray of SOAP::SOAPLong
        #
        # Returns:
        # - getAdGroupListReturn: SOAP::SOAPArray of AdWords::V13::AdGroupService::AdGroup
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getAdGroupList(adgroupIDs)
          begin
            AdWords::Service.validate_param('adgroupIDs',
                adgroupIDs, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V13::AdGroupService::GetAdGroupList.new(adgroupIDs)
            return @driver.getAdGroupList(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getAdGroupList Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getAdGroupStats}[http://code.google.com/apis/adwords/docs/developer/AdGroupService.html#getAdGroupStats] method of the AdGroup service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/AdGroupService.html#getAdGroupStats].
        #
        # Args:
        # - campaignId: SOAP::SOAPInt
        # - adGroupIds: SOAP::SOAPArray of SOAP::SOAPLong
        # - startDay: SOAP::SOAPDate
        # - endDay: SOAP::SOAPDate
        #
        # Returns:
        # - getAdGroupStatsReturn: SOAP::SOAPArray of AdWords::V13::AdGroupService::StatsRecord
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getAdGroupStats(campaignId, adGroupIds, startDay, endDay)
          begin
            AdWords::Service.validate_param('campaignId',
                campaignId, SOAP::SOAPInt)
            AdWords::Service.validate_param('adGroupIds',
                adGroupIds, SOAP::SOAPArray)
            AdWords::Service.validate_param('startDay',
                startDay, SOAP::SOAPDate)
            AdWords::Service.validate_param('endDay',
                endDay, SOAP::SOAPDate)
            # Construct request object and make API call
            obj = AdWords::V13::AdGroupService::GetAdGroupStats.new(campaignId, adGroupIds, startDay, endDay)
            return @driver.getAdGroupStats(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getAdGroupStats Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getAllAdGroups}[http://code.google.com/apis/adwords/docs/developer/AdGroupService.html#getAllAdGroups] method of the AdGroup service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/AdGroupService.html#getAllAdGroups].
        #
        # Args:
        # - campaignID: SOAP::SOAPInt
        #
        # Returns:
        # - getAllAdGroupsReturn: SOAP::SOAPArray of AdWords::V13::AdGroupService::AdGroup
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getAllAdGroups(campaignID)
          begin
            AdWords::Service.validate_param('campaignID',
                campaignID, SOAP::SOAPInt)
            # Construct request object and make API call
            obj = AdWords::V13::AdGroupService::GetAllAdGroups.new(campaignID)
            return @driver.getAllAdGroups(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getAllAdGroups Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {updateAdGroup}[http://code.google.com/apis/adwords/docs/developer/AdGroupService.html#updateAdGroup] method of the AdGroup service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/AdGroupService.html#updateAdGroup].
        #
        # Args:
        # - changedData: AdWords::V13::AdGroupService::AdGroup
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def updateAdGroup(changedData)
          begin
            AdWords::Service.validate_param('changedData',
                changedData, AdWords::V13::AdGroupService::AdGroup)
            # Construct request object and make API call
            obj = AdWords::V13::AdGroupService::UpdateAdGroup.new(changedData)
            return @driver.updateAdGroup(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "updateAdGroup Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {updateAdGroupList}[http://code.google.com/apis/adwords/docs/developer/AdGroupService.html#updateAdGroupList] method of the AdGroup service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/AdGroupService.html#updateAdGroupList].
        #
        # Args:
        # - changedData: SOAP::SOAPArray of AdWords::V13::AdGroupService::AdGroup
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def updateAdGroupList(changedData)
          begin
            AdWords::Service.validate_param('changedData',
                changedData, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V13::AdGroupService::UpdateAdGroupList.new(changedData)
            return @driver.updateAdGroupList(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "updateAdGroupList Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

      end
    end
  end
end
