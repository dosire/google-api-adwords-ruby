# This file was automatically generated during the "rake generate" step of
# library setup.
require 'adwords4r/v13/KeywordToolServiceDriver.rb'

module AdWords
  module V13
    module KeywordToolService

      # Wrapper class for the v13 KeywordTool service.
      # This class is automatically generated.
      class KeywordToolServiceWrapper

        # Holds the AdWords::API object to which the wrapper belongs.
        attr_reader :api

        # Holds a shortcut to the parent module.
        # Use this to avoid typing the full class name when creating classes
        # belonging to this service, e.g.
        #  service_object.module::ClassName
        # instead of
        #  AdWords::V13::KeywordToolService::ClassName
        # This will make it easier to migrate your code between API versions.
        attr_reader :module

        public

        # Constructor for KeywordToolServiceWrapper.
        #
        # Args:
        # - driver: SOAP::RPC::Driver object with the remote SOAP methods for
        #   this service
        # - api: the AdWords::API object to which the wrapper belongs
        #
        def initialize(driver, api)
          @driver = driver
          @api = api
          @module = AdWords::V13::KeywordToolService
        end

        # Calls the {getKeywordVariations}[http://code.google.com/apis/adwords/docs/developer/KeywordToolService.html#getKeywordVariations] method of the KeywordTool service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/KeywordToolService.html#getKeywordVariations].
        #
        # Args:
        # - seedKeywords: SOAP::SOAPArray of AdWords::V13::KeywordToolService::SeedKeyword
        # - useSynonyms: SOAP::SOAPBoolean
        # - languages: SOAP::SOAPArray of SOAP::SOAPString
        # - countries: SOAP::SOAPArray of SOAP::SOAPString
        #
        # Returns:
        # - getKeywordVariationsReturn: AdWords::V13::KeywordToolService::KeywordVariations
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getKeywordVariations(seedKeywords, useSynonyms, languages, countries)
          begin
            AdWords::Service.validate_param('seedKeywords',
                seedKeywords, SOAP::SOAPArray)
            AdWords::Service.validate_param('useSynonyms',
                useSynonyms, SOAP::SOAPBoolean)
            AdWords::Service.validate_param('languages',
                languages, SOAP::SOAPArray)
            AdWords::Service.validate_param('countries',
                countries, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V13::KeywordToolService::GetKeywordVariations.new(seedKeywords, useSynonyms, languages, countries)
            return @driver.getKeywordVariations(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getKeywordVariations Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getKeywordsFromSite}[http://code.google.com/apis/adwords/docs/developer/KeywordToolService.html#getKeywordsFromSite] method of the KeywordTool service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/KeywordToolService.html#getKeywordsFromSite].
        #
        # Args:
        # - url: SOAP::SOAPString
        # - includeLinkedPages: SOAP::SOAPBoolean
        # - languages: SOAP::SOAPArray of SOAP::SOAPString
        # - countries: SOAP::SOAPArray of SOAP::SOAPString
        #
        # Returns:
        # - getKeywordsFromSiteReturn: AdWords::V13::KeywordToolService::SiteKeywordGroups
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getKeywordsFromSite(url, includeLinkedPages, languages, countries)
          begin
            AdWords::Service.validate_param('url',
                url, SOAP::SOAPString)
            AdWords::Service.validate_param('includeLinkedPages',
                includeLinkedPages, SOAP::SOAPBoolean)
            AdWords::Service.validate_param('languages',
                languages, SOAP::SOAPArray)
            AdWords::Service.validate_param('countries',
                countries, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V13::KeywordToolService::GetKeywordsFromSite.new(url, includeLinkedPages, languages, countries)
            return @driver.getKeywordsFromSite(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getKeywordsFromSite Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

      end
    end
  end
end
