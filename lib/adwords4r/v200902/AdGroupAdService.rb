require 'xsd/qname'

module AdWords; module V200902; module AdGroupAdService


# {https://adwords.google.com/api/adwords/cm/v200902}AdExtensionId
#   id - SOAP::SOAPLong
class AdExtensionId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}AdId
#   id - SOAP::SOAPLong
class AdId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}Address
#   streetAddress - SOAP::SOAPString
#   streetAddress2 - SOAP::SOAPString
#   cityName - SOAP::SOAPString
#   provinceCode - SOAP::SOAPString
#   provinceName - SOAP::SOAPString
#   postalCode - SOAP::SOAPString
#   countryCode - SOAP::SOAPString
class Address
  attr_accessor :streetAddress
  attr_accessor :streetAddress2
  attr_accessor :cityName
  attr_accessor :provinceCode
  attr_accessor :provinceName
  attr_accessor :postalCode
  attr_accessor :countryCode

  def initialize(streetAddress = nil, streetAddress2 = nil, cityName = nil, provinceCode = nil, provinceName = nil, postalCode = nil, countryCode = nil)
    @streetAddress = streetAddress
    @streetAddress2 = streetAddress2
    @cityName = cityName
    @provinceCode = provinceCode
    @provinceName = provinceName
    @postalCode = postalCode
    @countryCode = countryCode
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}Date
#   year - SOAP::SOAPInt
#   month - SOAP::SOAPInt
#   day - SOAP::SOAPInt
class Date
  attr_accessor :year
  attr_accessor :month
  attr_accessor :day

  def initialize(year = nil, month = nil, day = nil)
    @year = year
    @month = month
    @day = day
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}DateRange
#   min - AdWords::V200902::AdGroupAdService::Date
#   max - AdWords::V200902::AdGroupAdService::Date
class DateRange
  attr_accessor :min
  attr_accessor :max

  def initialize(min = nil, max = nil)
    @min = min
    @max = max
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}Dimensions
#   width - SOAP::SOAPInt
#   height - SOAP::SOAPInt
class Dimensions
  attr_accessor :width
  attr_accessor :height

  def initialize(width = nil, height = nil)
    @width = width
    @height = height
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}GeoPoint
#   latitudeInMicroDegrees - SOAP::SOAPInt
#   longitudeInMicroDegrees - SOAP::SOAPInt
class GeoPoint
  attr_accessor :latitudeInMicroDegrees
  attr_accessor :longitudeInMicroDegrees

  def initialize(latitudeInMicroDegrees = nil, longitudeInMicroDegrees = nil)
    @latitudeInMicroDegrees = latitudeInMicroDegrees
    @longitudeInMicroDegrees = longitudeInMicroDegrees
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}MediaId
#   id - SOAP::SOAPLong
class MediaId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}Media_Size_DimensionsMapEntry
#   key - AdWords::V200902::AdGroupAdService::MediaSize
#   value - AdWords::V200902::AdGroupAdService::Dimensions
class Media_Size_DimensionsMapEntry
  attr_accessor :key
  attr_accessor :value

  def initialize(key = nil, value = nil)
    @key = key
    @value = value
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}Media_Size_StringMapEntry
#   key - AdWords::V200902::AdGroupAdService::MediaSize
#   value - SOAP::SOAPString
class Media_Size_StringMapEntry
  attr_accessor :key
  attr_accessor :value

  def initialize(key = nil, value = nil)
    @key = key
    @value = value
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}Money
#   currencyCode - SOAP::SOAPString
#   microAmount - SOAP::SOAPLong
class Money
  attr_accessor :currencyCode
  attr_accessor :microAmount

  def initialize(currencyCode = nil, microAmount = nil)
    @currencyCode = currencyCode
    @microAmount = microAmount
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}Paging
#   startIndex - SOAP::SOAPInt
#   numberResults - SOAP::SOAPInt
class Paging
  attr_accessor :startIndex
  attr_accessor :numberResults

  def initialize(startIndex = nil, numberResults = nil)
    @startIndex = startIndex
    @numberResults = numberResults
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}PolicyViolationError.Part
#   index - SOAP::SOAPInt
#   length - SOAP::SOAPInt
class PolicyViolationErrorPart
  attr_accessor :index
  attr_accessor :length

  def initialize(index = nil, length = nil)
    @index = index
    @length = length
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}PolicyViolationKey
#   policyName - SOAP::SOAPString
#   violatingText - SOAP::SOAPString
class PolicyViolationKey
  attr_accessor :policyName
  attr_accessor :violatingText

  def initialize(policyName = nil, violatingText = nil)
    @policyName = policyName
    @violatingText = violatingText
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}SoapHeader
#   authToken - SOAP::SOAPString
#   clientCustomerId - SOAP::SOAPString
#   clientEmail - SOAP::SOAPString
class SoapHeader
  attr_accessor :authToken
  attr_accessor :clientCustomerId
  attr_accessor :clientEmail

  def initialize(authToken = nil, clientCustomerId = nil, clientEmail = nil)
    @authToken = authToken
    @clientCustomerId = clientCustomerId
    @clientEmail = clientEmail
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}SoapResponseHeader
#   requestId - SOAP::SOAPString
#   operations - SOAP::SOAPLong
#   responseTime - SOAP::SOAPLong
class SoapResponseHeader
  attr_accessor :requestId
  attr_accessor :operations
  attr_accessor :responseTime

  def initialize(requestId = nil, operations = nil, responseTime = nil)
    @requestId = requestId
    @operations = operations
    @responseTime = responseTime
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}Stats
#   startDate - AdWords::V200902::AdGroupAdService::Date
#   endDate - AdWords::V200902::AdGroupAdService::Date
#   network - AdWords::V200902::AdGroupAdService::StatsNetwork
#   clicks - SOAP::SOAPLong
#   impressions - SOAP::SOAPLong
#   cost - AdWords::V200902::AdGroupAdService::Money
#   averagePosition - SOAP::SOAPDouble
#   averageCpc - AdWords::V200902::AdGroupAdService::Money
#   averageCpm - AdWords::V200902::AdGroupAdService::Money
#   ctr - SOAP::SOAPDouble
#   conversions - SOAP::SOAPLong
#   conversionRate - SOAP::SOAPDouble
#   costPerConversion - AdWords::V200902::AdGroupAdService::Money
#   conversionsManyPerClick - SOAP::SOAPLong
#   conversionRateManyPerClick - SOAP::SOAPDouble
#   costPerConversionManyPerClick - AdWords::V200902::AdGroupAdService::Money
#   stats_Type - SOAP::SOAPString
class Stats
  attr_accessor :startDate
  attr_accessor :endDate
  attr_accessor :network
  attr_accessor :clicks
  attr_accessor :impressions
  attr_accessor :cost
  attr_accessor :averagePosition
  attr_accessor :averageCpc
  attr_accessor :averageCpm
  attr_accessor :ctr
  attr_accessor :conversions
  attr_accessor :conversionRate
  attr_accessor :costPerConversion
  attr_accessor :conversionsManyPerClick
  attr_accessor :conversionRateManyPerClick
  attr_accessor :costPerConversionManyPerClick
  attr_accessor :stats_Type

  def initialize(startDate = nil, endDate = nil, network = nil, clicks = nil, impressions = nil, cost = nil, averagePosition = nil, averageCpc = nil, averageCpm = nil, ctr = nil, conversions = nil, conversionRate = nil, costPerConversion = nil, conversionsManyPerClick = nil, conversionRateManyPerClick = nil, costPerConversionManyPerClick = nil, stats_Type = nil)
    @startDate = startDate
    @endDate = endDate
    @network = network
    @clicks = clicks
    @impressions = impressions
    @cost = cost
    @averagePosition = averagePosition
    @averageCpc = averageCpc
    @averageCpm = averageCpm
    @ctr = ctr
    @conversions = conversions
    @conversionRate = conversionRate
    @costPerConversion = costPerConversion
    @conversionsManyPerClick = conversionsManyPerClick
    @conversionRateManyPerClick = conversionRateManyPerClick
    @costPerConversionManyPerClick = costPerConversionManyPerClick
    @stats_Type = stats_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}AdStats
#   startDate - AdWords::V200902::AdGroupAdService::Date
#   endDate - AdWords::V200902::AdGroupAdService::Date
#   network - AdWords::V200902::AdGroupAdService::StatsNetwork
#   clicks - SOAP::SOAPLong
#   impressions - SOAP::SOAPLong
#   cost - AdWords::V200902::AdGroupAdService::Money
#   averagePosition - SOAP::SOAPDouble
#   averageCpc - AdWords::V200902::AdGroupAdService::Money
#   averageCpm - AdWords::V200902::AdGroupAdService::Money
#   ctr - SOAP::SOAPDouble
#   conversions - SOAP::SOAPLong
#   conversionRate - SOAP::SOAPDouble
#   costPerConversion - AdWords::V200902::AdGroupAdService::Money
#   conversionsManyPerClick - SOAP::SOAPLong
#   conversionRateManyPerClick - SOAP::SOAPDouble
#   costPerConversionManyPerClick - AdWords::V200902::AdGroupAdService::Money
#   stats_Type - SOAP::SOAPString
#   percentServed - SOAP::SOAPDouble
class AdStats < Stats
  attr_accessor :startDate
  attr_accessor :endDate
  attr_accessor :network
  attr_accessor :clicks
  attr_accessor :impressions
  attr_accessor :cost
  attr_accessor :averagePosition
  attr_accessor :averageCpc
  attr_accessor :averageCpm
  attr_accessor :ctr
  attr_accessor :conversions
  attr_accessor :conversionRate
  attr_accessor :costPerConversion
  attr_accessor :conversionsManyPerClick
  attr_accessor :conversionRateManyPerClick
  attr_accessor :costPerConversionManyPerClick
  attr_accessor :stats_Type
  attr_accessor :percentServed

  def initialize(startDate = nil, endDate = nil, network = nil, clicks = nil, impressions = nil, cost = nil, averagePosition = nil, averageCpc = nil, averageCpm = nil, ctr = nil, conversions = nil, conversionRate = nil, costPerConversion = nil, conversionsManyPerClick = nil, conversionRateManyPerClick = nil, costPerConversionManyPerClick = nil, stats_Type = nil, percentServed = nil)
    @startDate = startDate
    @endDate = endDate
    @network = network
    @clicks = clicks
    @impressions = impressions
    @cost = cost
    @averagePosition = averagePosition
    @averageCpc = averageCpc
    @averageCpm = averageCpm
    @ctr = ctr
    @conversions = conversions
    @conversionRate = conversionRate
    @costPerConversion = costPerConversion
    @conversionsManyPerClick = conversionsManyPerClick
    @conversionRateManyPerClick = conversionRateManyPerClick
    @costPerConversionManyPerClick = costPerConversionManyPerClick
    @stats_Type = stats_Type
    @percentServed = percentServed
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}StatsSelector
#   dateRange - AdWords::V200902::AdGroupAdService::DateRange
#   statsSelector_Type - SOAP::SOAPString
class StatsSelector
  attr_accessor :dateRange
  attr_accessor :statsSelector_Type

  def initialize(dateRange = nil, statsSelector_Type = nil)
    @dateRange = dateRange
    @statsSelector_Type = statsSelector_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}AdStatsSelector
#   dateRange - AdWords::V200902::AdGroupAdService::DateRange
#   statsSelector_Type - SOAP::SOAPString
class AdStatsSelector < StatsSelector
  attr_accessor :dateRange
  attr_accessor :statsSelector_Type

  def initialize(dateRange = nil, statsSelector_Type = nil)
    @dateRange = dateRange
    @statsSelector_Type = statsSelector_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}AdExtension
#   id - AdWords::V200902::AdGroupAdService::AdExtensionId
#   adExtension_Type - SOAP::SOAPString
class AdExtension
  attr_accessor :id
  attr_accessor :adExtension_Type

  def initialize(id = nil, adExtension_Type = nil)
    @id = id
    @adExtension_Type = adExtension_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}LocationExtension
#   id - AdWords::V200902::AdGroupAdService::AdExtensionId
#   adExtension_Type - SOAP::SOAPString
#   address - AdWords::V200902::AdGroupAdService::Address
#   geoPoint - AdWords::V200902::AdGroupAdService::GeoPoint
#   companyName - SOAP::SOAPString
#   phoneNumber - SOAP::SOAPString
class LocationExtension < AdExtension
  attr_accessor :id
  attr_accessor :adExtension_Type
  attr_accessor :address
  attr_accessor :geoPoint
  attr_accessor :companyName
  attr_accessor :phoneNumber

  def initialize(id = nil, adExtension_Type = nil, address = nil, geoPoint = nil, companyName = nil, phoneNumber = nil)
    @id = id
    @adExtension_Type = adExtension_Type
    @address = address
    @geoPoint = geoPoint
    @companyName = companyName
    @phoneNumber = phoneNumber
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}LocationSyncExtension
#   id - AdWords::V200902::AdGroupAdService::AdExtensionId
#   adExtension_Type - SOAP::SOAPString
#   email - SOAP::SOAPString
class LocationSyncExtension < AdExtension
  attr_accessor :id
  attr_accessor :adExtension_Type
  attr_accessor :email

  def initialize(id = nil, adExtension_Type = nil, email = nil)
    @id = id
    @adExtension_Type = adExtension_Type
    @email = email
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}MobileExtension
#   id - AdWords::V200902::AdGroupAdService::AdExtensionId
#   adExtension_Type - SOAP::SOAPString
#   phoneNumber - SOAP::SOAPString
class MobileExtension < AdExtension
  attr_accessor :id
  attr_accessor :adExtension_Type
  attr_accessor :phoneNumber

  def initialize(id = nil, adExtension_Type = nil, phoneNumber = nil)
    @id = id
    @adExtension_Type = adExtension_Type
    @phoneNumber = phoneNumber
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}ProductExtension
#   id - AdWords::V200902::AdGroupAdService::AdExtensionId
#   adExtension_Type - SOAP::SOAPString
#   googleBaseCustomerId - SOAP::SOAPInt
#   advertiserName - SOAP::SOAPString
class ProductExtension < AdExtension
  attr_accessor :id
  attr_accessor :adExtension_Type
  attr_accessor :googleBaseCustomerId
  attr_accessor :advertiserName

  def initialize(id = nil, adExtension_Type = nil, googleBaseCustomerId = nil, advertiserName = nil)
    @id = id
    @adExtension_Type = adExtension_Type
    @googleBaseCustomerId = googleBaseCustomerId
    @advertiserName = advertiserName
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}StoreLocatorExtension
#   id - AdWords::V200902::AdGroupAdService::AdExtensionId
#   adExtension_Type - SOAP::SOAPString
#   localSearchClusterId - SOAP::SOAPLong
class StoreLocatorExtension < AdExtension
  attr_accessor :id
  attr_accessor :adExtension_Type
  attr_accessor :localSearchClusterId

  def initialize(id = nil, adExtension_Type = nil, localSearchClusterId = nil)
    @id = id
    @adExtension_Type = adExtension_Type
    @localSearchClusterId = localSearchClusterId
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupId
#   id - SOAP::SOAPLong
#   adGroupId_Type - SOAP::SOAPString
class AdGroupId
  attr_accessor :id
  attr_accessor :adGroupId_Type

  def initialize(id = nil, adGroupId_Type = nil)
    @id = id
    @adGroupId_Type = adGroupId_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}CampaignId
#   id - SOAP::SOAPLong
#   campaignId_Type - SOAP::SOAPString
class CampaignId
  attr_accessor :id
  attr_accessor :campaignId_Type

  def initialize(id = nil, campaignId_Type = nil)
    @id = id
    @campaignId_Type = campaignId_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}ExemptionRequest
#   key - AdWords::V200902::AdGroupAdService::PolicyViolationKey
class ExemptionRequest
  attr_accessor :key

  def initialize(key = nil)
    @key = key
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}Media
#   mediaId - AdWords::V200902::AdGroupAdService::MediaId
#   mediaTypeDb - AdWords::V200902::AdGroupAdService::MediaMediaType
#   referenceId - SOAP::SOAPLong
#   dimensions - AdWords::V200902::AdGroupAdService::Media_Size_DimensionsMapEntry
#   urls - AdWords::V200902::AdGroupAdService::Media_Size_StringMapEntry
#   mimeType - AdWords::V200902::AdGroupAdService::MediaMimeType
#   sourceUrl - SOAP::SOAPString
#   mediaSubType - AdWords::V200902::AdGroupAdService::MediaMediaSubType
#   name - SOAP::SOAPString
#   fileSize - SOAP::SOAPLong
#   media_Type - SOAP::SOAPString
class Media
  attr_accessor :mediaId
  attr_accessor :mediaTypeDb
  attr_accessor :referenceId
  attr_accessor :dimensions
  attr_accessor :urls
  attr_accessor :mimeType
  attr_accessor :sourceUrl
  attr_accessor :mediaSubType
  attr_accessor :name
  attr_accessor :fileSize
  attr_accessor :media_Type

  def initialize(mediaId = nil, mediaTypeDb = nil, referenceId = nil, dimensions = [], urls = [], mimeType = nil, sourceUrl = nil, mediaSubType = nil, name = nil, fileSize = nil, media_Type = nil)
    @mediaId = mediaId
    @mediaTypeDb = mediaTypeDb
    @referenceId = referenceId
    @dimensions = dimensions
    @urls = urls
    @mimeType = mimeType
    @sourceUrl = sourceUrl
    @mediaSubType = mediaSubType
    @name = name
    @fileSize = fileSize
    @media_Type = media_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}Image
#   mediaId - AdWords::V200902::AdGroupAdService::MediaId
#   mediaTypeDb - AdWords::V200902::AdGroupAdService::MediaMediaType
#   referenceId - SOAP::SOAPLong
#   dimensions - AdWords::V200902::AdGroupAdService::Media_Size_DimensionsMapEntry
#   urls - AdWords::V200902::AdGroupAdService::Media_Size_StringMapEntry
#   mimeType - AdWords::V200902::AdGroupAdService::MediaMimeType
#   sourceUrl - SOAP::SOAPString
#   mediaSubType - AdWords::V200902::AdGroupAdService::MediaMediaSubType
#   name - SOAP::SOAPString
#   fileSize - SOAP::SOAPLong
#   media_Type - SOAP::SOAPString
#   data - SOAP::SOAPBase64
class Image < Media
  attr_accessor :mediaId
  attr_accessor :mediaTypeDb
  attr_accessor :referenceId
  attr_accessor :dimensions
  attr_accessor :urls
  attr_accessor :mimeType
  attr_accessor :sourceUrl
  attr_accessor :mediaSubType
  attr_accessor :name
  attr_accessor :fileSize
  attr_accessor :media_Type
  attr_accessor :data

  def initialize(mediaId = nil, mediaTypeDb = nil, referenceId = nil, dimensions = [], urls = [], mimeType = nil, sourceUrl = nil, mediaSubType = nil, name = nil, fileSize = nil, media_Type = nil, data = nil)
    @mediaId = mediaId
    @mediaTypeDb = mediaTypeDb
    @referenceId = referenceId
    @dimensions = dimensions
    @urls = urls
    @mimeType = mimeType
    @sourceUrl = sourceUrl
    @mediaSubType = mediaSubType
    @name = name
    @fileSize = fileSize
    @media_Type = media_Type
    @data = data
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}Target
# abstract
#   target_Type - SOAP::SOAPString
class Target
  attr_accessor :target_Type

  def initialize(target_Type = nil)
    @target_Type = target_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}AdScheduleTarget
#   target_Type - SOAP::SOAPString
#   dayOfWeek - AdWords::V200902::AdGroupAdService::DayOfWeek
#   startHour - SOAP::SOAPInt
#   startMinute - AdWords::V200902::AdGroupAdService::MinuteOfHour
#   endHour - SOAP::SOAPInt
#   endMinute - AdWords::V200902::AdGroupAdService::MinuteOfHour
#   bidMultiplier - SOAP::SOAPDouble
class AdScheduleTarget < Target
  attr_accessor :target_Type
  attr_accessor :dayOfWeek
  attr_accessor :startHour
  attr_accessor :startMinute
  attr_accessor :endHour
  attr_accessor :endMinute
  attr_accessor :bidMultiplier

  def initialize(target_Type = nil, dayOfWeek = nil, startHour = nil, startMinute = nil, endHour = nil, endMinute = nil, bidMultiplier = nil)
    @target_Type = target_Type
    @dayOfWeek = dayOfWeek
    @startHour = startHour
    @startMinute = startMinute
    @endHour = endHour
    @endMinute = endMinute
    @bidMultiplier = bidMultiplier
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}LanguageTarget
#   target_Type - SOAP::SOAPString
#   languageCode - SOAP::SOAPString
class LanguageTarget < Target
  attr_accessor :target_Type
  attr_accessor :languageCode

  def initialize(target_Type = nil, languageCode = nil)
    @target_Type = target_Type
    @languageCode = languageCode
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}NetworkTarget
#   target_Type - SOAP::SOAPString
#   networkCoverageType - AdWords::V200902::AdGroupAdService::NetworkCoverageType
class NetworkTarget < Target
  attr_accessor :target_Type
  attr_accessor :networkCoverageType

  def initialize(target_Type = nil, networkCoverageType = nil)
    @target_Type = target_Type
    @networkCoverageType = networkCoverageType
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}PlatformTarget
#   target_Type - SOAP::SOAPString
#   platformType - AdWords::V200902::AdGroupAdService::PlatformType
class PlatformTarget < Target
  attr_accessor :target_Type
  attr_accessor :platformType

  def initialize(target_Type = nil, platformType = nil)
    @target_Type = target_Type
    @platformType = platformType
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}DemographicTarget
# abstract
#   target_Type - SOAP::SOAPString
#   bidModifier - SOAP::SOAPInt
class DemographicTarget < Target
  attr_accessor :target_Type
  attr_accessor :bidModifier

  def initialize(target_Type = nil, bidModifier = nil)
    @target_Type = target_Type
    @bidModifier = bidModifier
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}AgeTarget
#   target_Type - SOAP::SOAPString
#   bidModifier - SOAP::SOAPInt
#   age - AdWords::V200902::AdGroupAdService::AgeTargetAge
class AgeTarget < DemographicTarget
  attr_accessor :target_Type
  attr_accessor :bidModifier
  attr_accessor :age

  def initialize(target_Type = nil, bidModifier = nil, age = nil)
    @target_Type = target_Type
    @bidModifier = bidModifier
    @age = age
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}GenderTarget
#   target_Type - SOAP::SOAPString
#   bidModifier - SOAP::SOAPInt
#   gender - AdWords::V200902::AdGroupAdService::GenderTargetGender
class GenderTarget < DemographicTarget
  attr_accessor :target_Type
  attr_accessor :bidModifier
  attr_accessor :gender

  def initialize(target_Type = nil, bidModifier = nil, gender = nil)
    @target_Type = target_Type
    @bidModifier = bidModifier
    @gender = gender
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}GeoTarget
# abstract
#   target_Type - SOAP::SOAPString
#   excluded - SOAP::SOAPBoolean
class GeoTarget < Target
  attr_accessor :target_Type
  attr_accessor :excluded

  def initialize(target_Type = nil, excluded = nil)
    @target_Type = target_Type
    @excluded = excluded
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}CityTarget
#   target_Type - SOAP::SOAPString
#   excluded - SOAP::SOAPBoolean
#   cityName - SOAP::SOAPString
#   provinceCode - SOAP::SOAPString
#   countryCode - SOAP::SOAPString
class CityTarget < GeoTarget
  attr_accessor :target_Type
  attr_accessor :excluded
  attr_accessor :cityName
  attr_accessor :provinceCode
  attr_accessor :countryCode

  def initialize(target_Type = nil, excluded = nil, cityName = nil, provinceCode = nil, countryCode = nil)
    @target_Type = target_Type
    @excluded = excluded
    @cityName = cityName
    @provinceCode = provinceCode
    @countryCode = countryCode
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}CountryTarget
#   target_Type - SOAP::SOAPString
#   excluded - SOAP::SOAPBoolean
#   countryCode - SOAP::SOAPString
class CountryTarget < GeoTarget
  attr_accessor :target_Type
  attr_accessor :excluded
  attr_accessor :countryCode

  def initialize(target_Type = nil, excluded = nil, countryCode = nil)
    @target_Type = target_Type
    @excluded = excluded
    @countryCode = countryCode
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}MetroTarget
#   target_Type - SOAP::SOAPString
#   excluded - SOAP::SOAPBoolean
#   metroCode - SOAP::SOAPString
class MetroTarget < GeoTarget
  attr_accessor :target_Type
  attr_accessor :excluded
  attr_accessor :metroCode

  def initialize(target_Type = nil, excluded = nil, metroCode = nil)
    @target_Type = target_Type
    @excluded = excluded
    @metroCode = metroCode
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}PolygonTarget
#   target_Type - SOAP::SOAPString
#   excluded - SOAP::SOAPBoolean
#   vertices - AdWords::V200902::AdGroupAdService::GeoPoint
class PolygonTarget < GeoTarget
  attr_accessor :target_Type
  attr_accessor :excluded
  attr_accessor :vertices

  def initialize(target_Type = nil, excluded = nil, vertices = [])
    @target_Type = target_Type
    @excluded = excluded
    @vertices = vertices
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}ProvinceTarget
#   target_Type - SOAP::SOAPString
#   excluded - SOAP::SOAPBoolean
#   provinceCode - SOAP::SOAPString
class ProvinceTarget < GeoTarget
  attr_accessor :target_Type
  attr_accessor :excluded
  attr_accessor :provinceCode

  def initialize(target_Type = nil, excluded = nil, provinceCode = nil)
    @target_Type = target_Type
    @excluded = excluded
    @provinceCode = provinceCode
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}ProximityTarget
#   target_Type - SOAP::SOAPString
#   excluded - SOAP::SOAPBoolean
#   geoPoint - AdWords::V200902::AdGroupAdService::GeoPoint
#   radiusDistanceUnits - AdWords::V200902::AdGroupAdService::ProximityTargetDistanceUnits
#   radiusInUnits - SOAP::SOAPDouble
#   address - AdWords::V200902::AdGroupAdService::Address
#   allowServiceOfAddress - SOAP::SOAPBoolean
class ProximityTarget < GeoTarget
  attr_accessor :target_Type
  attr_accessor :excluded
  attr_accessor :geoPoint
  attr_accessor :radiusDistanceUnits
  attr_accessor :radiusInUnits
  attr_accessor :address
  attr_accessor :allowServiceOfAddress

  def initialize(target_Type = nil, excluded = nil, geoPoint = nil, radiusDistanceUnits = nil, radiusInUnits = nil, address = nil, allowServiceOfAddress = nil)
    @target_Type = target_Type
    @excluded = excluded
    @geoPoint = geoPoint
    @radiusDistanceUnits = radiusDistanceUnits
    @radiusInUnits = radiusInUnits
    @address = address
    @allowServiceOfAddress = allowServiceOfAddress
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupAdIdFilter
#   campaignId - AdWords::V200902::AdGroupAdService::CampaignId
#   adGroupId - AdWords::V200902::AdGroupAdService::AdGroupId
class AdGroupAdIdFilter
  attr_accessor :campaignId
  attr_accessor :adGroupId

  def initialize(campaignId = nil, adGroupId = nil)
    @campaignId = campaignId
    @adGroupId = adGroupId
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupAdSelector
#   adGroupAdIdFilters - AdWords::V200902::AdGroupAdService::AdGroupAdIdFilter
#   statsSelector - AdWords::V200902::AdGroupAdService::AdStatsSelector
#   paging - AdWords::V200902::AdGroupAdService::Paging
class AdGroupAdSelector
  attr_accessor :adGroupAdIdFilters
  attr_accessor :statsSelector
  attr_accessor :paging

  def initialize(adGroupAdIdFilters = [], statsSelector = nil, paging = nil)
    @adGroupAdIdFilters = adGroupAdIdFilters
    @statsSelector = statsSelector
    @paging = paging
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}ApiError
# abstract
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
class ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}AdError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupAdService::AdErrorReason
class AdError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupAdError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupAdService::AdGroupAdErrorReason
class AdGroupAdError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}AuthorizationError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupAdService::AuthorizationErrorReason
class AuthorizationError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}DatabaseError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupAdService::DatabaseErrorReason
class DatabaseError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}DistinctError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupAdService::DistinctErrorReason
class DistinctError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}EntityCountLimitExceeded
# abstract
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupAdService::EntityCountLimitExceededReason
#   enclosingId - SOAP::SOAPString
#   limit - SOAP::SOAPInt
class EntityCountLimitExceeded < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason
  attr_accessor :enclosingId
  attr_accessor :limit

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil, enclosingId = nil, limit = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
    @enclosingId = enclosingId
    @limit = limit
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupAdCountLimitExceeded
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupAdService::EntityCountLimitExceededReason
#   enclosingId - SOAP::SOAPString
#   limit - SOAP::SOAPInt
class AdGroupAdCountLimitExceeded < EntityCountLimitExceeded
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason
  attr_accessor :enclosingId
  attr_accessor :limit

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil, enclosingId = nil, limit = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
    @enclosingId = enclosingId
    @limit = limit
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}IdError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupAdService::IdErrorReason
class IdError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}ImageError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupAdService::ImageErrorReason
class ImageError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}MediaError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupAdService::MediaErrorReason
class MediaError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}NewEntityCreationError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupAdService::NewEntityCreationErrorReason
class NewEntityCreationError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}NotEmptyError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupAdService::NotEmptyErrorReason
class NotEmptyError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}NotWhitelistedError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupAdService::NotWhitelistedErrorReason
class NotWhitelistedError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}NullError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupAdService::NullErrorReason
class NullError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}OperationAccessDenied
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupAdService::OperationAccessDeniedReason
class OperationAccessDenied < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}ReadOnlyError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupAdService::ReadOnlyErrorReason
class ReadOnlyError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}RequiredError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupAdService::RequiredErrorReason
class RequiredError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}StatsQueryError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupAdService::StatsQueryErrorReason
class StatsQueryError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}PolicyViolationError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   key - AdWords::V200902::AdGroupAdService::PolicyViolationKey
#   externalPolicyName - SOAP::SOAPString
#   externalPolicyUrl - SOAP::SOAPString
#   externalPolicyDescription - SOAP::SOAPString
#   isExemptable - SOAP::SOAPBoolean
#   violatingParts - AdWords::V200902::AdGroupAdService::PolicyViolationErrorPart
class PolicyViolationError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :key
  attr_accessor :externalPolicyName
  attr_accessor :externalPolicyUrl
  attr_accessor :externalPolicyDescription
  attr_accessor :isExemptable
  attr_accessor :violatingParts

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, key = nil, externalPolicyName = nil, externalPolicyUrl = nil, externalPolicyDescription = nil, isExemptable = nil, violatingParts = [])
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @key = key
    @externalPolicyName = externalPolicyName
    @externalPolicyUrl = externalPolicyUrl
    @externalPolicyDescription = externalPolicyDescription
    @isExemptable = isExemptable
    @violatingParts = violatingParts
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}ApplicationException
#   message - SOAP::SOAPString
#   applicationException_Type - SOAP::SOAPString
class ApplicationException
  attr_accessor :message
  attr_accessor :applicationException_Type

  def initialize(message = nil, applicationException_Type = nil)
    @message = message
    @applicationException_Type = applicationException_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}ApiException
#   message - SOAP::SOAPString
#   applicationException_Type - SOAP::SOAPString
#   errors - AdWords::V200902::AdGroupAdService::ApiError
class ApiException < ApplicationException
  attr_accessor :message
  attr_accessor :applicationException_Type
  attr_accessor :errors

  def initialize(message = nil, applicationException_Type = nil, errors = [])
    @message = message
    @applicationException_Type = applicationException_Type
    @errors = errors
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}Ad
#   id - AdWords::V200902::AdGroupAdService::AdId
#   url - SOAP::SOAPString
#   displayUrl - SOAP::SOAPString
#   approvalStatus - AdWords::V200902::AdGroupAdService::AdApprovalStatus
#   disapprovalReasons - SOAP::SOAPString
#   ad_Type - SOAP::SOAPString
class Ad
  attr_accessor :id
  attr_accessor :url
  attr_accessor :displayUrl
  attr_accessor :approvalStatus
  attr_accessor :disapprovalReasons
  attr_accessor :ad_Type

  def initialize(id = nil, url = nil, displayUrl = nil, approvalStatus = nil, disapprovalReasons = [], ad_Type = nil)
    @id = id
    @url = url
    @displayUrl = displayUrl
    @approvalStatus = approvalStatus
    @disapprovalReasons = disapprovalReasons
    @ad_Type = ad_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}MobileAd
#   id - AdWords::V200902::AdGroupAdService::AdId
#   url - SOAP::SOAPString
#   displayUrl - SOAP::SOAPString
#   approvalStatus - AdWords::V200902::AdGroupAdService::AdApprovalStatus
#   disapprovalReasons - SOAP::SOAPString
#   ad_Type - SOAP::SOAPString
#   headline - SOAP::SOAPString
#   description - SOAP::SOAPString
#   markupLanguages - AdWords::V200902::AdGroupAdService::MarkupLanguageType
#   mobileCarriers - SOAP::SOAPString
#   businessName - SOAP::SOAPString
#   countryCode - SOAP::SOAPString
#   phoneNumber - SOAP::SOAPString
class MobileAd < Ad
  attr_accessor :id
  attr_accessor :url
  attr_accessor :displayUrl
  attr_accessor :approvalStatus
  attr_accessor :disapprovalReasons
  attr_accessor :ad_Type
  attr_accessor :headline
  attr_accessor :description
  attr_accessor :markupLanguages
  attr_accessor :mobileCarriers
  attr_accessor :businessName
  attr_accessor :countryCode
  attr_accessor :phoneNumber

  def initialize(id = nil, url = nil, displayUrl = nil, approvalStatus = nil, disapprovalReasons = [], ad_Type = nil, headline = nil, description = nil, markupLanguages = [], mobileCarriers = [], businessName = nil, countryCode = nil, phoneNumber = nil)
    @id = id
    @url = url
    @displayUrl = displayUrl
    @approvalStatus = approvalStatus
    @disapprovalReasons = disapprovalReasons
    @ad_Type = ad_Type
    @headline = headline
    @description = description
    @markupLanguages = markupLanguages
    @mobileCarriers = mobileCarriers
    @businessName = businessName
    @countryCode = countryCode
    @phoneNumber = phoneNumber
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}TextAd
#   id - AdWords::V200902::AdGroupAdService::AdId
#   url - SOAP::SOAPString
#   displayUrl - SOAP::SOAPString
#   approvalStatus - AdWords::V200902::AdGroupAdService::AdApprovalStatus
#   disapprovalReasons - SOAP::SOAPString
#   ad_Type - SOAP::SOAPString
#   headline - SOAP::SOAPString
#   description1 - SOAP::SOAPString
#   description2 - SOAP::SOAPString
class TextAd < Ad
  attr_accessor :id
  attr_accessor :url
  attr_accessor :displayUrl
  attr_accessor :approvalStatus
  attr_accessor :disapprovalReasons
  attr_accessor :ad_Type
  attr_accessor :headline
  attr_accessor :description1
  attr_accessor :description2

  def initialize(id = nil, url = nil, displayUrl = nil, approvalStatus = nil, disapprovalReasons = [], ad_Type = nil, headline = nil, description1 = nil, description2 = nil)
    @id = id
    @url = url
    @displayUrl = displayUrl
    @approvalStatus = approvalStatus
    @disapprovalReasons = disapprovalReasons
    @ad_Type = ad_Type
    @headline = headline
    @description1 = description1
    @description2 = description2
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}MobileImageAd
#   id - AdWords::V200902::AdGroupAdService::AdId
#   url - SOAP::SOAPString
#   displayUrl - SOAP::SOAPString
#   approvalStatus - AdWords::V200902::AdGroupAdService::AdApprovalStatus
#   disapprovalReasons - SOAP::SOAPString
#   ad_Type - SOAP::SOAPString
#   markupLanguages - AdWords::V200902::AdGroupAdService::MarkupLanguageType
#   mobileCarriers - SOAP::SOAPString
#   image - AdWords::V200902::AdGroupAdService::Image
class MobileImageAd < Ad
  attr_accessor :id
  attr_accessor :url
  attr_accessor :displayUrl
  attr_accessor :approvalStatus
  attr_accessor :disapprovalReasons
  attr_accessor :ad_Type
  attr_accessor :markupLanguages
  attr_accessor :mobileCarriers
  attr_accessor :image

  def initialize(id = nil, url = nil, displayUrl = nil, approvalStatus = nil, disapprovalReasons = [], ad_Type = nil, markupLanguages = [], mobileCarriers = [], image = nil)
    @id = id
    @url = url
    @displayUrl = displayUrl
    @approvalStatus = approvalStatus
    @disapprovalReasons = disapprovalReasons
    @ad_Type = ad_Type
    @markupLanguages = markupLanguages
    @mobileCarriers = mobileCarriers
    @image = image
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}ImageAd
#   id - AdWords::V200902::AdGroupAdService::AdId
#   url - SOAP::SOAPString
#   displayUrl - SOAP::SOAPString
#   approvalStatus - AdWords::V200902::AdGroupAdService::AdApprovalStatus
#   disapprovalReasons - SOAP::SOAPString
#   ad_Type - SOAP::SOAPString
#   image - AdWords::V200902::AdGroupAdService::Image
#   name - SOAP::SOAPString
class ImageAd < Ad
  attr_accessor :id
  attr_accessor :url
  attr_accessor :displayUrl
  attr_accessor :approvalStatus
  attr_accessor :disapprovalReasons
  attr_accessor :ad_Type
  attr_accessor :image
  attr_accessor :name

  def initialize(id = nil, url = nil, displayUrl = nil, approvalStatus = nil, disapprovalReasons = [], ad_Type = nil, image = nil, name = nil)
    @id = id
    @url = url
    @displayUrl = displayUrl
    @approvalStatus = approvalStatus
    @disapprovalReasons = disapprovalReasons
    @ad_Type = ad_Type
    @image = image
    @name = name
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}LocalBusinessAd
#   id - AdWords::V200902::AdGroupAdService::AdId
#   url - SOAP::SOAPString
#   displayUrl - SOAP::SOAPString
#   approvalStatus - AdWords::V200902::AdGroupAdService::AdApprovalStatus
#   disapprovalReasons - SOAP::SOAPString
#   ad_Type - SOAP::SOAPString
#   fullBusinessName - SOAP::SOAPString
#   phoneNumber - SOAP::SOAPString
#   streetAddress - SOAP::SOAPString
#   city - SOAP::SOAPString
#   region - SOAP::SOAPString
#   regionCode - SOAP::SOAPString
#   postalCode - SOAP::SOAPString
#   countryCode - SOAP::SOAPString
#   businessName - SOAP::SOAPString
#   description1 - SOAP::SOAPString
#   description2 - SOAP::SOAPString
#   target - AdWords::V200902::AdGroupAdService::ProximityTarget
#   businessImage - AdWords::V200902::AdGroupAdService::Image
#   icon - AdWords::V200902::AdGroupAdService::Image
class LocalBusinessAd < Ad
  attr_accessor :id
  attr_accessor :url
  attr_accessor :displayUrl
  attr_accessor :approvalStatus
  attr_accessor :disapprovalReasons
  attr_accessor :ad_Type
  attr_accessor :fullBusinessName
  attr_accessor :phoneNumber
  attr_accessor :streetAddress
  attr_accessor :city
  attr_accessor :region
  attr_accessor :regionCode
  attr_accessor :postalCode
  attr_accessor :countryCode
  attr_accessor :businessName
  attr_accessor :description1
  attr_accessor :description2
  attr_accessor :target
  attr_accessor :businessImage
  attr_accessor :icon

  def initialize(id = nil, url = nil, displayUrl = nil, approvalStatus = nil, disapprovalReasons = [], ad_Type = nil, fullBusinessName = nil, phoneNumber = nil, streetAddress = nil, city = nil, region = nil, regionCode = nil, postalCode = nil, countryCode = nil, businessName = nil, description1 = nil, description2 = nil, target = nil, businessImage = nil, icon = nil)
    @id = id
    @url = url
    @displayUrl = displayUrl
    @approvalStatus = approvalStatus
    @disapprovalReasons = disapprovalReasons
    @ad_Type = ad_Type
    @fullBusinessName = fullBusinessName
    @phoneNumber = phoneNumber
    @streetAddress = streetAddress
    @city = city
    @region = region
    @regionCode = regionCode
    @postalCode = postalCode
    @countryCode = countryCode
    @businessName = businessName
    @description1 = description1
    @description2 = description2
    @target = target
    @businessImage = businessImage
    @icon = icon
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupAd
#   adGroupId - AdWords::V200902::AdGroupAdService::AdGroupId
#   ad - AdWords::V200902::AdGroupAdService::Ad
#   status - AdWords::V200902::AdGroupAdService::AdGroupAdStatus
#   stats - AdWords::V200902::AdGroupAdService::AdStats
class AdGroupAd
  attr_accessor :adGroupId
  attr_accessor :ad
  attr_accessor :status
  attr_accessor :stats

  def initialize(adGroupId = nil, ad = nil, status = nil, stats = nil)
    @adGroupId = adGroupId
    @ad = ad
    @status = status
    @stats = stats
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}Operation
# abstract
#   operator - AdWords::V200902::AdGroupAdService::Operator
#   operation_Type - SOAP::SOAPString
class Operation
  attr_accessor :operator
  attr_accessor :operation_Type

  def initialize(operator = nil, operation_Type = nil)
    @operator = operator
    @operation_Type = operation_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupAdOperation
#   operator - AdWords::V200902::AdGroupAdService::Operator
#   operation_Type - SOAP::SOAPString
#   operand - AdWords::V200902::AdGroupAdService::AdGroupAd
#   exemptionRequests - AdWords::V200902::AdGroupAdService::ExemptionRequest
class AdGroupAdOperation < Operation
  attr_accessor :operator
  attr_accessor :operation_Type
  attr_accessor :operand
  attr_accessor :exemptionRequests

  def initialize(operator = nil, operation_Type = nil, operand = nil, exemptionRequests = [])
    @operator = operator
    @operation_Type = operation_Type
    @operand = operand
    @exemptionRequests = exemptionRequests
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}Page
# abstract
#   totalNumEntries - SOAP::SOAPInt
#   page_Type - SOAP::SOAPString
class Page
  attr_accessor :totalNumEntries
  attr_accessor :page_Type

  def initialize(totalNumEntries = nil, page_Type = nil)
    @totalNumEntries = totalNumEntries
    @page_Type = page_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupAdPage
#   totalNumEntries - SOAP::SOAPInt
#   page_Type - SOAP::SOAPString
#   entries - AdWords::V200902::AdGroupAdService::AdGroupAd
class AdGroupAdPage < Page
  attr_accessor :totalNumEntries
  attr_accessor :page_Type
  attr_accessor :entries

  def initialize(totalNumEntries = nil, page_Type = nil, entries = [])
    @totalNumEntries = totalNumEntries
    @page_Type = page_Type
    @entries = entries
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}ListReturnValue
#   listReturnValue_Type - SOAP::SOAPString
class ListReturnValue
  attr_accessor :listReturnValue_Type

  def initialize(listReturnValue_Type = nil)
    @listReturnValue_Type = listReturnValue_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupAdReturnValue
#   listReturnValue_Type - SOAP::SOAPString
#   value - AdWords::V200902::AdGroupAdService::AdGroupAd
class AdGroupAdReturnValue < ListReturnValue
  attr_accessor :listReturnValue_Type
  attr_accessor :value

  def initialize(listReturnValue_Type = nil, value = [])
    @listReturnValue_Type = listReturnValue_Type
    @value = value
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}Ad.ApprovalStatus
class AdApprovalStatus < ::String
  APPROVED = AdApprovalStatus.new("APPROVED")
  AUTO_GENERATED = AdApprovalStatus.new("AUTO_GENERATED")
  DISABLED = AdApprovalStatus.new("DISABLED")
  DISAPPROVED = AdApprovalStatus.new("DISAPPROVED")
  FAMILY_SAFE = AdApprovalStatus.new("FAMILY_SAFE")
  FORBIDDEN = AdApprovalStatus.new("FORBIDDEN")
  NON_FAMILY_SAFE = AdApprovalStatus.new("NON_FAMILY_SAFE")
  NOT_READY_FOR_APPROVAL = AdApprovalStatus.new("NOT_READY_FOR_APPROVAL")
  PORN = AdApprovalStatus.new("PORN")
  SUSPICIOUS = AdApprovalStatus.new("SUSPICIOUS")
  UNCHECKED = AdApprovalStatus.new("UNCHECKED")
end

# {https://adwords.google.com/api/adwords/cm/v200902}AdError.Reason
class AdErrorReason < ::String
  ADDRESS_INVALID = AdErrorReason.new("ADDRESS_INVALID")
  ADDRESS_NOT_COMPLETE = AdErrorReason.new("ADDRESS_NOT_COMPLETE")
  APPROXIMATELY_TOO_LONG = AdErrorReason.new("APPROXIMATELY_TOO_LONG")
  APPROXIMATELY_TOO_SHORT = AdErrorReason.new("APPROXIMATELY_TOO_SHORT")
  AUDIO_ERROR = AdErrorReason.new("AUDIO_ERROR")
  CANNOT_SET_BUSINESS_NAME_IF_URL_SET = AdErrorReason.new("CANNOT_SET_BUSINESS_NAME_IF_URL_SET")
  CUSTOMER_NOT_APPROVED_MOBILEADS = AdErrorReason.new("CUSTOMER_NOT_APPROVED_MOBILEADS")
  CUSTOMER_NOT_APPROVED_THIRDPARTY_ADS = AdErrorReason.new("CUSTOMER_NOT_APPROVED_THIRDPARTY_ADS")
  CUSTOMER_NOT_APPROVED_THIRDPARTY_REDIRECT_ADS = AdErrorReason.new("CUSTOMER_NOT_APPROVED_THIRDPARTY_REDIRECT_ADS")
  ELEMENT_NOT_PRESENT = AdErrorReason.new("ELEMENT_NOT_PRESENT")
  EMPTY_FIELD = AdErrorReason.new("EMPTY_FIELD")
  FIELD_NOT_PRESENT = AdErrorReason.new("FIELD_NOT_PRESENT")
  IMAGE_ERROR = AdErrorReason.new("IMAGE_ERROR")
  INCORRECT_LENGTH = AdErrorReason.new("INCORRECT_LENGTH")
  INVALID_AD_ADDRESS_CAMPAIGN_TARGET = AdErrorReason.new("INVALID_AD_ADDRESS_CAMPAIGN_TARGET")
  INVALID_COUNTRY_CODE = AdErrorReason.new("INVALID_COUNTRY_CODE")
  INVALID_FORMAT = AdErrorReason.new("INVALID_FORMAT")
  INVALID_MOBILE_CARRIER_TARGET = AdErrorReason.new("INVALID_MOBILE_CARRIER_TARGET")
  LINE_TOO_WIDE = AdErrorReason.new("LINE_TOO_WIDE")
  MISSING_DESCRIPTION1 = AdErrorReason.new("MISSING_DESCRIPTION1")
  MISSING_DESCRIPTION2 = AdErrorReason.new("MISSING_DESCRIPTION2")
  MISSING_DESTINATION_URL = AdErrorReason.new("MISSING_DESTINATION_URL")
  MISSING_DIMENSION = AdErrorReason.new("MISSING_DIMENSION")
  MISSING_DISPLAY_URL = AdErrorReason.new("MISSING_DISPLAY_URL")
  MISSING_HEADLINE = AdErrorReason.new("MISSING_HEADLINE")
  MISSING_HEIGHT = AdErrorReason.new("MISSING_HEIGHT")
  MISSING_IMAGE = AdErrorReason.new("MISSING_IMAGE")
  MISSING_TEXT = AdErrorReason.new("MISSING_TEXT")
  MISSING_VISIBLE_URL = AdErrorReason.new("MISSING_VISIBLE_URL")
  MISSING_WIDTH = AdErrorReason.new("MISSING_WIDTH")
  TOO_LONG = AdErrorReason.new("TOO_LONG")
  TOO_SHORT = AdErrorReason.new("TOO_SHORT")
  UNSUPPORTED_DIMENSIONS = AdErrorReason.new("UNSUPPORTED_DIMENSIONS")
  URL_INVALID_TOP_LEVEL_DOMAIN = AdErrorReason.new("URL_INVALID_TOP_LEVEL_DOMAIN")
  URL_MALFORMED = AdErrorReason.new("URL_MALFORMED")
  URL_NO_HOST = AdErrorReason.new("URL_NO_HOST")
  URL_NO_SCHEME = AdErrorReason.new("URL_NO_SCHEME")
  URL_NO_TOP_LEVEL_DOMAIN = AdErrorReason.new("URL_NO_TOP_LEVEL_DOMAIN")
  URL_PATH_NOT_ALLOWED = AdErrorReason.new("URL_PATH_NOT_ALLOWED")
  URL_PORT_NOT_ALLOWED = AdErrorReason.new("URL_PORT_NOT_ALLOWED")
  URL_QUERY_NOT_ALLOWED = AdErrorReason.new("URL_QUERY_NOT_ALLOWED")
  VALUE_NOT_IN_RANGE = AdErrorReason.new("VALUE_NOT_IN_RANGE")
  VIDEO_RETRIEVAL_ERROR = AdErrorReason.new("VIDEO_RETRIEVAL_ERROR")
end

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupAd.Status
class AdGroupAdStatus < ::String
  DISABLED = AdGroupAdStatus.new("DISABLED")
  ENABLED = AdGroupAdStatus.new("ENABLED")
  PAUSED = AdGroupAdStatus.new("PAUSED")
end

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupAdError.Reason
class AdGroupAdErrorReason < ::String
  AD_NOT_UNDER_ADGROUP = AdGroupAdErrorReason.new("AD_NOT_UNDER_ADGROUP")
  CANNOT_OPERATE_ON_DELETED_ADGROUPAD = AdGroupAdErrorReason.new("CANNOT_OPERATE_ON_DELETED_ADGROUPAD")
  EMPTY_FIELD = AdGroupAdErrorReason.new("EMPTY_FIELD")
  ENTITY_REFERENCED_IN_MULTIPLE_OPS = AdGroupAdErrorReason.new("ENTITY_REFERENCED_IN_MULTIPLE_OPS")
  INCONSISTENT_ID_FILTER_TYPE = AdGroupAdErrorReason.new("INCONSISTENT_ID_FILTER_TYPE")
  UNSUPPORTED_ID_FILTER_TYPE = AdGroupAdErrorReason.new("UNSUPPORTED_ID_FILTER_TYPE")
  UNSUPPORTED_OPERATION = AdGroupAdErrorReason.new("UNSUPPORTED_OPERATION")
end

# {https://adwords.google.com/api/adwords/cm/v200902}AgeTarget.Age
class AgeTargetAge < ::String
  AGE_0_17 = AgeTargetAge.new("AGE_0_17")
  AGE_18_24 = AgeTargetAge.new("AGE_18_24")
  AGE_25_34 = AgeTargetAge.new("AGE_25_34")
  AGE_35_44 = AgeTargetAge.new("AGE_35_44")
  AGE_45_54 = AgeTargetAge.new("AGE_45_54")
  AGE_55_64 = AgeTargetAge.new("AGE_55_64")
  AGE_65_PLUS = AgeTargetAge.new("AGE_65_PLUS")
end

# {https://adwords.google.com/api/adwords/cm/v200902}AuthorizationError.Reason
class AuthorizationErrorReason < ::String
  EFFECTIVE_USER_PERMISSION_DENIED = AuthorizationErrorReason.new("EFFECTIVE_USER_PERMISSION_DENIED")
  NO_ADWORDS_ACCOUNT_FOR_CUSTOMER = AuthorizationErrorReason.new("NO_ADWORDS_ACCOUNT_FOR_CUSTOMER")
  UNABLE_TO_AUTHORIZE = AuthorizationErrorReason.new("UNABLE_TO_AUTHORIZE")
  USER_PERMISSION_DENIED = AuthorizationErrorReason.new("USER_PERMISSION_DENIED")
end

# {https://adwords.google.com/api/adwords/cm/v200902}DatabaseError.Reason
class DatabaseErrorReason < ::String
  CANNOT_LOAD_AD = DatabaseErrorReason.new("CANNOT_LOAD_AD")
  CANNOT_LOAD_ADGROUP = DatabaseErrorReason.new("CANNOT_LOAD_ADGROUP")
  CANNOT_LOAD_CAMPAIGN = DatabaseErrorReason.new("CANNOT_LOAD_CAMPAIGN")
  CANNOT_LOAD_CRITERION = DatabaseErrorReason.new("CANNOT_LOAD_CRITERION")
  CANNOT_LOAD_MEDIA = DatabaseErrorReason.new("CANNOT_LOAD_MEDIA")
  CONCURRENT_MODIFICATION = DatabaseErrorReason.new("CONCURRENT_MODIFICATION")
  PERMISSION_DENIED = DatabaseErrorReason.new("PERMISSION_DENIED")
end

# {https://adwords.google.com/api/adwords/cm/v200902}DayOfWeek
class DayOfWeek < ::String
  FRIDAY = DayOfWeek.new("FRIDAY")
  MONDAY = DayOfWeek.new("MONDAY")
  SATURDAY = DayOfWeek.new("SATURDAY")
  SUNDAY = DayOfWeek.new("SUNDAY")
  THURSDAY = DayOfWeek.new("THURSDAY")
  TUESDAY = DayOfWeek.new("TUESDAY")
  WEDNESDAY = DayOfWeek.new("WEDNESDAY")
end

# {https://adwords.google.com/api/adwords/cm/v200902}DistinctError.Reason
class DistinctErrorReason < ::String
  DUPLICATE_ELEMENT = DistinctErrorReason.new("DUPLICATE_ELEMENT")
end

# {https://adwords.google.com/api/adwords/cm/v200902}EntityCountLimitExceeded.Reason
class EntityCountLimitExceededReason < ::String
  ACCOUNT_LIMIT = EntityCountLimitExceededReason.new("ACCOUNT_LIMIT")
  ADGROUP_LIMIT = EntityCountLimitExceededReason.new("ADGROUP_LIMIT")
  CAMPAIGN_LIMIT = EntityCountLimitExceededReason.new("CAMPAIGN_LIMIT")
end

# {https://adwords.google.com/api/adwords/cm/v200902}GenderTarget.Gender
class GenderTargetGender < ::String
  FEMALE = GenderTargetGender.new("FEMALE")
  MALE = GenderTargetGender.new("MALE")
end

# {https://adwords.google.com/api/adwords/cm/v200902}IdError.Reason
class IdErrorReason < ::String
  NOT_FOUND = IdErrorReason.new("NOT_FOUND")
end

# {https://adwords.google.com/api/adwords/cm/v200902}ImageError.Reason
class ImageErrorReason < ::String
  ANIMATED_NOT_ALLOWED = ImageErrorReason.new("ANIMATED_NOT_ALLOWED")
  ANIMATED_VISUAL_EFFECT = ImageErrorReason.new("ANIMATED_VISUAL_EFFECT")
  ANIMATION_TOO_LONG = ImageErrorReason.new("ANIMATION_TOO_LONG")
  BAD_REQUEST = ImageErrorReason.new("BAD_REQUEST")
  CMYK_JPEG_NOT_ALLOWED = ImageErrorReason.new("CMYK_JPEG_NOT_ALLOWED")
  ERROR_STORING_IMAGE = ImageErrorReason.new("ERROR_STORING_IMAGE")
  FILE_TOO_LARGE = ImageErrorReason.new("FILE_TOO_LARGE")
  FLASH_BAD_GETURL_TARGET = ImageErrorReason.new("FLASH_BAD_GETURL_TARGET")
  FLASH_ERROR = ImageErrorReason.new("FLASH_ERROR")
  FLASH_HAS_MOUSE_TRACKING = ImageErrorReason.new("FLASH_HAS_MOUSE_TRACKING")
  FLASH_HAS_NETWORK_METHODS = ImageErrorReason.new("FLASH_HAS_NETWORK_METHODS")
  FLASH_HAS_NETWORK_OBJECTS = ImageErrorReason.new("FLASH_HAS_NETWORK_OBJECTS")
  FLASH_HAS_RANDOM_NUM = ImageErrorReason.new("FLASH_HAS_RANDOM_NUM")
  FLASH_HAS_URL = ImageErrorReason.new("FLASH_HAS_URL")
  FLASH_NOT_ALLOWED = ImageErrorReason.new("FLASH_NOT_ALLOWED")
  FLASH_SELF_TARGETS = ImageErrorReason.new("FLASH_SELF_TARGETS")
  FLASH_VERSION_NOT_SUPPORTED = ImageErrorReason.new("FLASH_VERSION_NOT_SUPPORTED")
  FLASH_WITHOUT_CLICKTAG = ImageErrorReason.new("FLASH_WITHOUT_CLICKTAG")
  IMAGE_DATA_TOO_LARGE = ImageErrorReason.new("IMAGE_DATA_TOO_LARGE")
  IMAGE_PROCESSING_ERROR = ImageErrorReason.new("IMAGE_PROCESSING_ERROR")
  IMAGE_TOO_SMALL = ImageErrorReason.new("IMAGE_TOO_SMALL")
  INVALID_IMAGE = ImageErrorReason.new("INVALID_IMAGE")
  INVALID_INPUT = ImageErrorReason.new("INVALID_INPUT")
  LAYOUT_PROBLEM = ImageErrorReason.new("LAYOUT_PROBLEM")
  PROBLEM_READING_FILE = ImageErrorReason.new("PROBLEM_READING_FILE")
  PROBLEM_READING_IMAGE_FILE = ImageErrorReason.new("PROBLEM_READING_IMAGE_FILE")
  SERVER_ERROR = ImageErrorReason.new("SERVER_ERROR")
  STORAGE_ERROR = ImageErrorReason.new("STORAGE_ERROR")
  UNEXPECTED_SIZE = ImageErrorReason.new("UNEXPECTED_SIZE")
end

# {https://adwords.google.com/api/adwords/cm/v200902}MarkupLanguageType
class MarkupLanguageType < ::String
  CHTML = MarkupLanguageType.new("CHTML")
  HTML = MarkupLanguageType.new("HTML")
  WML = MarkupLanguageType.new("WML")
  XHTML = MarkupLanguageType.new("XHTML")
end

# {https://adwords.google.com/api/adwords/cm/v200902}Media.MediaSubType
class MediaMediaSubType < ::String
  ADS_DB_STORED = MediaMediaSubType.new("ADS_DB_STORED")
  AMS_STORED = MediaMediaSubType.new("AMS_STORED")
  GOOGLE_HOSTED = MediaMediaSubType.new("GOOGLE_HOSTED")
  IRS_STORED = MediaMediaSubType.new("IRS_STORED")
  YOU_TUBE_HOSTED = MediaMediaSubType.new("YOU_TUBE_HOSTED")
end

# {https://adwords.google.com/api/adwords/cm/v200902}Media.MediaType
class MediaMediaType < ::String
  AUDIO = MediaMediaType.new("AUDIO")
  DYNAMIC_IMAGE = MediaMediaType.new("DYNAMIC_IMAGE")
  GEO_IMAGE = MediaMediaType.new("GEO_IMAGE")
  HTML = MediaMediaType.new("HTML")
  ICON = MediaMediaType.new("ICON")
  IMAGE = MediaMediaType.new("IMAGE")
  VIDEO = MediaMediaType.new("VIDEO")
  VIDEO_IMAGE = MediaMediaType.new("VIDEO_IMAGE")
end

# {https://adwords.google.com/api/adwords/cm/v200902}Media.MimeType
class MediaMimeType < ::String
  AUDIO_MP3 = MediaMimeType.new("AUDIO_MP3")
  AUDIO_WAV = MediaMimeType.new("AUDIO_WAV")
  FLASH = MediaMimeType.new("FLASH")
  IMAGE_GIF = MediaMimeType.new("IMAGE_GIF")
  IMAGE_JPEG = MediaMimeType.new("IMAGE_JPEG")
  IMAGE_PNG = MediaMimeType.new("IMAGE_PNG")
  MSEXCEL = MediaMimeType.new("MSEXCEL")
  MSWORD = MediaMimeType.new("MSWORD")
  PDF = MediaMimeType.new("PDF")
  RTF = MediaMimeType.new("RTF")
  TEXT_HTML = MediaMimeType.new("TEXT_HTML")
end

# {https://adwords.google.com/api/adwords/cm/v200902}Media.Size
class MediaSize < ::String
  FULL = MediaSize.new("FULL")
  PREVIEW = MediaSize.new("PREVIEW")
  SHRUNKEN = MediaSize.new("SHRUNKEN")
  VIDEO_THUMBNAIL = MediaSize.new("VIDEO_THUMBNAIL")
end

# {https://adwords.google.com/api/adwords/cm/v200902}MediaError.Reason
class MediaErrorReason < ::String
  DUPLICATE_MEDIA = MediaErrorReason.new("DUPLICATE_MEDIA")
  EMPTY_FIELD = MediaErrorReason.new("EMPTY_FIELD")
  ENTITY_REFERENCED_IN_MULTIPLE_OPS = MediaErrorReason.new("ENTITY_REFERENCED_IN_MULTIPLE_OPS")
  INVALID_REFERENCE_ID = MediaErrorReason.new("INVALID_REFERENCE_ID")
  TOO_LONG = MediaErrorReason.new("TOO_LONG")
  UNSUPPORTED_OPERATION = MediaErrorReason.new("UNSUPPORTED_OPERATION")
  UNSUPPORTED_TYPE = MediaErrorReason.new("UNSUPPORTED_TYPE")
end

# {https://adwords.google.com/api/adwords/cm/v200902}MinuteOfHour
class MinuteOfHour < ::String
  FIFTEEN = MinuteOfHour.new("FIFTEEN")
  FORTY_FIVE = MinuteOfHour.new("FORTY_FIVE")
  THIRTY = MinuteOfHour.new("THIRTY")
  ZERO = MinuteOfHour.new("ZERO")
end

# {https://adwords.google.com/api/adwords/cm/v200902}NetworkCoverageType
class NetworkCoverageType < ::String
  CONTENT_CONTEXTUAL = NetworkCoverageType.new("CONTENT_CONTEXTUAL")
  CONTENT_NETWORK = NetworkCoverageType.new("CONTENT_NETWORK")
  CPA_REFERRAL = NetworkCoverageType.new("CPA_REFERRAL")
  GOOGLE_SEARCH = NetworkCoverageType.new("GOOGLE_SEARCH")
  SEARCH_NETWORK = NetworkCoverageType.new("SEARCH_NETWORK")
end

# {https://adwords.google.com/api/adwords/cm/v200902}NewEntityCreationError.Reason
class NewEntityCreationErrorReason < ::String
  CANNOT_SET_ID_FOR_ADD = NewEntityCreationErrorReason.new("CANNOT_SET_ID_FOR_ADD")
end

# {https://adwords.google.com/api/adwords/cm/v200902}NotEmptyError.Reason
class NotEmptyErrorReason < ::String
  EMPTY_LIST = NotEmptyErrorReason.new("EMPTY_LIST")
end

# {https://adwords.google.com/api/adwords/cm/v200902}NotWhitelistedError.Reason
class NotWhitelistedErrorReason < ::String
  CUSTOMER_NOT_WHITELISTED_FOR_API = NotWhitelistedErrorReason.new("CUSTOMER_NOT_WHITELISTED_FOR_API")
end

# {https://adwords.google.com/api/adwords/cm/v200902}NullError.Reason
class NullErrorReason < ::String
  NULL_CONTENT = NullErrorReason.new("NULL_CONTENT")
end

# {https://adwords.google.com/api/adwords/cm/v200902}OperationAccessDenied.Reason
class OperationAccessDeniedReason < ::String
  ACTION_NOT_PERMITTED = OperationAccessDeniedReason.new("ACTION_NOT_PERMITTED")
  ADD_OPERATION_NOT_PERMITTED = OperationAccessDeniedReason.new("ADD_OPERATION_NOT_PERMITTED")
  REMOVE_OPERATION_NOT_PERMITTED = OperationAccessDeniedReason.new("REMOVE_OPERATION_NOT_PERMITTED")
  SET_OPERATION_NOT_PERMITTED = OperationAccessDeniedReason.new("SET_OPERATION_NOT_PERMITTED")
end

# {https://adwords.google.com/api/adwords/cm/v200902}Operator
class Operator < ::String
  ADD = Operator.new("ADD")
  REMOVE = Operator.new("REMOVE")
  SET = Operator.new("SET")
end

# {https://adwords.google.com/api/adwords/cm/v200902}PlatformType
class PlatformType < ::String
  DESKTOP = PlatformType.new("DESKTOP")
  HIGH_END_MOBILE = PlatformType.new("HIGH_END_MOBILE")
end

# {https://adwords.google.com/api/adwords/cm/v200902}ProximityTarget.DistanceUnits
class ProximityTargetDistanceUnits < ::String
  KILOMETERS = ProximityTargetDistanceUnits.new("KILOMETERS")
  MILES = ProximityTargetDistanceUnits.new("MILES")
end

# {https://adwords.google.com/api/adwords/cm/v200902}ReadOnlyError.Reason
class ReadOnlyErrorReason < ::String
  READ_ONLY = ReadOnlyErrorReason.new("READ_ONLY")
end

# {https://adwords.google.com/api/adwords/cm/v200902}RequiredError.Reason
class RequiredErrorReason < ::String
  REQUIRED = RequiredErrorReason.new("REQUIRED")
end

# {https://adwords.google.com/api/adwords/cm/v200902}Stats.Network
class StatsNetwork < ::String
  ALL = StatsNetwork.new("ALL")
  CONTENT = StatsNetwork.new("CONTENT")
  CONTENT_KEYWORD_BID = StatsNetwork.new("CONTENT_KEYWORD_BID")
  CONTENT_PLACEMENT_BID = StatsNetwork.new("CONTENT_PLACEMENT_BID")
  GOOGLE_SEARCH = StatsNetwork.new("GOOGLE_SEARCH")
  SEARCH = StatsNetwork.new("SEARCH")
  SEARCH_NETWORK = StatsNetwork.new("SEARCH_NETWORK")
end

# {https://adwords.google.com/api/adwords/cm/v200902}StatsQueryError.Reason
class StatsQueryErrorReason < ::String
  DATE_NOT_IN_VALID_RANGE = StatsQueryErrorReason.new("DATE_NOT_IN_VALID_RANGE")
end

# {https://adwords.google.com/api/adwords/cm/v200902}get
#   selector - AdWords::V200902::AdGroupAdService::AdGroupAdSelector
class Get
  attr_accessor :selector

  def initialize(selector = nil)
    @selector = selector
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}getResponse
#   rval - AdWords::V200902::AdGroupAdService::AdGroupAdPage
class GetResponse
  attr_accessor :rval

  def initialize(rval = nil)
    @rval = rval
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}mutate
class Mutate < ::Array
end

# {https://adwords.google.com/api/adwords/cm/v200902}mutateResponse
#   rval - AdWords::V200902::AdGroupAdService::AdGroupAdReturnValue
class MutateResponse
  attr_accessor :rval

  def initialize(rval = nil)
    @rval = rval
  end
end


end; end; end
