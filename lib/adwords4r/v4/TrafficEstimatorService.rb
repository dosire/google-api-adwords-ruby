module AdWords
require 'xsd/qname'

# {https://adwords.google.com/api/adwords/v4}estimateCampaignList
class EstimateCampaignList < ::Array
  @@schema_element = [
    ["campaignRequests", ["CampaignRequest[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "campaignRequests")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}estimateCampaignListResponse
class EstimateCampaignListResponse < ::Array
  @@schema_element = [
    ["estimateCampaignListReturn", ["CampaignEstimate[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "estimateCampaignListReturn")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}estimateAdGroupList
class EstimateAdGroupList < ::Array
  @@schema_element = [
    ["adGroupRequests", ["AdGroupRequest[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "adGroupRequests")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}estimateAdGroupListResponse
class EstimateAdGroupListResponse < ::Array
  @@schema_element = [
    ["estimateAdGroupListReturn", ["AdGroupEstimate[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "estimateAdGroupListReturn")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}estimateKeywordList
class EstimateKeywordList < ::Array
  @@schema_element = [
    ["keywordRequests", ["KeywordRequest[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "keywordRequests")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}estimateKeywordListResponse
class EstimateKeywordListResponse < ::Array
  @@schema_element = [
    ["estimateKeywordListReturn", ["KeywordEstimate[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "estimateKeywordListReturn")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}ApiException
class ApiException
  @@schema_type = "ApiException"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["code", "SOAP::SOAPInt"],
    ["internal", "SOAP::SOAPBoolean"],
    ["message", "SOAP::SOAPString"],
    ["trigger", "SOAP::SOAPString"],
    ["violations", "SOAP::SOAPString"]
  ]

  attr_accessor :code
  attr_accessor :internal
  attr_accessor :message
  attr_accessor :trigger
  attr_accessor :violations

  def initialize(code = nil, internal = nil, message = nil, trigger = nil, violations = nil)
    @code = code
    @internal = internal
    @message = message
    @trigger = trigger
    @violations = violations
  end
end

# {https://adwords.google.com/api/adwords/v4}CampaignRequest
class CampaignRequest
  @@schema_type = "CampaignRequest"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["adGroupRequests", "AdGroupRequest[]"],
    ["geoTargeting", "GeoTarget"],
    ["id", "SOAP::SOAPInt"],
    ["languageTargeting", "LanguageTarget"],
    ["networkTargeting", "NetworkTarget"]
  ]

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

# {https://adwords.google.com/api/adwords/v4}AdGroupRequest
class AdGroupRequest
  @@schema_type = "AdGroupRequest"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["id", "SOAP::SOAPInt"],
    ["keywordRequests", "KeywordRequest[]"],
    ["maxCpc", "SOAP::SOAPLong"]
  ]

  attr_accessor :id
  attr_accessor :keywordRequests
  attr_accessor :maxCpc

  def initialize(id = nil, keywordRequests = [], maxCpc = nil)
    @id = id
    @keywordRequests = keywordRequests
    @maxCpc = maxCpc
  end
end

# {https://adwords.google.com/api/adwords/v4}KeywordRequest
class KeywordRequest
  @@schema_type = "KeywordRequest"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["id", "SOAP::SOAPLong"],
    ["maxCpc", "SOAP::SOAPLong"],
    ["negative", "SOAP::SOAPBoolean"],
    ["text", "SOAP::SOAPString"],
    ["type", "SOAP::SOAPString"]
  ]

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

# {https://adwords.google.com/api/adwords/v4}GeoTarget
class GeoTarget
  @@schema_type = "GeoTarget"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["cities", "SOAP::SOAPString[]"],
    ["countries", "SOAP::SOAPString[]"],
    ["metros", "SOAP::SOAPString[]"],
    ["regions", "SOAP::SOAPString[]"]
  ]

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

# {https://adwords.google.com/api/adwords/v4}LanguageTarget
class LanguageTarget < ::Array
  @@schema_element = [
    ["languages", ["SOAP::SOAPString[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "languages")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}NetworkTarget
class NetworkTarget < ::Array
  @@schema_element = [
    ["networkTypes", ["SOAP::SOAPString[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "networkTypes")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}CampaignEstimate
class CampaignEstimate
  @@schema_type = "CampaignEstimate"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["adGroupEstimates", "AdGroupEstimate[]"],
    ["id", "SOAP::SOAPInt"]
  ]

  attr_accessor :adGroupEstimates
  attr_accessor :id

  def initialize(adGroupEstimates = [], id = nil)
    @adGroupEstimates = adGroupEstimates
    @id = id
  end
end

# {https://adwords.google.com/api/adwords/v4}AdGroupEstimate
class AdGroupEstimate
  @@schema_type = "AdGroupEstimate"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["id", "SOAP::SOAPInt"],
    ["keywordEstimates", "KeywordEstimate[]"]
  ]

  attr_accessor :id
  attr_accessor :keywordEstimates

  def initialize(id = nil, keywordEstimates = [])
    @id = id
    @keywordEstimates = keywordEstimates
  end
end

# {https://adwords.google.com/api/adwords/v4}KeywordEstimate
class KeywordEstimate
  @@schema_type = "KeywordEstimate"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["lowerAvgPosition", "Float"],
    ["upperAvgPosition", "Float"],
    ["lowerClicksPerDay", "Float"],
    ["upperClicksPerDay", "Float"],
    ["lowerCpc", "SOAP::SOAPLong"],
    ["upperCpc", "SOAP::SOAPLong"],
    ["id", "SOAP::SOAPLong"]
  ]

  attr_accessor :lowerAvgPosition
  attr_accessor :upperAvgPosition
  attr_accessor :lowerClicksPerDay
  attr_accessor :upperClicksPerDay
  attr_accessor :lowerCpc
  attr_accessor :upperCpc
  attr_accessor :id

  def initialize(lowerAvgPosition = nil, upperAvgPosition = nil, lowerClicksPerDay = nil, upperClicksPerDay = nil, lowerCpc = nil, upperCpc = nil, id = nil)
    @lowerAvgPosition = lowerAvgPosition
    @upperAvgPosition = upperAvgPosition
    @lowerClicksPerDay = lowerClicksPerDay
    @upperClicksPerDay = upperClicksPerDay
    @lowerCpc = lowerCpc
    @upperCpc = upperCpc
    @id = id
  end
end

# {https://adwords.google.com/api/adwords/v4}NetworkType
class NetworkType < ::String
  @@schema_type = "NetworkType"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"

  ContentNetwork = NetworkType.new("ContentNetwork")
  GoogleSearch = NetworkType.new("GoogleSearch")
  SearchNetwork = NetworkType.new("SearchNetwork")
end

# {https://adwords.google.com/api/adwords/v4}KeywordType
class KeywordType < ::String
  @@schema_type = "KeywordType"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"

  Broad = KeywordType.new("Broad")
  Exact = KeywordType.new("Exact")
  Phrase = KeywordType.new("Phrase")
end
end
