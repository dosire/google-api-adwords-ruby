# This file was automatically generated during the "rake generate" step of
# library setup.
require 'adwords4r/v201003/MediaServiceDriver.rb'

module AdWords
  module V201003
    module MediaService

      # Wrapper class for the v201003 Media service.
      # This class is automatically generated.
      class MediaServiceWrapper

        # Holds the AdWords::API object to which the wrapper belongs.
        attr_reader :api

        # Holds a shortcut to the parent module.
        # Use this to avoid typing the full class name when creating classes
        # belonging to this service, e.g.
        #  service_object.module::ClassName
        # instead of
        #  AdWords::V201003::MediaService::ClassName
        # This will make it easier to migrate your code between API versions.
        attr_reader :module

        public

        # Constructor for MediaServiceWrapper.
        #
        # Args:
        # - driver: SOAP::RPC::Driver object with the remote SOAP methods for
        #   this service
        # - api: the AdWords::API object to which the wrapper belongs
        #
        def initialize(driver, api)
          @driver = driver
          @api = api
          @module = AdWords::V201003::MediaService
        end

        # Calls the {get}[http://code.google.com/apis/adwords/v2009/docs/reference/MediaService.html#get] method of the Media service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/v2009/docs/reference/MediaService.html#get].
        #
        # Args:
        # - selector: AdWords::V201003::MediaService::MediaSelector
        #
        # Returns:
        # - rval: AdWords::V201003::MediaService::MediaPage
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def get(selector)
          begin
            AdWords::Service.validate_param('selector',
                selector, AdWords::V201003::MediaService::MediaSelector)
            # Construct request object and make API call
            obj = AdWords::V201003::MediaService::Get.new(selector)
            return @driver.get(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "get Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

        # Calls the {upload}[http://code.google.com/apis/adwords/v2009/docs/reference/MediaService.html#upload] method of the Media service.
        # Check {the online documentation for this method}[http://code.google.com/apis/adwords/v2009/docs/reference/MediaService.html#upload].
        #
        # Args:
        # - media: SOAP::SOAPArray of AdWords::V201003::MediaService::Media
        #
        # Returns:
        # - rval: SOAP::SOAPArray of AdWords::V201003::MediaService::Media
        #
        # Raises:
        # Error::ApiError (or a subclass thereof) if a SOAP fault occurs.
        #
        def upload(media)
          begin
            AdWords::Service.validate_param('media',
                media, SOAP::SOAPArray)
            # Construct request object and make API call
            obj = AdWords::V201003::MediaService::Upload.new(media)
            return @driver.upload(obj)
          rescue SOAP::FaultError => fault
            raise(AdWords::Error::create_specific_api_error(fault),
                "upload Call Failed: " + fault.faultstring.to_s, caller)
          end
        end

      end
    end
  end
end
