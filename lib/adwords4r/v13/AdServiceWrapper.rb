# This file was automatically generated during the "rake generate" step of the
# library setup.
require 'adwords4r/v13/AdServiceDriver.rb'

module AdWords
  module V13
    module AdService

      # Wrapper class for the v13 Ad service.
      # This class is automatically generated.
      class AdServiceWrapper

        # Holds the AdWords::API object to which the wrapper belongs
        attr_reader :api

        public

        # Constructor for AdServiceWrapper.
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

        # Calls the {addAds}[http://code.google.com/apis/adwords/docs/developer/AdService.html#addAds] method of the Ad service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/AdService.html#addAds].
        #
        # Args:
        # - ads: SOAP::SOAPArray of AdWords::V13::AdService::Ad
        #
        # Returns:
        # - addAdsReturn: SOAP::SOAPArray of AdWords::V13::AdService::Ad
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def addAds(ads)
          begin
            AdWords::Service.validate_param('ads',
                ads, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V13::AdService::AddAds.new(ads)
            return @driver.addAds(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "addAds Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {checkAds}[http://code.google.com/apis/adwords/docs/developer/AdService.html#checkAds] method of the Ad service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/AdService.html#checkAds].
        #
        # Args:
        # - ads: SOAP::SOAPArray of AdWords::V13::AdService::Ad
        # - languageTarget: AdWords::V13::AdService::LanguageTarget
        # - geoTarget: AdWords::V13::AdService::GeoTarget
        #
        # Returns:
        # - checkAdsReturn: SOAP::SOAPArray of AdWords::V13::AdService::ApiError
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def checkAds(ads, languageTarget, geoTarget)
          begin
            AdWords::Service.validate_param('ads',
                ads, SOAP::SOAPArray)
            AdWords::Service.validate_param('languageTarget',
                languageTarget, AdWords::V13::AdService::LanguageTarget)
            AdWords::Service.validate_param('geoTarget',
                geoTarget, AdWords::V13::AdService::GeoTarget)
            # Construct request object and make API call
            obj = AdWords::V13::AdService::CheckAds.new(ads, languageTarget, geoTarget)
            return @driver.checkAds(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "checkAds Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {findBusinesses}[http://code.google.com/apis/adwords/docs/developer/AdService.html#findBusinesses] method of the Ad service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/AdService.html#findBusinesses].
        #
        # Args:
        # - name: SOAP::SOAPString
        # - address: SOAP::SOAPString
        # - countryCode: SOAP::SOAPString
        #
        # Returns:
        # - findBusinessesReturn: SOAP::SOAPArray of AdWords::V13::AdService::Business
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def findBusinesses(name, address, countryCode)
          begin
            AdWords::Service.validate_param('name',
                name, SOAP::SOAPString)
            AdWords::Service.validate_param('address',
                address, SOAP::SOAPString)
            AdWords::Service.validate_param('countryCode',
                countryCode, SOAP::SOAPString)
            # Construct request object and make API call
            obj = AdWords::V13::AdService::FindBusinesses.new(name, address, countryCode)
            return @driver.findBusinesses(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "findBusinesses Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getActiveAds}[http://code.google.com/apis/adwords/docs/developer/AdService.html#getActiveAds] method of the Ad service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/AdService.html#getActiveAds].
        #
        # Args:
        # - adGroupIds: SOAP::SOAPArray of SOAP::SOAPLong
        #
        # Returns:
        # - getActiveAdsReturn: SOAP::SOAPArray of AdWords::V13::AdService::Ad
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getActiveAds(adGroupIds)
          begin
            AdWords::Service.validate_param('adGroupIds',
                adGroupIds, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V13::AdService::GetActiveAds.new(adGroupIds)
            return @driver.getActiveAds(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getActiveAds Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getAd}[http://code.google.com/apis/adwords/docs/developer/AdService.html#getAd] method of the Ad service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/AdService.html#getAd].
        #
        # Args:
        # - adGroupId: SOAP::SOAPLong
        # - adId: SOAP::SOAPLong
        #
        # Returns:
        # - getAdReturn: AdWords::V13::AdService::Ad
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getAd(adGroupId, adId)
          begin
            AdWords::Service.validate_param('adGroupId',
                adGroupId, SOAP::SOAPLong)
            AdWords::Service.validate_param('adId',
                adId, SOAP::SOAPLong)
            # Construct request object and make API call
            obj = AdWords::V13::AdService::GetAd.new(adGroupId, adId)
            return @driver.getAd(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getAd Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getAdStats}[http://code.google.com/apis/adwords/docs/developer/AdService.html#getAdStats] method of the Ad service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/AdService.html#getAdStats].
        #
        # Args:
        # - adGroupId: SOAP::SOAPLong
        # - adIds: SOAP::SOAPArray of SOAP::SOAPLong
        # - startDay: SOAP::SOAPDate
        # - endDay: SOAP::SOAPDate
        #
        # Returns:
        # - getAdStatsReturn: SOAP::SOAPArray of AdWords::V13::AdService::StatsRecord
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getAdStats(adGroupId, adIds, startDay, endDay)
          begin
            AdWords::Service.validate_param('adGroupId',
                adGroupId, SOAP::SOAPLong)
            AdWords::Service.validate_param('adIds',
                adIds, SOAP::SOAPArray)
            AdWords::Service.validate_param('startDay',
                startDay, SOAP::SOAPDate)
            AdWords::Service.validate_param('endDay',
                endDay, SOAP::SOAPDate)
            # Construct request object and make API call
            obj = AdWords::V13::AdService::GetAdStats.new(adGroupId, adIds, startDay, endDay)
            return @driver.getAdStats(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getAdStats Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getAllAds}[http://code.google.com/apis/adwords/docs/developer/AdService.html#getAllAds] method of the Ad service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/AdService.html#getAllAds].
        #
        # Args:
        # - adGroupIds: SOAP::SOAPArray of SOAP::SOAPLong
        #
        # Returns:
        # - getAllAdsReturn: SOAP::SOAPArray of AdWords::V13::AdService::Ad
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getAllAds(adGroupIds)
          begin
            AdWords::Service.validate_param('adGroupIds',
                adGroupIds, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V13::AdService::GetAllAds.new(adGroupIds)
            return @driver.getAllAds(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getAllAds Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getMyBusinesses}[http://code.google.com/apis/adwords/docs/developer/AdService.html#getMyBusinesses] method of the Ad service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/AdService.html#getMyBusinesses].
        #
        # Returns:
        # - getMyBusinessesReturn: SOAP::SOAPArray of AdWords::V13::AdService::Business
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getMyBusinesses()
          begin
            # Construct request object and make API call
            obj = AdWords::V13::AdService::GetMyBusinesses.new()
            return @driver.getMyBusinesses(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getMyBusinesses Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {getMyVideos}[http://code.google.com/apis/adwords/docs/developer/AdService.html#getMyVideos] method of the Ad service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/AdService.html#getMyVideos].
        #
        # Returns:
        # - getMyVideosReturn: SOAP::SOAPArray of AdWords::V13::AdService::Video
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def getMyVideos()
          begin
            # Construct request object and make API call
            obj = AdWords::V13::AdService::GetMyVideos.new()
            return @driver.getMyVideos(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "getMyVideos Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {updateAds}[http://code.google.com/apis/adwords/docs/developer/AdService.html#updateAds] method of the Ad service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/docs/developer/AdService.html#updateAds].
        #
        # Args:
        # - ads: SOAP::SOAPArray of AdWords::V13::AdService::Ad
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def updateAds(ads)
          begin
            AdWords::Service.validate_param('ads',
                ads, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V13::AdService::UpdateAds.new(ads)
            return @driver.updateAds(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "updateAds Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

      end
    end
  end
end
