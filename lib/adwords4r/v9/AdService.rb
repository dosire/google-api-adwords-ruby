module AdWords
require 'xsd/qname'

# {https://adwords.google.com/api/adwords/v9}addAds
class AddAds
  @@schema_type = "addAds"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["ads", "Ad[]"]]

  attr_accessor :ads

  def initialize(ads = [])
    @ads = ads
  end
end

# {https://adwords.google.com/api/adwords/v9}addAdsResponse
class AddAdsResponse
  @@schema_type = "addAdsResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["addAdsReturn", "Ad[]"]]

  attr_accessor :addAdsReturn

  def initialize(addAdsReturn = [])
    @addAdsReturn = addAdsReturn
  end
end

# {https://adwords.google.com/api/adwords/v9}checkAds
class CheckAds
  @@schema_type = "checkAds"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["ads", "Ad[]"], ["languageTarget", "LanguageTarget"], ["geoTarget", "GeoTarget"]]

  attr_accessor :ads
  attr_accessor :languageTarget
  attr_accessor :geoTarget

  def initialize(ads = [], languageTarget = nil, geoTarget = nil)
    @ads = ads
    @languageTarget = languageTarget
    @geoTarget = geoTarget
  end
end

# {https://adwords.google.com/api/adwords/v9}checkAdsResponse
class CheckAdsResponse
  @@schema_type = "checkAdsResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["checkAdsReturn", "ApiError[]"]]

  attr_accessor :checkAdsReturn

  def initialize(checkAdsReturn = [])
    @checkAdsReturn = checkAdsReturn
  end
end

# {https://adwords.google.com/api/adwords/v9}findBusinesses
class FindBusinesses
  @@schema_type = "findBusinesses"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["name", "SOAP::SOAPString"], ["address", "SOAP::SOAPString"], ["countryCode", "SOAP::SOAPString"]]

  attr_accessor :name
  attr_accessor :address
  attr_accessor :countryCode

  def initialize(name = nil, address = nil, countryCode = nil)
    @name = name
    @address = address
    @countryCode = countryCode
  end
end

# {https://adwords.google.com/api/adwords/v9}findBusinessesResponse
class FindBusinessesResponse
  @@schema_type = "findBusinessesResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["findBusinessesReturn", "Business[]"]]

  attr_accessor :findBusinessesReturn

  def initialize(findBusinessesReturn = [])
    @findBusinessesReturn = findBusinessesReturn
  end
end

# {https://adwords.google.com/api/adwords/v9}getActiveAds
class GetActiveAds
  @@schema_type = "getActiveAds"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["adGroupIds", "SOAP::SOAPInt[]"]]

  attr_accessor :adGroupIds

  def initialize(adGroupIds = [])
    @adGroupIds = adGroupIds
  end
end

# {https://adwords.google.com/api/adwords/v9}getActiveAdsResponse
class GetActiveAdsResponse
  @@schema_type = "getActiveAdsResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["getActiveAdsReturn", "Ad[]"]]

  attr_accessor :getActiveAdsReturn

  def initialize(getActiveAdsReturn = [])
    @getActiveAdsReturn = getActiveAdsReturn
  end
end

# {https://adwords.google.com/api/adwords/v9}getAd
class GetAd
  @@schema_type = "getAd"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["adGroupId", "SOAP::SOAPInt"], ["adId", "SOAP::SOAPLong"]]

  attr_accessor :adGroupId
  attr_accessor :adId

  def initialize(adGroupId = nil, adId = nil)
    @adGroupId = adGroupId
    @adId = adId
  end
end

# {https://adwords.google.com/api/adwords/v9}getAdResponse
class GetAdResponse
  @@schema_type = "getAdResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["getAdReturn", "Ad"]]

  attr_accessor :getAdReturn

  def initialize(getAdReturn = nil)
    @getAdReturn = getAdReturn
  end
end

# {https://adwords.google.com/api/adwords/v9}getAdStats
class GetAdStats
  @@schema_type = "getAdStats"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["adGroupId", "SOAP::SOAPInt"], ["adIds", "SOAP::SOAPLong[]"], ["startDay", "SOAP::SOAPDate"], ["endDay", "SOAP::SOAPDate"]]

  attr_accessor :adGroupId
  attr_accessor :adIds
  attr_accessor :startDay
  attr_accessor :endDay

  def initialize(adGroupId = nil, adIds = [], startDay = nil, endDay = nil)
    @adGroupId = adGroupId
    @adIds = adIds
    @startDay = startDay
    @endDay = endDay
  end
end

# {https://adwords.google.com/api/adwords/v9}getAdStatsResponse
class GetAdStatsResponse
  @@schema_type = "getAdStatsResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["getAdStatsReturn", "StatsRecord[]"]]

  attr_accessor :getAdStatsReturn

  def initialize(getAdStatsReturn = [])
    @getAdStatsReturn = getAdStatsReturn
  end
end

# {https://adwords.google.com/api/adwords/v9}getAllAds
class GetAllAds
  @@schema_type = "getAllAds"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["adGroupIds", "SOAP::SOAPInt[]"]]

  attr_accessor :adGroupIds

  def initialize(adGroupIds = [])
    @adGroupIds = adGroupIds
  end
end

# {https://adwords.google.com/api/adwords/v9}getAllAdsResponse
class GetAllAdsResponse
  @@schema_type = "getAllAdsResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["getAllAdsReturn", "Ad[]"]]

  attr_accessor :getAllAdsReturn

  def initialize(getAllAdsReturn = [])
    @getAllAdsReturn = getAllAdsReturn
  end
end

# {https://adwords.google.com/api/adwords/v9}getMyBusinesses
class GetMyBusinesses
  @@schema_type = "getMyBusinesses"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v9}getMyBusinessesResponse
class GetMyBusinessesResponse
  @@schema_type = "getMyBusinessesResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["getMyBusinessesReturn", "Business[]"]]

  attr_accessor :getMyBusinessesReturn

  def initialize(getMyBusinessesReturn = [])
    @getMyBusinessesReturn = getMyBusinessesReturn
  end
end

# {https://adwords.google.com/api/adwords/v9}getMyVideos
class GetMyVideos
  @@schema_type = "getMyVideos"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v9}getMyVideosResponse
class GetMyVideosResponse
  @@schema_type = "getMyVideosResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["getMyVideosReturn", "Video[]"]]

  attr_accessor :getMyVideosReturn

  def initialize(getMyVideosReturn = [])
    @getMyVideosReturn = getMyVideosReturn
  end
end

# {https://adwords.google.com/api/adwords/v9}updateAds
class UpdateAds
  @@schema_type = "updateAds"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["ads", "Ad[]"]]

  attr_accessor :ads

  def initialize(ads = [])
    @ads = ads
  end
end

# {https://adwords.google.com/api/adwords/v9}updateAdsResponse
class UpdateAdsResponse
  @@schema_type = "updateAdsResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v9}Ad
class Ad
  @@schema_type = "Ad"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_element = [["adGroupId", "SOAP::SOAPInt"], ["adType", "SOAP::SOAPString"], ["destinationUrl", "SOAP::SOAPString"], ["disapproved", "SOAP::SOAPBoolean"], ["displayUrl", "SOAP::SOAPString"], ["exemptionRequest", "SOAP::SOAPString"], ["id", "SOAP::SOAPLong"], ["status", "SOAP::SOAPString"]]

  attr_accessor :adGroupId
  attr_accessor :adType
  attr_accessor :destinationUrl
  attr_accessor :disapproved
  attr_accessor :displayUrl
  attr_accessor :exemptionRequest
  attr_accessor :id
  attr_accessor :status

  def initialize(adGroupId = nil, adType = nil, destinationUrl = nil, disapproved = nil, displayUrl = nil, exemptionRequest = nil, id = nil, status = nil)
    @adGroupId = adGroupId
    @adType = adType
    @destinationUrl = destinationUrl
    @disapproved = disapproved
    @displayUrl = displayUrl
    @exemptionRequest = exemptionRequest
    @id = id
    @status = status
  end
end

# {https://adwords.google.com/api/adwords/v9}ApiError
class ApiError
  @@schema_type = "ApiError"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_element = [["code", "SOAP::SOAPInt"], ["detail", "SOAP::SOAPString"], ["field", "SOAP::SOAPString"], ["index", "SOAP::SOAPInt"], ["isExemptable", "SOAP::SOAPBoolean"], ["textIndex", "SOAP::SOAPInt"], ["textLength", "SOAP::SOAPInt"], ["trigger", "SOAP::SOAPString"]]

  attr_accessor :code
  attr_accessor :detail
  attr_accessor :field
  attr_accessor :index
  attr_accessor :isExemptable
  attr_accessor :textIndex
  attr_accessor :textLength
  attr_accessor :trigger

  def initialize(code = nil, detail = nil, field = nil, index = nil, isExemptable = nil, textIndex = nil, textLength = nil, trigger = nil)
    @code = code
    @detail = detail
    @field = field
    @index = index
    @isExemptable = isExemptable
    @textIndex = textIndex
    @textLength = textLength
    @trigger = trigger
  end
end

# {https://adwords.google.com/api/adwords/v9}ApiException
class ApiException
  @@schema_type = "ApiException"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_element = [["code", "SOAP::SOAPInt"], ["errors", "ApiError[]"], ["internal", "SOAP::SOAPBoolean"], ["message", "SOAP::SOAPString"], ["trigger", "SOAP::SOAPString"]]

  attr_accessor :code
  attr_accessor :errors
  attr_accessor :internal
  attr_accessor :message
  attr_accessor :trigger

  def initialize(code = nil, errors = [], internal = nil, message = nil, trigger = nil)
    @code = code
    @errors = errors
    @internal = internal
    @message = message
    @trigger = trigger
  end
end

# {https://adwords.google.com/api/adwords/v9}Business
class Business
  @@schema_type = "Business"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_element = [["address", "SOAP::SOAPString"], ["city", "SOAP::SOAPString"], ["countryCode", "SOAP::SOAPString"], ["key", "SOAP::SOAPString"], ["latitude", "SOAP::SOAPString"], ["longitude", "SOAP::SOAPString"], ["name", "SOAP::SOAPString"], ["phoneNumber", "SOAP::SOAPString"], ["postalCode", "SOAP::SOAPString"], ["region", "SOAP::SOAPString"], ["timestamp", "SOAP::SOAPLong"]]

  attr_accessor :address
  attr_accessor :city
  attr_accessor :countryCode
  attr_accessor :key
  attr_accessor :latitude
  attr_accessor :longitude
  attr_accessor :name
  attr_accessor :phoneNumber
  attr_accessor :postalCode
  attr_accessor :region
  attr_accessor :timestamp

  def initialize(address = nil, city = nil, countryCode = nil, key = nil, latitude = nil, longitude = nil, name = nil, phoneNumber = nil, postalCode = nil, region = nil, timestamp = nil)
    @address = address
    @city = city
    @countryCode = countryCode
    @key = key
    @latitude = latitude
    @longitude = longitude
    @name = name
    @phoneNumber = phoneNumber
    @postalCode = postalCode
    @region = region
    @timestamp = timestamp
  end
end

# {https://adwords.google.com/api/adwords/v9}CommerceAd
class CommerceAd
  @@schema_type = "CommerceAd"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v9}GeoTarget
class GeoTarget
  @@schema_type = "GeoTarget"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_element = [["cities", "SOAP::SOAPString[]"], ["countries", "SOAP::SOAPString[]"], ["metros", "SOAP::SOAPString[]"], ["regions", "SOAP::SOAPString[]"]]

  attr_accessor :cities
  attr_accessor :countries
  attr_accessor :metros
  attr_accessor :regions

  def initialize(cities = [], countries = [], metros = [], regions = [])
    @cities = cities
    @countries = countries
    @metros = metros
    @regions = regions
  end
end

# {https://adwords.google.com/api/adwords/v9}Image
class Image
  @@schema_type = "Image"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_element = [["data", "SOAP::SOAPBase64"], ["height", "SOAP::SOAPInt"], ["imageUrl", "SOAP::SOAPString"], ["mimeType", "SOAP::SOAPString"], ["name", "SOAP::SOAPString"], ["thumbnailUrl", "SOAP::SOAPString"], ["type", "SOAP::SOAPString"], ["width", "SOAP::SOAPInt"]]

  attr_accessor :data
  attr_accessor :height
  attr_accessor :imageUrl
  attr_accessor :mimeType
  attr_accessor :name
  attr_accessor :thumbnailUrl
  attr_accessor :type
  attr_accessor :width

  def initialize(data = nil, height = nil, imageUrl = nil, mimeType = nil, name = nil, thumbnailUrl = nil, type = nil, width = nil)
    @data = data
    @height = height
    @imageUrl = imageUrl
    @mimeType = mimeType
    @name = name
    @thumbnailUrl = thumbnailUrl
    @type = type
    @width = width
  end
end

# {https://adwords.google.com/api/adwords/v9}ImageAd
class ImageAd
  @@schema_type = "ImageAd"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v9}LanguageTarget
class LanguageTarget < ::Array
  @@schema_type = "string"
  @@schema_ns = "http://www.w3.org/2001/XMLSchema"
  @@schema_element = [["languages", ["SOAP::SOAPString[]", XSD::QName.new("https://adwords.google.com/api/adwords/v9", "languages")]]]
end

# {https://adwords.google.com/api/adwords/v9}LocalBusinessAd
class LocalBusinessAd
  @@schema_type = "LocalBusinessAd"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v9}MobileAd
class MobileAd
  @@schema_type = "MobileAd"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v9}StatsRecord
class StatsRecord
  @@schema_type = "StatsRecord"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_element = [["averagePosition", "SOAP::SOAPDouble"], ["clicks", "SOAP::SOAPLong"], ["conversionRate", "SOAP::SOAPDouble"], ["conversions", "SOAP::SOAPLong"], ["cost", "SOAP::SOAPLong"], ["id", "SOAP::SOAPLong"], ["impressions", "SOAP::SOAPLong"]]

  attr_accessor :averagePosition
  attr_accessor :clicks
  attr_accessor :conversionRate
  attr_accessor :conversions
  attr_accessor :cost
  attr_accessor :id
  attr_accessor :impressions

  def initialize(averagePosition = nil, clicks = nil, conversionRate = nil, conversions = nil, cost = nil, id = nil, impressions = nil)
    @averagePosition = averagePosition
    @clicks = clicks
    @conversionRate = conversionRate
    @conversions = conversions
    @cost = cost
    @id = id
    @impressions = impressions
  end
end

# {https://adwords.google.com/api/adwords/v9}TextAd
class TextAd
  @@schema_type = "TextAd"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v9}Video
class Video
  @@schema_type = "Video"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_element = [["duration", "SOAP::SOAPLong"], ["filename", "SOAP::SOAPString"], ["preview", "SOAP::SOAPString"], ["title", "SOAP::SOAPString"], ["videoId", "SOAP::SOAPLong"]]

  attr_accessor :duration
  attr_accessor :filename
  attr_accessor :preview
  attr_accessor :title
  attr_accessor :videoId

  def initialize(duration = nil, filename = nil, preview = nil, title = nil, videoId = nil)
    @duration = duration
    @filename = filename
    @preview = preview
    @title = title
    @videoId = videoId
  end
end

# {https://adwords.google.com/api/adwords/v9}VideoAd
class VideoAd
  @@schema_type = "VideoAd"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v9}AdStatus
module AdStatus
  Disabled = "Disabled"
  Enabled = "Enabled"
  Paused = "Paused"
end

# {https://adwords.google.com/api/adwords/v9}AdType
module AdType
  CommerceAd = "CommerceAd"
  ImageAd = "ImageAd"
  LocalBusinessAd = "LocalBusinessAd"
  MobileAd = "MobileAd"
  TextAd = "TextAd"
  VideoAd = "VideoAd"
end

# {https://adwords.google.com/api/adwords/v9}ImageType
module ImageType
  DynamicImage = "dynamicImage"
  Flash = "flash"
  Image = "image"
end

# {https://adwords.google.com/api/adwords/v9}StockIcon
module StockIcon
  Standard_1 = "Standard_1"
  Standard_10 = "Standard_10"
  Standard_11 = "Standard_11"
  Standard_12 = "Standard_12"
  Standard_13 = "Standard_13"
  Standard_14 = "Standard_14"
  Standard_15 = "Standard_15"
  Standard_16 = "Standard_16"
  Standard_17 = "Standard_17"
  Standard_2 = "Standard_2"
  Standard_3 = "Standard_3"
  Standard_4 = "Standard_4"
  Standard_5 = "Standard_5"
  Standard_6 = "Standard_6"
  Standard_7 = "Standard_7"
  Standard_8 = "Standard_8"
  Standard_9 = "Standard_9"
end
end
