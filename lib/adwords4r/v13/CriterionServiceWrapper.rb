# This file was automatically generated during the "rake generate" step of the
# library setup.
require 'adwords4r/v13/CriterionServiceDriver.rb'

module AdWords
  module V13
    module CriterionService

      # Wrapper class for the v13 Criterion service.
      # This class is automatically generated.
      class CriterionServiceWrapper

        # Holds the AdWords::API object to which the wrapper belongs
        attr_reader :api

        public

        # Constructor for CriterionServiceWrapper.
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

        # Calls the {addCriteria}[http://code.google.com/apis/adwords/docs/developer/CriterionService.html#addCriteria] method of the Criterion service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/CriterionService.html#addCriteria].
        #
        # Args:
        # - criteria: SOAP::SOAPArray of AdWords::V13::CriterionService::Criterion
        #
        # Returns:
        # - addCriteriaReturn: SOAP::SOAPArray of AdWords::V13::CriterionService::Criterion
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def addCriteria(criteria)
          begin
            AdWords::Service.validate_param('criteria',
                criteria, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V13::CriterionService::AddCriteria.new(criteria)
            return @driver.addCriteria(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "addCriteria Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {checkCriteria}[http://code.google.com/apis/adwords/docs/developer/CriterionService.html#checkCriteria] method of the Criterion service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/CriterionService.html#checkCriteria].
        #
        # Args:
        # - criteria: SOAP::SOAPArray of AdWords::V13::CriterionService::Criterion
        # - languageTarget: AdWords::V13::CriterionService::LanguageTarget
        # - geoTarget: AdWords::V13::CriterionService::GeoTarget
        #
        # Returns:
        # - checkCriteriaReturn: SOAP::SOAPArray of AdWords::V13::CriterionService::ApiError
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def checkCriteria(criteria, languageTarget, geoTarget)
          begin
            AdWords::Service.validate_param('criteria',
                criteria, SOAP::SOAPArray)
            AdWords::Service.validate_param('languageTarget',
                languageTarget, AdWords::V13::CriterionService::LanguageTarget)
            AdWords::Service.validate_param('geoTarget',
                geoTarget, AdWords::V13::CriterionService::GeoTarget)
            # Construct request object and make API call
            obj = AdWords::V13::CriterionService::CheckCriteria.new(criteria, languageTarget, geoTarget)
            return @driver.checkCriteria(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "checkCriteria Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getAllCriteria}[http://code.google.com/apis/adwords/docs/developer/CriterionService.html#getAllCriteria] method of the Criterion service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/CriterionService.html#getAllCriteria].
        #
        # Args:
        # - adGroupId: SOAP::SOAPLong
        #
        # Returns:
        # - getAllCriteriaReturn: SOAP::SOAPArray of AdWords::V13::CriterionService::Criterion
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getAllCriteria(adGroupId)
          begin
            AdWords::Service.validate_param('adGroupId',
                adGroupId, SOAP::SOAPLong)
            # Construct request object and make API call
            obj = AdWords::V13::CriterionService::GetAllCriteria.new(adGroupId)
            return @driver.getAllCriteria(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getAllCriteria Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getCampaignNegativeCriteria}[http://code.google.com/apis/adwords/docs/developer/CriterionService.html#getCampaignNegativeCriteria] method of the Criterion service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/CriterionService.html#getCampaignNegativeCriteria].
        #
        # Args:
        # - campaignId: SOAP::SOAPInt
        #
        # Returns:
        # - getCampaignNegativeCriteriaReturn: SOAP::SOAPArray of AdWords::V13::CriterionService::Criterion
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getCampaignNegativeCriteria(campaignId)
          begin
            AdWords::Service.validate_param('campaignId',
                campaignId, SOAP::SOAPInt)
            # Construct request object and make API call
            obj = AdWords::V13::CriterionService::GetCampaignNegativeCriteria.new(campaignId)
            return @driver.getCampaignNegativeCriteria(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getCampaignNegativeCriteria Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getCriteria}[http://code.google.com/apis/adwords/docs/developer/CriterionService.html#getCriteria] method of the Criterion service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/CriterionService.html#getCriteria].
        #
        # Args:
        # - adGroupId: SOAP::SOAPLong
        # - criterionIds: SOAP::SOAPArray of SOAP::SOAPLong
        #
        # Returns:
        # - getCriteriaReturn: SOAP::SOAPArray of AdWords::V13::CriterionService::Criterion
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getCriteria(adGroupId, criterionIds)
          begin
            AdWords::Service.validate_param('adGroupId',
                adGroupId, SOAP::SOAPLong)
            AdWords::Service.validate_param('criterionIds',
                criterionIds, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V13::CriterionService::GetCriteria.new(adGroupId, criterionIds)
            return @driver.getCriteria(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getCriteria Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getCriterionStats}[http://code.google.com/apis/adwords/docs/developer/CriterionService.html#getCriterionStats] method of the Criterion service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/CriterionService.html#getCriterionStats].
        #
        # Args:
        # - adGroupId: SOAP::SOAPLong
        # - criterionIds: SOAP::SOAPArray of SOAP::SOAPLong
        # - startDay: SOAP::SOAPDate
        # - endDay: SOAP::SOAPDate
        #
        # Returns:
        # - getCriterionStatsReturn: SOAP::SOAPArray of AdWords::V13::CriterionService::StatsRecord
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getCriterionStats(adGroupId, criterionIds, startDay, endDay)
          begin
            AdWords::Service.validate_param('adGroupId',
                adGroupId, SOAP::SOAPLong)
            AdWords::Service.validate_param('criterionIds',
                criterionIds, SOAP::SOAPArray)
            AdWords::Service.validate_param('startDay',
                startDay, SOAP::SOAPDate)
            AdWords::Service.validate_param('endDay',
                endDay, SOAP::SOAPDate)
            # Construct request object and make API call
            obj = AdWords::V13::CriterionService::GetCriterionStats.new(adGroupId, criterionIds, startDay, endDay)
            return @driver.getCriterionStats(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getCriterionStats Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {removeCriteria}[http://code.google.com/apis/adwords/docs/developer/CriterionService.html#removeCriteria] method of the Criterion service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/CriterionService.html#removeCriteria].
        #
        # Args:
        # - adGroupId: SOAP::SOAPLong
        # - criterionIds: SOAP::SOAPArray of SOAP::SOAPLong
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def removeCriteria(adGroupId, criterionIds)
          begin
            AdWords::Service.validate_param('adGroupId',
                adGroupId, SOAP::SOAPLong)
            AdWords::Service.validate_param('criterionIds',
                criterionIds, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V13::CriterionService::RemoveCriteria.new(adGroupId, criterionIds)
            return @driver.removeCriteria(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "removeCriteria Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {setCampaignNegativeCriteria}[http://code.google.com/apis/adwords/docs/developer/CriterionService.html#setCampaignNegativeCriteria] method of the Criterion service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/CriterionService.html#setCampaignNegativeCriteria].
        #
        # Args:
        # - campaignId: SOAP::SOAPInt
        # - criteria: SOAP::SOAPArray of AdWords::V13::CriterionService::Criterion
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def setCampaignNegativeCriteria(campaignId, criteria)
          begin
            AdWords::Service.validate_param('campaignId',
                campaignId, SOAP::SOAPInt)
            AdWords::Service.validate_param('criteria',
                criteria, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V13::CriterionService::SetCampaignNegativeCriteria.new(campaignId, criteria)
            return @driver.setCampaignNegativeCriteria(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "setCampaignNegativeCriteria Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {updateCriteria}[http://code.google.com/apis/adwords/docs/developer/CriterionService.html#updateCriteria] method of the Criterion service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/CriterionService.html#updateCriteria].
        #
        # Args:
        # - criteria: SOAP::SOAPArray of AdWords::V13::CriterionService::Criterion
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def updateCriteria(criteria)
          begin
            AdWords::Service.validate_param('criteria',
                criteria, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V13::CriterionService::UpdateCriteria.new(criteria)
            return @driver.updateCriteria(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "updateCriteria Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

      end
    end
  end
end
