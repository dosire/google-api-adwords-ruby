# This file was automatically generated during the "rake generate" step of
# library setup.
require 'adwords4r/v13/CampaignServiceDriver.rb'

module AdWords
  module V13
    module CampaignService

      # Wrapper class for the v13 Campaign service.
      # This class is automatically generated.
      class CampaignServiceWrapper

        # Holds the AdWords::API object to which the wrapper belongs.
        attr_reader :api

        # Holds a shortcut to the parent module.
        # Use this to avoid typing the full class name when creating classes
        # belonging to this service, e.g.
        #  service_object.module::ClassName
        # instead of
        #  AdWords::V13::CampaignService::ClassName
        # This will make it easier to migrate your code between API versions.
        attr_reader :module

        public

        # Constructor for CampaignServiceWrapper.
        #
        # Args:
        # - driver: SOAP::RPC::Driver object with the remote SOAP methods for
        #   this service
        # - api: the AdWords::API object to which the wrapper belongs
        #
        def initialize(driver, api)
          @driver = driver
          @api = api
          @module = AdWords::V13::CampaignService
        end

        # Calls the {addCampaign}[http://code.google.com/apis/adwords/docs/developer/CampaignService.html#addCampaign] method of the Campaign service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/CampaignService.html#addCampaign].
        #
        # Args:
        # - campaign: AdWords::V13::CampaignService::Campaign
        #
        # Returns:
        # - addCampaignReturn: AdWords::V13::CampaignService::Campaign
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def addCampaign(campaign)
          begin
            AdWords::Service.validate_param('campaign',
                campaign, AdWords::V13::CampaignService::Campaign)
            # Construct request object and make API call
            obj = AdWords::V13::CampaignService::AddCampaign.new(campaign)
            return @driver.addCampaign(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "addCampaign Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {addCampaignList}[http://code.google.com/apis/adwords/docs/developer/CampaignService.html#addCampaignList] method of the Campaign service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/CampaignService.html#addCampaignList].
        #
        # Args:
        # - campaigns: SOAP::SOAPArray of AdWords::V13::CampaignService::Campaign
        #
        # Returns:
        # - addCampaignListReturn: SOAP::SOAPArray of AdWords::V13::CampaignService::Campaign
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def addCampaignList(campaigns)
          begin
            AdWords::Service.validate_param('campaigns',
                campaigns, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V13::CampaignService::AddCampaignList.new(campaigns)
            return @driver.addCampaignList(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "addCampaignList Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getActiveAdWordsCampaigns}[http://code.google.com/apis/adwords/docs/developer/CampaignService.html#getActiveAdWordsCampaigns] method of the Campaign service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/CampaignService.html#getActiveAdWordsCampaigns].
        #
        # Returns:
        # - getActiveAdWordsCampaignsReturn: SOAP::SOAPArray of AdWords::V13::CampaignService::Campaign
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getActiveAdWordsCampaigns()
          begin
            # Construct request object and make API call
            obj = AdWords::V13::CampaignService::GetActiveAdWordsCampaigns.new()
            return @driver.getActiveAdWordsCampaigns(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getActiveAdWordsCampaigns Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getAllAdWordsCampaigns}[http://code.google.com/apis/adwords/docs/developer/CampaignService.html#getAllAdWordsCampaigns] method of the Campaign service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/CampaignService.html#getAllAdWordsCampaigns].
        #
        # Args:
        # - dummy: SOAP::SOAPInt
        #
        # Returns:
        # - getAllAdWordsCampaignsReturn: SOAP::SOAPArray of AdWords::V13::CampaignService::Campaign
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getAllAdWordsCampaigns(dummy)
          begin
            AdWords::Service.validate_param('dummy',
                dummy, SOAP::SOAPInt)
            # Construct request object and make API call
            obj = AdWords::V13::CampaignService::GetAllAdWordsCampaigns.new(dummy)
            return @driver.getAllAdWordsCampaigns(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getAllAdWordsCampaigns Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getCampaign}[http://code.google.com/apis/adwords/docs/developer/CampaignService.html#getCampaign] method of the Campaign service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/CampaignService.html#getCampaign].
        #
        # Args:
        # - id: SOAP::SOAPInt
        #
        # Returns:
        # - getCampaignReturn: AdWords::V13::CampaignService::Campaign
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getCampaign(id)
          begin
            AdWords::Service.validate_param('id',
                id, SOAP::SOAPInt)
            # Construct request object and make API call
            obj = AdWords::V13::CampaignService::GetCampaign.new(id)
            return @driver.getCampaign(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getCampaign Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getCampaignList}[http://code.google.com/apis/adwords/docs/developer/CampaignService.html#getCampaignList] method of the Campaign service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/CampaignService.html#getCampaignList].
        #
        # Args:
        # - ids: SOAP::SOAPArray of SOAP::SOAPInt
        #
        # Returns:
        # - getCampaignListReturn: SOAP::SOAPArray of AdWords::V13::CampaignService::Campaign
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getCampaignList(ids)
          begin
            AdWords::Service.validate_param('ids',
                ids, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V13::CampaignService::GetCampaignList.new(ids)
            return @driver.getCampaignList(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getCampaignList Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getCampaignStats}[http://code.google.com/apis/adwords/docs/developer/CampaignService.html#getCampaignStats] method of the Campaign service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/CampaignService.html#getCampaignStats].
        #
        # Args:
        # - campaignIds: SOAP::SOAPArray of SOAP::SOAPInt
        # - startDay: SOAP::SOAPDate
        # - endDay: SOAP::SOAPDate
        #
        # Returns:
        # - getCampaignStatsReturn: SOAP::SOAPArray of AdWords::V13::CampaignService::StatsRecord
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getCampaignStats(campaignIds, startDay, endDay)
          begin
            AdWords::Service.validate_param('campaignIds',
                campaignIds, SOAP::SOAPArray)
            AdWords::Service.validate_param('startDay',
                startDay, SOAP::SOAPDate)
            AdWords::Service.validate_param('endDay',
                endDay, SOAP::SOAPDate)
            # Construct request object and make API call
            obj = AdWords::V13::CampaignService::GetCampaignStats.new(campaignIds, startDay, endDay)
            return @driver.getCampaignStats(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getCampaignStats Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getConversionOptimizerEligibility}[http://code.google.com/apis/adwords/docs/developer/CampaignService.html#getConversionOptimizerEligibility] method of the Campaign service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/CampaignService.html#getConversionOptimizerEligibility].
        #
        # Args:
        # - campaignIds: SOAP::SOAPArray of SOAP::SOAPInt
        #
        # Returns:
        # - getConversionOptimizerEligibilityReturn: SOAP::SOAPArray of AdWords::V13::CampaignService::ConversionOptimizerEligibility
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getConversionOptimizerEligibility(campaignIds)
          begin
            AdWords::Service.validate_param('campaignIds',
                campaignIds, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V13::CampaignService::GetConversionOptimizerEligibility.new(campaignIds)
            return @driver.getConversionOptimizerEligibility(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getConversionOptimizerEligibility Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getOptimizeAdServing}[http://code.google.com/apis/adwords/docs/developer/CampaignService.html#getOptimizeAdServing] method of the Campaign service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/CampaignService.html#getOptimizeAdServing].
        #
        # Args:
        # - campaignId: SOAP::SOAPInt
        #
        # Returns:
        # - getOptimizeAdServingReturn: SOAP::SOAPBoolean
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getOptimizeAdServing(campaignId)
          begin
            AdWords::Service.validate_param('campaignId',
                campaignId, SOAP::SOAPInt)
            # Construct request object and make API call
            obj = AdWords::V13::CampaignService::GetOptimizeAdServing.new(campaignId)
            return @driver.getOptimizeAdServing(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getOptimizeAdServing Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getRecommendedBudgetList}[http://code.google.com/apis/adwords/docs/developer/CampaignService.html#getRecommendedBudgetList] method of the Campaign service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/CampaignService.html#getRecommendedBudgetList].
        #
        # Args:
        # - campaignIds: SOAP::SOAPArray of SOAP::SOAPInt
        #
        # Returns:
        # - getRecommendedBudgetListReturn: SOAP::SOAPArray of AdWords::V13::CampaignService::CampaignBudget
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getRecommendedBudgetList(campaignIds)
          begin
            AdWords::Service.validate_param('campaignIds',
                campaignIds, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V13::CampaignService::GetRecommendedBudgetList.new(campaignIds)
            return @driver.getRecommendedBudgetList(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getRecommendedBudgetList Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getRecommendedBudgets}[http://code.google.com/apis/adwords/docs/developer/CampaignService.html#getRecommendedBudgets] method of the Campaign service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/CampaignService.html#getRecommendedBudgets].
        #
        # Args:
        # - campaignIds: SOAP::SOAPArray of SOAP::SOAPInt
        #
        # Returns:
        # - getRecommendedBudgetsReturn: SOAP::SOAPArray of AdWords::V13::CampaignService::RecommendedBudget
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getRecommendedBudgets(campaignIds)
          begin
            AdWords::Service.validate_param('campaignIds',
                campaignIds, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V13::CampaignService::GetRecommendedBudgets.new(campaignIds)
            return @driver.getRecommendedBudgets(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getRecommendedBudgets Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {setOptimizeAdServing}[http://code.google.com/apis/adwords/docs/developer/CampaignService.html#setOptimizeAdServing] method of the Campaign service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/CampaignService.html#setOptimizeAdServing].
        #
        # Args:
        # - campaignId: SOAP::SOAPInt
        # - enable: SOAP::SOAPBoolean
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def setOptimizeAdServing(campaignId, enable)
          begin
            AdWords::Service.validate_param('campaignId',
                campaignId, SOAP::SOAPInt)
            AdWords::Service.validate_param('enable',
                enable, SOAP::SOAPBoolean)
            # Construct request object and make API call
            obj = AdWords::V13::CampaignService::SetOptimizeAdServing.new(campaignId, enable)
            return @driver.setOptimizeAdServing(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "setOptimizeAdServing Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {updateCampaign}[http://code.google.com/apis/adwords/docs/developer/CampaignService.html#updateCampaign] method of the Campaign service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/CampaignService.html#updateCampaign].
        #
        # Args:
        # - campaign: AdWords::V13::CampaignService::Campaign
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def updateCampaign(campaign)
          begin
            AdWords::Service.validate_param('campaign',
                campaign, AdWords::V13::CampaignService::Campaign)
            # Construct request object and make API call
            obj = AdWords::V13::CampaignService::UpdateCampaign.new(campaign)
            return @driver.updateCampaign(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "updateCampaign Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {updateCampaignList}[http://code.google.com/apis/adwords/docs/developer/CampaignService.html#updateCampaignList] method of the Campaign service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/CampaignService.html#updateCampaignList].
        #
        # Args:
        # - campaigns: SOAP::SOAPArray of AdWords::V13::CampaignService::Campaign
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def updateCampaignList(campaigns)
          begin
            AdWords::Service.validate_param('campaigns',
                campaigns, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V13::CampaignService::UpdateCampaignList.new(campaigns)
            return @driver.updateCampaignList(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "updateCampaignList Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

      end
    end
  end
end
