require 'xsd/qname'

module AdWords; module AdService


# {https://adwords.google.com/api/adwords/v12}Ad
# abstract
#   adGroupId - SOAP::SOAPLong
#   adType - AdWords::AdService::AdType
#   destinationUrl - SOAP::SOAPString
#   disapproved - SOAP::SOAPBoolean
#   displayUrl - SOAP::SOAPString
#   exemptionRequest - SOAP::SOAPString
#   id - SOAP::SOAPLong
#   status - AdWords::AdService::AdStatus
class Ad
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

# {https://adwords.google.com/api/adwords/v12}CommerceAd
#   adGroupId - SOAP::SOAPLong
#   adType - AdWords::AdService::AdType
#   destinationUrl - SOAP::SOAPString
#   disapproved - SOAP::SOAPBoolean
#   displayUrl - SOAP::SOAPString
#   exemptionRequest - SOAP::SOAPString
#   id - SOAP::SOAPLong
#   status - AdWords::AdService::AdStatus
#   description1 - SOAP::SOAPString
#   description2 - SOAP::SOAPString
#   headline - SOAP::SOAPString
#   postPriceAnnotation - SOAP::SOAPString
#   prePriceAnnotation - SOAP::SOAPString
#   priceString - SOAP::SOAPString
#   productImage - AdWords::AdService::Image
class CommerceAd < Ad
  attr_accessor :adGroupId
  attr_accessor :adType
  attr_accessor :destinationUrl
  attr_accessor :disapproved
  attr_accessor :displayUrl
  attr_accessor :exemptionRequest
  attr_accessor :id
  attr_accessor :status
  attr_accessor :description1
  attr_accessor :description2
  attr_accessor :headline
  attr_accessor :postPriceAnnotation
  attr_accessor :prePriceAnnotation
  attr_accessor :priceString
  attr_accessor :productImage

  def initialize(adGroupId = nil, adType = nil, destinationUrl = nil, disapproved = nil, displayUrl = nil, exemptionRequest = nil, id = nil, status = nil, description1 = nil, description2 = nil, headline = nil, postPriceAnnotation = nil, prePriceAnnotation = nil, priceString = nil, productImage = nil)
    @adGroupId = adGroupId
    @adType = adType
    @destinationUrl = destinationUrl
    @disapproved = disapproved
    @displayUrl = displayUrl
    @exemptionRequest = exemptionRequest
    @id = id
    @status = status
    @description1 = description1
    @description2 = description2
    @headline = headline
    @postPriceAnnotation = postPriceAnnotation
    @prePriceAnnotation = prePriceAnnotation
    @priceString = priceString
    @productImage = productImage
  end
end

# {https://adwords.google.com/api/adwords/v12}ImageAd
#   adGroupId - SOAP::SOAPLong
#   adType - AdWords::AdService::AdType
#   destinationUrl - SOAP::SOAPString
#   disapproved - SOAP::SOAPBoolean
#   displayUrl - SOAP::SOAPString
#   exemptionRequest - SOAP::SOAPString
#   id - SOAP::SOAPLong
#   status - AdWords::AdService::AdStatus
#   image - AdWords::AdService::Image
class ImageAd < Ad
  attr_accessor :adGroupId
  attr_accessor :adType
  attr_accessor :destinationUrl
  attr_accessor :disapproved
  attr_accessor :displayUrl
  attr_accessor :exemptionRequest
  attr_accessor :id
  attr_accessor :status
  attr_accessor :image

  def initialize(adGroupId = nil, adType = nil, destinationUrl = nil, disapproved = nil, displayUrl = nil, exemptionRequest = nil, id = nil, status = nil, image = nil)
    @adGroupId = adGroupId
    @adType = adType
    @destinationUrl = destinationUrl
    @disapproved = disapproved
    @displayUrl = displayUrl
    @exemptionRequest = exemptionRequest
    @id = id
    @status = status
    @image = image
  end
end

# {https://adwords.google.com/api/adwords/v12}LocalBusinessAd
#   adGroupId - SOAP::SOAPLong
#   adType - AdWords::AdService::AdType
#   destinationUrl - SOAP::SOAPString
#   disapproved - SOAP::SOAPBoolean
#   displayUrl - SOAP::SOAPString
#   exemptionRequest - SOAP::SOAPString
#   id - SOAP::SOAPLong
#   status - AdWords::AdService::AdStatus
#   address - SOAP::SOAPString
#   businessImage - AdWords::AdService::Image
#   businessKey - SOAP::SOAPString
#   businessName - SOAP::SOAPString
#   city - SOAP::SOAPString
#   countryCode - SOAP::SOAPString
#   customIcon - AdWords::AdService::Image
#   customIconId - SOAP::SOAPLong
#   description1 - SOAP::SOAPString
#   description2 - SOAP::SOAPString
#   fullBusinessName - SOAP::SOAPString
#   latitude - SOAP::SOAPInt
#   longitude - SOAP::SOAPInt
#   phoneNumber - SOAP::SOAPString
#   postalCode - SOAP::SOAPString
#   region - SOAP::SOAPString
#   stockIcon - AdWords::AdService::StockIcon
#   targetRadiusInKm - SOAP::SOAPDouble
class LocalBusinessAd < Ad
  attr_accessor :adGroupId
  attr_accessor :adType
  attr_accessor :destinationUrl
  attr_accessor :disapproved
  attr_accessor :displayUrl
  attr_accessor :exemptionRequest
  attr_accessor :id
  attr_accessor :status
  attr_accessor :address
  attr_accessor :businessImage
  attr_accessor :businessKey
  attr_accessor :businessName
  attr_accessor :city
  attr_accessor :countryCode
  attr_accessor :customIcon
  attr_accessor :customIconId
  attr_accessor :description1
  attr_accessor :description2
  attr_accessor :fullBusinessName
  attr_accessor :latitude
  attr_accessor :longitude
  attr_accessor :phoneNumber
  attr_accessor :postalCode
  attr_accessor :region
  attr_accessor :stockIcon
  attr_accessor :targetRadiusInKm

  def initialize(adGroupId = nil, adType = nil, destinationUrl = nil, disapproved = nil, displayUrl = nil, exemptionRequest = nil, id = nil, status = nil, address = nil, businessImage = nil, businessKey = nil, businessName = nil, city = nil, countryCode = nil, customIcon = nil, customIconId = nil, description1 = nil, description2 = nil, fullBusinessName = nil, latitude = nil, longitude = nil, phoneNumber = nil, postalCode = nil, region = nil, stockIcon = nil, targetRadiusInKm = nil)
    @adGroupId = adGroupId
    @adType = adType
    @destinationUrl = destinationUrl
    @disapproved = disapproved
    @displayUrl = displayUrl
    @exemptionRequest = exemptionRequest
    @id = id
    @status = status
    @address = address
    @businessImage = businessImage
    @businessKey = businessKey
    @businessName = businessName
    @city = city
    @countryCode = countryCode
    @customIcon = customIcon
    @customIconId = customIconId
    @description1 = description1
    @description2 = description2
    @fullBusinessName = fullBusinessName
    @latitude = latitude
    @longitude = longitude
    @phoneNumber = phoneNumber
    @postalCode = postalCode
    @region = region
    @stockIcon = stockIcon
    @targetRadiusInKm = targetRadiusInKm
  end
end

# {https://adwords.google.com/api/adwords/v12}MobileAd
#   adGroupId - SOAP::SOAPLong
#   adType - AdWords::AdService::AdType
#   destinationUrl - SOAP::SOAPString
#   disapproved - SOAP::SOAPBoolean
#   displayUrl - SOAP::SOAPString
#   exemptionRequest - SOAP::SOAPString
#   id - SOAP::SOAPLong
#   status - AdWords::AdService::AdStatus
#   businessName - SOAP::SOAPString
#   countryCode - SOAP::SOAPString
#   description - SOAP::SOAPString
#   headline - SOAP::SOAPString
#   markupLanguages - SOAP::SOAPString
#   mobileCarriers - SOAP::SOAPString
#   phoneNumber - SOAP::SOAPString
class MobileAd < Ad
  attr_accessor :adGroupId
  attr_accessor :adType
  attr_accessor :destinationUrl
  attr_accessor :disapproved
  attr_accessor :displayUrl
  attr_accessor :exemptionRequest
  attr_accessor :id
  attr_accessor :status
  attr_accessor :businessName
  attr_accessor :countryCode
  attr_accessor :description
  attr_accessor :headline
  attr_accessor :markupLanguages
  attr_accessor :mobileCarriers
  attr_accessor :phoneNumber

  def initialize(adGroupId = nil, adType = nil, destinationUrl = nil, disapproved = nil, displayUrl = nil, exemptionRequest = nil, id = nil, status = nil, businessName = nil, countryCode = nil, description = nil, headline = nil, markupLanguages = [], mobileCarriers = [], phoneNumber = nil)
    @adGroupId = adGroupId
    @adType = adType
    @destinationUrl = destinationUrl
    @disapproved = disapproved
    @displayUrl = displayUrl
    @exemptionRequest = exemptionRequest
    @id = id
    @status = status
    @businessName = businessName
    @countryCode = countryCode
    @description = description
    @headline = headline
    @markupLanguages = markupLanguages
    @mobileCarriers = mobileCarriers
    @phoneNumber = phoneNumber
  end
end

# {https://adwords.google.com/api/adwords/v12}TextAd
#   adGroupId - SOAP::SOAPLong
#   adType - AdWords::AdService::AdType
#   destinationUrl - SOAP::SOAPString
#   disapproved - SOAP::SOAPBoolean
#   displayUrl - SOAP::SOAPString
#   exemptionRequest - SOAP::SOAPString
#   id - SOAP::SOAPLong
#   status - AdWords::AdService::AdStatus
#   description1 - SOAP::SOAPString
#   description2 - SOAP::SOAPString
#   headline - SOAP::SOAPString
class TextAd < Ad
  attr_accessor :adGroupId
  attr_accessor :adType
  attr_accessor :destinationUrl
  attr_accessor :disapproved
  attr_accessor :displayUrl
  attr_accessor :exemptionRequest
  attr_accessor :id
  attr_accessor :status
  attr_accessor :description1
  attr_accessor :description2
  attr_accessor :headline

  def initialize(adGroupId = nil, adType = nil, destinationUrl = nil, disapproved = nil, displayUrl = nil, exemptionRequest = nil, id = nil, status = nil, description1 = nil, description2 = nil, headline = nil)
    @adGroupId = adGroupId
    @adType = adType
    @destinationUrl = destinationUrl
    @disapproved = disapproved
    @displayUrl = displayUrl
    @exemptionRequest = exemptionRequest
    @id = id
    @status = status
    @description1 = description1
    @description2 = description2
    @headline = headline
  end
end

# {https://adwords.google.com/api/adwords/v12}VideoAd
#   adGroupId - SOAP::SOAPLong
#   adType - AdWords::AdService::AdType
#   destinationUrl - SOAP::SOAPString
#   disapproved - SOAP::SOAPBoolean
#   displayUrl - SOAP::SOAPString
#   exemptionRequest - SOAP::SOAPString
#   id - SOAP::SOAPLong
#   status - AdWords::AdService::AdStatus
#   image - AdWords::AdService::Image
#   name - SOAP::SOAPString
#   video - AdWords::AdService::Video
class VideoAd < Ad
  attr_accessor :adGroupId
  attr_accessor :adType
  attr_accessor :destinationUrl
  attr_accessor :disapproved
  attr_accessor :displayUrl
  attr_accessor :exemptionRequest
  attr_accessor :id
  attr_accessor :status
  attr_accessor :image
  attr_accessor :name
  attr_accessor :video

  def initialize(adGroupId = nil, adType = nil, destinationUrl = nil, disapproved = nil, displayUrl = nil, exemptionRequest = nil, id = nil, status = nil, image = nil, name = nil, video = nil)
    @adGroupId = adGroupId
    @adType = adType
    @destinationUrl = destinationUrl
    @disapproved = disapproved
    @displayUrl = displayUrl
    @exemptionRequest = exemptionRequest
    @id = id
    @status = status
    @image = image
    @name = name
    @video = video
  end
end

# {https://adwords.google.com/api/adwords/v12}ApiError
#   code - SOAP::SOAPInt
#   detail - SOAP::SOAPString
#   field - SOAP::SOAPString
#   index - SOAP::SOAPInt
#   isExemptable - SOAP::SOAPBoolean
#   textIndex - SOAP::SOAPInt
#   textLength - SOAP::SOAPInt
#   trigger - SOAP::SOAPString
class ApiError
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

# {https://adwords.google.com/api/adwords/v12}ApiException
#   code - SOAP::SOAPInt
#   errors - AdWords::AdService::ApiError
#   internal - SOAP::SOAPBoolean
#   message - SOAP::SOAPString
#   trigger - SOAP::SOAPString
class ApiException
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

# {https://adwords.google.com/api/adwords/v12}Business
#   address - SOAP::SOAPString
#   city - SOAP::SOAPString
#   countryCode - SOAP::SOAPString
#   key - SOAP::SOAPString
#   latitude - SOAP::SOAPString
#   longitude - SOAP::SOAPString
#   name - SOAP::SOAPString
#   phoneNumber - SOAP::SOAPString
#   postalCode - SOAP::SOAPString
#   region - SOAP::SOAPString
#   timestamp - SOAP::SOAPLong
class Business
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

# {https://adwords.google.com/api/adwords/v12}Circle
#   latitudeMicroDegrees - SOAP::SOAPInt
#   longitudeMicroDegrees - SOAP::SOAPInt
#   radiusMeters - SOAP::SOAPInt
class Circle
  attr_accessor :latitudeMicroDegrees
  attr_accessor :longitudeMicroDegrees
  attr_accessor :radiusMeters

  def initialize(latitudeMicroDegrees = nil, longitudeMicroDegrees = nil, radiusMeters = nil)
    @latitudeMicroDegrees = latitudeMicroDegrees
    @longitudeMicroDegrees = longitudeMicroDegrees
    @radiusMeters = radiusMeters
  end
end

# {https://adwords.google.com/api/adwords/v12}CityTargets
class CityTargets < ::Array
end

# {https://adwords.google.com/api/adwords/v12}CountryTargets
class CountryTargets < ::Array
end

# {https://adwords.google.com/api/adwords/v12}GeoTarget
#   cityTargets - AdWords::AdService::CityTargets
#   countryTargets - AdWords::AdService::CountryTargets
#   metroTargets - AdWords::AdService::MetroTargets
#   proximityTargets - AdWords::AdService::ProximityTargets
#   regionTargets - AdWords::AdService::RegionTargets
#   targetAll - SOAP::SOAPBoolean
class GeoTarget
  attr_accessor :cityTargets
  attr_accessor :countryTargets
  attr_accessor :metroTargets
  attr_accessor :proximityTargets
  attr_accessor :regionTargets
  attr_accessor :targetAll

  def initialize(cityTargets = nil, countryTargets = nil, metroTargets = nil, proximityTargets = nil, regionTargets = nil, targetAll = nil)
    @cityTargets = cityTargets
    @countryTargets = countryTargets
    @metroTargets = metroTargets
    @proximityTargets = proximityTargets
    @regionTargets = regionTargets
    @targetAll = targetAll
  end
end

# {https://adwords.google.com/api/adwords/v12}Image
#   data - SOAP::SOAPBase64
#   height - SOAP::SOAPInt
#   imageUrl - SOAP::SOAPString
#   mimeType - SOAP::SOAPString
#   name - SOAP::SOAPString
#   shrunkenUrl - SOAP::SOAPString
#   thumbnailUrl - SOAP::SOAPString
#   type - AdWords::AdService::ImageType
#   width - SOAP::SOAPInt
class Image
  attr_accessor :data
  attr_accessor :height
  attr_accessor :imageUrl
  attr_accessor :mimeType
  attr_accessor :name
  attr_accessor :shrunkenUrl
  attr_accessor :thumbnailUrl
  attr_accessor :type
  attr_accessor :width

  def initialize(data = nil, height = nil, imageUrl = nil, mimeType = nil, name = nil, shrunkenUrl = nil, thumbnailUrl = nil, type = nil, width = nil)
    @data = data
    @height = height
    @imageUrl = imageUrl
    @mimeType = mimeType
    @name = name
    @shrunkenUrl = shrunkenUrl
    @thumbnailUrl = thumbnailUrl
    @type = type
    @width = width
  end
end

# {https://adwords.google.com/api/adwords/v12}LanguageTarget
class LanguageTarget < ::Array
end

# {https://adwords.google.com/api/adwords/v12}MetroTargets
class MetroTargets < ::Array
end

# {https://adwords.google.com/api/adwords/v12}ProximityTargets
class ProximityTargets < ::Array
end

# {https://adwords.google.com/api/adwords/v12}RegionTargets
class RegionTargets < ::Array
end

# {https://adwords.google.com/api/adwords/v12}StatsRecord
#   averagePosition - SOAP::SOAPDouble
#   clicks - SOAP::SOAPLong
#   conversionRate - SOAP::SOAPDouble
#   conversions - SOAP::SOAPLong
#   cost - SOAP::SOAPLong
#   id - SOAP::SOAPLong
#   impressions - SOAP::SOAPLong
class StatsRecord
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

# {https://adwords.google.com/api/adwords/v12}Video
#   duration - SOAP::SOAPLong
#   filename - SOAP::SOAPString
#   preview - SOAP::SOAPString
#   title - SOAP::SOAPString
#   videoId - SOAP::SOAPLong
class Video
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

# {https://adwords.google.com/api/adwords/v12}AdStatus
class AdStatus < ::String
  Disabled = AdStatus.new("Disabled")
  Enabled = AdStatus.new("Enabled")
  Paused = AdStatus.new("Paused")
end

# {https://adwords.google.com/api/adwords/v12}AdType
class AdType < ::String
  CommerceAd = AdType.new("CommerceAd")
  ImageAd = AdType.new("ImageAd")
  LocalBusinessAd = AdType.new("LocalBusinessAd")
  MobileAd = AdType.new("MobileAd")
  TextAd = AdType.new("TextAd")
  VideoAd = AdType.new("VideoAd")
end

# {https://adwords.google.com/api/adwords/v12}ImageType
class ImageType < ::String
  DynamicImage = ImageType.new("dynamicImage")
  Flash = ImageType.new("flash")
  Image = ImageType.new("image")
end

# {https://adwords.google.com/api/adwords/v12}StockIcon
class StockIcon < ::String
  Standard_1 = StockIcon.new("Standard_1")
  Standard_10 = StockIcon.new("Standard_10")
  Standard_11 = StockIcon.new("Standard_11")
  Standard_12 = StockIcon.new("Standard_12")
  Standard_13 = StockIcon.new("Standard_13")
  Standard_14 = StockIcon.new("Standard_14")
  Standard_15 = StockIcon.new("Standard_15")
  Standard_16 = StockIcon.new("Standard_16")
  Standard_17 = StockIcon.new("Standard_17")
  Standard_2 = StockIcon.new("Standard_2")
  Standard_3 = StockIcon.new("Standard_3")
  Standard_4 = StockIcon.new("Standard_4")
  Standard_5 = StockIcon.new("Standard_5")
  Standard_6 = StockIcon.new("Standard_6")
  Standard_7 = StockIcon.new("Standard_7")
  Standard_8 = StockIcon.new("Standard_8")
  Standard_9 = StockIcon.new("Standard_9")
end

# {https://adwords.google.com/api/adwords/v12}addAds
class AddAds < ::Array
end

# {https://adwords.google.com/api/adwords/v12}addAdsResponse
class AddAdsResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v12}checkAds
#   ads - AdWords::AdService::Ad
#   languageTarget - AdWords::AdService::LanguageTarget
#   geoTarget - AdWords::AdService::GeoTarget
class CheckAds
  attr_accessor :ads
  attr_accessor :languageTarget
  attr_accessor :geoTarget

  def initialize(ads = [], languageTarget = nil, geoTarget = nil)
    @ads = ads
    @languageTarget = languageTarget
    @geoTarget = geoTarget
  end
end

# {https://adwords.google.com/api/adwords/v12}checkAdsResponse
class CheckAdsResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v12}findBusinesses
#   name - SOAP::SOAPString
#   address - SOAP::SOAPString
#   countryCode - SOAP::SOAPString
class FindBusinesses
  attr_accessor :name
  attr_accessor :address
  attr_accessor :countryCode

  def initialize(name = nil, address = nil, countryCode = nil)
    @name = name
    @address = address
    @countryCode = countryCode
  end
end

# {https://adwords.google.com/api/adwords/v12}findBusinessesResponse
class FindBusinessesResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v12}getActiveAds
class GetActiveAds < ::Array
end

# {https://adwords.google.com/api/adwords/v12}getActiveAdsResponse
class GetActiveAdsResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v12}getAd
#   adGroupId - SOAP::SOAPLong
#   adId - SOAP::SOAPLong
class GetAd
  attr_accessor :adGroupId
  attr_accessor :adId

  def initialize(adGroupId = nil, adId = nil)
    @adGroupId = adGroupId
    @adId = adId
  end
end

# {https://adwords.google.com/api/adwords/v12}getAdResponse
#   getAdReturn - AdWords::AdService::Ad
class GetAdResponse
  attr_accessor :getAdReturn

  def initialize(getAdReturn = nil)
    @getAdReturn = getAdReturn
  end
end

# {https://adwords.google.com/api/adwords/v12}getAdStats
#   adGroupId - SOAP::SOAPLong
#   adIds - SOAP::SOAPLong
#   startDay - SOAP::SOAPDate
#   endDay - SOAP::SOAPDate
class GetAdStats
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

# {https://adwords.google.com/api/adwords/v12}getAdStatsResponse
class GetAdStatsResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v12}getAllAds
class GetAllAds < ::Array
end

# {https://adwords.google.com/api/adwords/v12}getAllAdsResponse
class GetAllAdsResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v12}getMyBusinesses
class GetMyBusinesses
  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v12}getMyBusinessesResponse
class GetMyBusinessesResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v12}getMyVideos
class GetMyVideos
  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v12}getMyVideosResponse
class GetMyVideosResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v12}updateAds
class UpdateAds < ::Array
end

# {https://adwords.google.com/api/adwords/v12}updateAdsResponse
class UpdateAdsResponse
  def initialize
  end
end


end; end
