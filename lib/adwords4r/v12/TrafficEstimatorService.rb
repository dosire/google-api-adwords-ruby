require 'xsd/qname'

module AdWords; module TrafficEstimatorService


# {https://adwords.google.com/api/adwords/v12}AdGroupEstimate
#   id - SOAP::SOAPInt
#   keywordEstimates - AdWords::TrafficEstimatorService::KeywordEstimate
class AdGroupEstimate
  attr_accessor :id
  attr_accessor :keywordEstimates

  def initialize(id = nil, keywordEstimates = [])
    @id = id
    @keywordEstimates = keywordEstimates
  end
end

# {https://adwords.google.com/api/adwords/v12}AdGroupRequest
#   id - SOAP::SOAPInt
#   keywordRequests - AdWords::TrafficEstimatorService::KeywordRequest
#   maxCpc - SOAP::SOAPLong
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
#   errors - AdWords::TrafficEstimatorService::ApiError
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

# {https://adwords.google.com/api/adwords/v12}CampaignEstimate
#   adGroupEstimates - AdWords::TrafficEstimatorService::AdGroupEstimate
#   id - SOAP::SOAPInt
class CampaignEstimate
  attr_accessor :adGroupEstimates
  attr_accessor :id

  def initialize(adGroupEstimates = [], id = nil)
    @adGroupEstimates = adGroupEstimates
    @id = id
  end
end

# {https://adwords.google.com/api/adwords/v12}CampaignRequest
#   adGroupRequests - AdWords::TrafficEstimatorService::AdGroupRequest
#   geoTargeting - AdWords::TrafficEstimatorService::GeoTarget
#   id - SOAP::SOAPInt
#   languageTargeting - AdWords::TrafficEstimatorService::LanguageTarget
#   networkTargeting - AdWords::TrafficEstimatorService::NetworkTarget
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
#   cityTargets - AdWords::TrafficEstimatorService::CityTargets
#   countryTargets - AdWords::TrafficEstimatorService::CountryTargets
#   metroTargets - AdWords::TrafficEstimatorService::MetroTargets
#   proximityTargets - AdWords::TrafficEstimatorService::ProximityTargets
#   regionTargets - AdWords::TrafficEstimatorService::RegionTargets
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

# {https://adwords.google.com/api/adwords/v12}KeywordEstimate
#   id - SOAP::SOAPLong
#   lowerAvgPosition - SOAP::SOAPFloat
#   lowerClicksPerDay - SOAP::SOAPFloat
#   lowerCpc - SOAP::SOAPLong
#   upperAvgPosition - SOAP::SOAPFloat
#   upperClicksPerDay - SOAP::SOAPFloat
#   upperCpc - SOAP::SOAPLong
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

# {https://adwords.google.com/api/adwords/v12}KeywordRequest
#   id - SOAP::SOAPLong
#   maxCpc - SOAP::SOAPLong
#   negative - SOAP::SOAPBoolean
#   text - SOAP::SOAPString
#   type - AdWords::TrafficEstimatorService::KeywordType
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

# {https://adwords.google.com/api/adwords/v12}KeywordTrafficRequest
#   keywordText - SOAP::SOAPString
#   keywordType - AdWords::TrafficEstimatorService::KeywordType
#   language - SOAP::SOAPString
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

# {https://adwords.google.com/api/adwords/v12}LanguageTarget
class LanguageTarget < ::Array
end

# {https://adwords.google.com/api/adwords/v12}MetroTargets
class MetroTargets < ::Array
end

# {https://adwords.google.com/api/adwords/v12}NetworkTarget
class NetworkTarget < ::Array
end

# {https://adwords.google.com/api/adwords/v12}ProximityTargets
class ProximityTargets < ::Array
end

# {https://adwords.google.com/api/adwords/v12}RegionTargets
class RegionTargets < ::Array
end

# {https://adwords.google.com/api/adwords/v12}KeywordTraffic
class KeywordTraffic < ::String
  HasTraffic = KeywordTraffic.new("HasTraffic")
  Unknown = KeywordTraffic.new("Unknown")
  VeryLowTraffic = KeywordTraffic.new("VeryLowTraffic")
end

# {https://adwords.google.com/api/adwords/v12}KeywordType
class KeywordType < ::String
  Broad = KeywordType.new("Broad")
  Exact = KeywordType.new("Exact")
  Phrase = KeywordType.new("Phrase")
end

# {https://adwords.google.com/api/adwords/v12}NetworkType
class NetworkType < ::String
  ContentNetwork = NetworkType.new("ContentNetwork")
  GoogleSearch = NetworkType.new("GoogleSearch")
  SearchNetwork = NetworkType.new("SearchNetwork")
end

# {https://adwords.google.com/api/adwords/v12}checkKeywordTraffic
class CheckKeywordTraffic < ::Array
end

# {https://adwords.google.com/api/adwords/v12}checkKeywordTrafficResponse
class CheckKeywordTrafficResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v12}estimateAdGroupList
class EstimateAdGroupList < ::Array
end

# {https://adwords.google.com/api/adwords/v12}estimateAdGroupListResponse
class EstimateAdGroupListResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v12}estimateCampaignList
class EstimateCampaignList < ::Array
end

# {https://adwords.google.com/api/adwords/v12}estimateCampaignListResponse
class EstimateCampaignListResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v12}estimateKeywordList
class EstimateKeywordList < ::Array
end

# {https://adwords.google.com/api/adwords/v12}estimateKeywordListResponse
class EstimateKeywordListResponse < ::Array
end


end; end
