# This file was automatically generated during the "rake generate" step of
# library setup.
require 'adwords4r/v13/TrafficEstimatorServiceDriver.rb'

module AdWords
  module V13
    module TrafficEstimatorService

      # Wrapper class for the v13 TrafficEstimator service.
      # This class is automatically generated.
      class TrafficEstimatorServiceWrapper

        # Holds the AdWords::API object to which the wrapper belongs.
        attr_reader :api

        # Holds a shortcut to the parent module.
        # Use this to avoid typing the full class name when creating classes
        # belonging to this service, e.g.
        #  service_object.module::ClassName
        # instead of
        #  AdWords::V13::TrafficEstimatorService::ClassName
        # This will make it easier to migrate your code between API versions.
        attr_reader :module

        public

        # Constructor for TrafficEstimatorServiceWrapper.
        #
        # Args:
        # - driver: SOAP::RPC::Driver object with the remote SOAP methods for
        #   this service
        # - api: the AdWords::API object to which the wrapper belongs
        #
        def initialize(driver, api)
          @driver = driver
          @api = api
          @module = AdWords::V13::TrafficEstimatorService
        end

        # Calls the {checkKeywordTraffic}[http://code.google.com/apis/adwords/docs/developer/TrafficEstimatorService.html#checkKeywordTraffic] method of the TrafficEstimator service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/TrafficEstimatorService.html#checkKeywordTraffic].
        #
        # Args:
        # - requests: SOAP::SOAPArray of AdWords::V13::TrafficEstimatorService::KeywordTrafficRequest
        #
        # Returns:
        # - checkKeywordTrafficReturn: SOAP::SOAPArray of AdWords::V13::TrafficEstimatorService::KeywordTraffic
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def checkKeywordTraffic(requests)
          begin
            AdWords::Service.validate_param('requests',
                requests, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V13::TrafficEstimatorService::CheckKeywordTraffic.new(requests)
            return @driver.checkKeywordTraffic(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "checkKeywordTraffic Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {estimateAdGroupList}[http://code.google.com/apis/adwords/docs/developer/TrafficEstimatorService.html#estimateAdGroupList] method of the TrafficEstimator service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/TrafficEstimatorService.html#estimateAdGroupList].
        #
        # Args:
        # - adGroupRequests: SOAP::SOAPArray of AdWords::V13::TrafficEstimatorService::AdGroupRequest
        #
        # Returns:
        # - estimateAdGroupListReturn: SOAP::SOAPArray of AdWords::V13::TrafficEstimatorService::AdGroupEstimate
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def estimateAdGroupList(adGroupRequests)
          begin
            AdWords::Service.validate_param('adGroupRequests',
                adGroupRequests, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V13::TrafficEstimatorService::EstimateAdGroupList.new(adGroupRequests)
            return @driver.estimateAdGroupList(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "estimateAdGroupList Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {estimateCampaignList}[http://code.google.com/apis/adwords/docs/developer/TrafficEstimatorService.html#estimateCampaignList] method of the TrafficEstimator service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/TrafficEstimatorService.html#estimateCampaignList].
        #
        # Args:
        # - campaignRequests: SOAP::SOAPArray of AdWords::V13::TrafficEstimatorService::CampaignRequest
        #
        # Returns:
        # - estimateCampaignListReturn: SOAP::SOAPArray of AdWords::V13::TrafficEstimatorService::CampaignEstimate
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def estimateCampaignList(campaignRequests)
          begin
            AdWords::Service.validate_param('campaignRequests',
                campaignRequests, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V13::TrafficEstimatorService::EstimateCampaignList.new(campaignRequests)
            return @driver.estimateCampaignList(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "estimateCampaignList Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {estimateKeywordList}[http://code.google.com/apis/adwords/docs/developer/TrafficEstimatorService.html#estimateKeywordList] method of the TrafficEstimator service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/TrafficEstimatorService.html#estimateKeywordList].
        #
        # Args:
        # - keywordRequests: SOAP::SOAPArray of AdWords::V13::TrafficEstimatorService::KeywordRequest
        #
        # Returns:
        # - estimateKeywordListReturn: SOAP::SOAPArray of AdWords::V13::TrafficEstimatorService::KeywordEstimate
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def estimateKeywordList(keywordRequests)
          begin
            AdWords::Service.validate_param('keywordRequests',
                keywordRequests, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V13::TrafficEstimatorService::EstimateKeywordList.new(keywordRequests)
            return @driver.estimateKeywordList(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "estimateKeywordList Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

      end
    end
  end
end
