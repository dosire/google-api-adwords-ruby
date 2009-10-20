# This file was automatically generated during the "rake generate" step of
# library setup.
require 'adwords4r/v13/SiteSuggestionServiceDriver.rb'

module AdWords
  module V13
    module SiteSuggestionService

      # Wrapper class for the v13 SiteSuggestion service.
      # This class is automatically generated.
      class SiteSuggestionServiceWrapper

        # Holds the AdWords::API object to which the wrapper belongs.
        attr_reader :api

        # Holds a shortcut to the parent module.
        # Use this to avoid typing the full class name when creating classes
        # belonging to this service, e.g.
        #  service_object.module::ClassName
        # instead of
        #  AdWords::V13::SiteSuggestionService::ClassName
        # This will make it easier to migrate your code between API versions.
        attr_reader :module

        public

        # Constructor for SiteSuggestionServiceWrapper.
        #
        # Args:
        # - driver: SOAP::RPC::Driver object with the remote SOAP methods for
        #   this service
        # - api: the AdWords::API object to which the wrapper belongs
        #
        def initialize(driver, api)
          @driver = driver
          @api = api
          @module = AdWords::V13::SiteSuggestionService
        end

        # Calls the {getSitesByCategoryName}[http://code.google.com/apis/adwords/docs/developer/SiteSuggestionService.html#getSitesByCategoryName] method of the SiteSuggestion service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/SiteSuggestionService.html#getSitesByCategoryName].
        #
        # Args:
        # - categoryName: SOAP::SOAPString
        # - targeting: AdWords::V13::SiteSuggestionService::LanguageGeoTargeting
        #
        # Returns:
        # - getSitesByCategoryNameReturn: SOAP::SOAPArray of AdWords::V13::SiteSuggestionService::SiteSuggestion
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getSitesByCategoryName(categoryName, targeting)
          begin
            AdWords::Service.validate_param('categoryName',
                categoryName, SOAP::SOAPString)
            AdWords::Service.validate_param('targeting',
                targeting, AdWords::V13::SiteSuggestionService::LanguageGeoTargeting)
            # Construct request object and make API call
            obj = AdWords::V13::SiteSuggestionService::GetSitesByCategoryName.new(categoryName, targeting)
            return @driver.getSitesByCategoryName(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getSitesByCategoryName Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getSitesByDemographics}[http://code.google.com/apis/adwords/docs/developer/SiteSuggestionService.html#getSitesByDemographics] method of the SiteSuggestion service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/SiteSuggestionService.html#getSitesByDemographics].
        #
        # Args:
        # - demo: AdWords::V13::SiteSuggestionService::DemographicsTarget
        # - targeting: AdWords::V13::SiteSuggestionService::LanguageGeoTargeting
        #
        # Returns:
        # - getSitesByDemographicsReturn: SOAP::SOAPArray of AdWords::V13::SiteSuggestionService::SiteSuggestion
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getSitesByDemographics(demo, targeting)
          begin
            AdWords::Service.validate_param('demo',
                demo, AdWords::V13::SiteSuggestionService::DemographicsTarget)
            AdWords::Service.validate_param('targeting',
                targeting, AdWords::V13::SiteSuggestionService::LanguageGeoTargeting)
            # Construct request object and make API call
            obj = AdWords::V13::SiteSuggestionService::GetSitesByDemographics.new(demo, targeting)
            return @driver.getSitesByDemographics(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getSitesByDemographics Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getSitesByTopics}[http://code.google.com/apis/adwords/docs/developer/SiteSuggestionService.html#getSitesByTopics] method of the SiteSuggestion service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/SiteSuggestionService.html#getSitesByTopics].
        #
        # Args:
        # - topics: SOAP::SOAPArray of SOAP::SOAPString
        # - targeting: AdWords::V13::SiteSuggestionService::LanguageGeoTargeting
        #
        # Returns:
        # - getSitesByTopicsReturn: SOAP::SOAPArray of AdWords::V13::SiteSuggestionService::SiteSuggestion
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getSitesByTopics(topics, targeting)
          begin
            AdWords::Service.validate_param('topics',
                topics, SOAP::SOAPArray)
            AdWords::Service.validate_param('targeting',
                targeting, AdWords::V13::SiteSuggestionService::LanguageGeoTargeting)
            # Construct request object and make API call
            obj = AdWords::V13::SiteSuggestionService::GetSitesByTopics.new(topics, targeting)
            return @driver.getSitesByTopics(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getSitesByTopics Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getSitesByUrls}[http://code.google.com/apis/adwords/docs/developer/SiteSuggestionService.html#getSitesByUrls] method of the SiteSuggestion service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/SiteSuggestionService.html#getSitesByUrls].
        #
        # Args:
        # - urls: SOAP::SOAPArray of SOAP::SOAPString
        # - targeting: AdWords::V13::SiteSuggestionService::LanguageGeoTargeting
        #
        # Returns:
        # - getSitesByUrlsReturn: SOAP::SOAPArray of AdWords::V13::SiteSuggestionService::SiteSuggestion
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getSitesByUrls(urls, targeting)
          begin
            AdWords::Service.validate_param('urls',
                urls, SOAP::SOAPArray)
            AdWords::Service.validate_param('targeting',
                targeting, AdWords::V13::SiteSuggestionService::LanguageGeoTargeting)
            # Construct request object and make API call
            obj = AdWords::V13::SiteSuggestionService::GetSitesByUrls.new(urls, targeting)
            return @driver.getSitesByUrls(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getSitesByUrls Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

      end
    end
  end
end
