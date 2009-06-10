require 'xsd/qname'

module AdWords; module V13; module TrafficEstimatorService


# AdGroupEstimate
# - id - SOAP::SOAPInt
# - keywordEstimates - AdWords::V13::TrafficEstimatorService::KeywordEstimate
class AdGroupEstimate
  attr_accessor :id
  attr_accessor :keywordEstimates

  def initialize(id = nil, keywordEstimates = [])
    @id = id
    @keywordEstimates = keywordEstimates
  end
end

# AdGroupRequest
# - id - SOAP::SOAPLong
# - keywordRequests - AdWords::V13::TrafficEstimatorService::KeywordRequest
# - maxCpc - SOAP::SOAPLong
class AdGroupRequest
  attr_accessor :id
  attr_accessor :keywordRequests
  attr_accessor :maxCpc

  def initialize(id = nil, keywordRequests = [], maxCpc = nil)
    @id = id
    @keywordRequests = keywordRequests
    @maxCpc = maxCpc
  end
end

# ApiError
# - code - SOAP::SOAPInt
# - detail - SOAP::SOAPString
# - field - SOAP::SOAPString
# - index - SOAP::SOAPInt
# - isExemptable - SOAP::SOAPBoolean
# - textIndex - SOAP::SOAPInt
# - textLength - SOAP::SOAPInt
# - trigger - SOAP::SOAPString
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

# ApiException
# - code - SOAP::SOAPInt
# - errors - AdWords::V13::TrafficEstimatorService::ApiError
# - internal - SOAP::SOAPBoolean
# - message - SOAP::SOAPString
# - trigger - SOAP::SOAPString
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

# CampaignEstimate
# - adGroupEstimates - AdWords::V13::TrafficEstimatorService::AdGroupEstimate
# - id - SOAP::SOAPInt
class CampaignEstimate
  attr_accessor :adGroupEstimates
  attr_accessor :id

  def initialize(adGroupEstimates = [], id = nil)
    @adGroupEstimates = adGroupEstimates
    @id = id
  end
end

# CampaignRequest
# - adGroupRequests - AdWords::V13::TrafficEstimatorService::AdGroupRequest
# - geoTargeting - AdWords::V13::TrafficEstimatorService::GeoTarget
# - id - SOAP::SOAPInt
# - languageTargeting - AdWords::V13::TrafficEstimatorService::LanguageTarget
# - networkTargeting - AdWords::V13::TrafficEstimatorService::NetworkTarget
class CampaignRequest
  attr_accessor :adGroupRequests
  attr_accessor :geoTargeting
  attr_accessor :id
  attr_accessor :languageTargeting
  attr_accessor :networkTargeting

  def initialize(adGroupRequests = [], geoTargeting = nil, id = nil, languageTargeting = nil, networkTargeting = nil)
    @adGroupRequests = adGroupRequests
    @geoTargeting = geoTargeting
    @id = id
    @languageTargeting = languageTargeting
    @networkTargeting = networkTargeting
  end
end

# Circle
# - latitudeMicroDegrees - SOAP::SOAPInt
# - longitudeMicroDegrees - SOAP::SOAPInt
# - radiusMeters - SOAP::SOAPInt
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

# CityTargets
# - cities - SOAP::SOAPString
# - excludedCities - SOAP::SOAPString
class CityTargets
  attr_accessor :cities
  attr_accessor :excludedCities

  def initialize(cities = [], excludedCities = [])
    @cities = cities
    @excludedCities = excludedCities
  end
end

# CountryTargets
# - countries - SOAP::SOAPString
# - excludedCountries - SOAP::SOAPString
class CountryTargets
  attr_accessor :countries
  attr_accessor :excludedCountries

  def initialize(countries = [], excludedCountries = [])
    @countries = countries
    @excludedCountries = excludedCountries
  end
end

# GeoTarget
# - cityTargets - AdWords::V13::TrafficEstimatorService::CityTargets
# - countryTargets - AdWords::V13::TrafficEstimatorService::CountryTargets
# - metroTargets - AdWords::V13::TrafficEstimatorService::MetroTargets
# - proximityTargets - AdWords::V13::TrafficEstimatorService::ProximityTargets
# - regionTargets - AdWords::V13::TrafficEstimatorService::RegionTargets
# - targetAll - SOAP::SOAPBoolean
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

# KeywordEstimate
# - id - SOAP::SOAPLong
# - lowerAvgPosition - SOAP::SOAPFloat
# - lowerClicksPerDay - SOAP::SOAPFloat
# - lowerCpc - SOAP::SOAPLong
# - upperAvgPosition - SOAP::SOAPFloat
# - upperClicksPerDay - SOAP::SOAPFloat
# - upperCpc - SOAP::SOAPLong
class KeywordEstimate
  attr_accessor :id
  attr_accessor :lowerAvgPosition
  attr_accessor :lowerClicksPerDay
  attr_accessor :lowerCpc
  attr_accessor :upperAvgPosition
  attr_accessor :upperClicksPerDay
  attr_accessor :upperCpc

  def initialize(id = nil, lowerAvgPosition = nil, lowerClicksPerDay = nil, lowerCpc = nil, upperAvgPosition = nil, upperClicksPerDay = nil, upperCpc = nil)
    @id = id
    @lowerAvgPosition = lowerAvgPosition
    @lowerClicksPerDay = lowerClicksPerDay
    @lowerCpc = lowerCpc
    @upperAvgPosition = upperAvgPosition
    @upperClicksPerDay = upperClicksPerDay
    @upperCpc = upperCpc
  end
end

# KeywordRequest
# - id - SOAP::SOAPLong
# - maxCpc - SOAP::SOAPLong
# - negative - SOAP::SOAPBoolean
# - text - SOAP::SOAPString
# - type - AdWords::V13::TrafficEstimatorService::KeywordType
class KeywordRequest
  attr_accessor :id
  attr_accessor :maxCpc
  attr_accessor :negative
  attr_accessor :text
  attr_accessor :type

  def initialize(id = nil, maxCpc = nil, negative = nil, text = nil, type = nil)
    @id = id
    @maxCpc = maxCpc
    @negative = negative
    @text = text
    @type = type
  end
end

# KeywordTrafficRequest
# - keywordText - SOAP::SOAPString
# - keywordType - AdWords::V13::TrafficEstimatorService::KeywordType
# - language - SOAP::SOAPString
class KeywordTrafficRequest
  attr_accessor :keywordText
  attr_accessor :keywordType
  attr_accessor :language

  def initialize(keywordText = nil, keywordType = nil, language = nil)
    @keywordText = keywordText
    @keywordType = keywordType
    @language = language
  end
end

# LanguageTarget
class LanguageTarget < ::Array
end

# MetroTargets
# - excludedMetros - SOAP::SOAPString
# - metros - SOAP::SOAPString
class MetroTargets
  attr_accessor :excludedMetros
  attr_accessor :metros

  def initialize(excludedMetros = [], metros = [])
    @excludedMetros = excludedMetros
    @metros = metros
  end
end

# NetworkTarget
class NetworkTarget < ::Array
end

# ProximityTargets
class ProximityTargets < ::Array
end

# RegionTargets
# - excludedRegions - SOAP::SOAPString
# - regions - SOAP::SOAPString
class RegionTargets
  attr_accessor :excludedRegions
  attr_accessor :regions

  def initialize(excludedRegions = [], regions = [])
    @excludedRegions = excludedRegions
    @regions = regions
  end
end

# KeywordTraffic
class KeywordTraffic < ::String
  HasTraffic = KeywordTraffic.new("HasTraffic")
  Unknown = KeywordTraffic.new("Unknown")
  VeryLowTraffic = KeywordTraffic.new("VeryLowTraffic")
end

# KeywordType
class KeywordType < ::String
  Broad = KeywordType.new("Broad")
  Exact = KeywordType.new("Exact")
  Phrase = KeywordType.new("Phrase")
end

# NetworkType
class NetworkType < ::String
  ContentNetwork = NetworkType.new("ContentNetwork")
  GoogleSearch = NetworkType.new("GoogleSearch")
  SearchNetwork = NetworkType.new("SearchNetwork")
end

# checkKeywordTraffic
class CheckKeywordTraffic < ::Array #:nodoc: all
end

# checkKeywordTrafficResponse
class CheckKeywordTrafficResponse < ::Array #:nodoc: all
end

# estimateAdGroupList
class EstimateAdGroupList < ::Array #:nodoc: all
end

# estimateAdGroupListResponse
class EstimateAdGroupListResponse < ::Array #:nodoc: all
end

# estimateCampaignList
class EstimateCampaignList < ::Array #:nodoc: all
end

# estimateCampaignListResponse
class EstimateCampaignListResponse < ::Array #:nodoc: all
end

# estimateKeywordList
class EstimateKeywordList < ::Array #:nodoc: all
end

# estimateKeywordListResponse
class EstimateKeywordListResponse < ::Array #:nodoc: all
end


end; end; end
