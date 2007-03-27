module AdWords
require 'xsd/qname'

# {https://adwords.google.com/api/adwords/v8}estimateAdGroupList
class EstimateAdGroupList
  @@schema_type = "estimateAdGroupList"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["adGroupRequests", "AdGroupRequest[]"]]

  attr_accessor :adGroupRequests

  def initialize(adGroupRequests = [])
    @adGroupRequests = adGroupRequests
  end
end

# {https://adwords.google.com/api/adwords/v8}estimateAdGroupListResponse
class EstimateAdGroupListResponse
  @@schema_type = "estimateAdGroupListResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["estimateAdGroupListReturn", "AdGroupEstimate[]"]]

  attr_accessor :estimateAdGroupListReturn

  def initialize(estimateAdGroupListReturn = [])
    @estimateAdGroupListReturn = estimateAdGroupListReturn
  end
end

# {https://adwords.google.com/api/adwords/v8}estimateCampaignList
class EstimateCampaignList
  @@schema_type = "estimateCampaignList"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["campaignRequests", "CampaignRequest[]"]]

  attr_accessor :campaignRequests

  def initialize(campaignRequests = [])
    @campaignRequests = campaignRequests
  end
end

# {https://adwords.google.com/api/adwords/v8}estimateCampaignListResponse
class EstimateCampaignListResponse
  @@schema_type = "estimateCampaignListResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["estimateCampaignListReturn", "CampaignEstimate[]"]]

  attr_accessor :estimateCampaignListReturn

  def initialize(estimateCampaignListReturn = [])
    @estimateCampaignListReturn = estimateCampaignListReturn
  end
end

# {https://adwords.google.com/api/adwords/v8}estimateKeywordList
class EstimateKeywordList
  @@schema_type = "estimateKeywordList"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["keywordRequests", "KeywordRequest[]"]]

  attr_accessor :keywordRequests

  def initialize(keywordRequests = [])
    @keywordRequests = keywordRequests
  end
end

# {https://adwords.google.com/api/adwords/v8}estimateKeywordListResponse
class EstimateKeywordListResponse
  @@schema_type = "estimateKeywordListResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["estimateKeywordListReturn", "KeywordEstimate[]"]]

  attr_accessor :estimateKeywordListReturn

  def initialize(estimateKeywordListReturn = [])
    @estimateKeywordListReturn = estimateKeywordListReturn
  end
end

# {https://adwords.google.com/api/adwords/v8}AdGroupEstimate
class AdGroupEstimate
  @@schema_type = "AdGroupEstimate"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = [["id", "SOAP::SOAPInt"], ["keywordEstimates", "KeywordEstimate[]"]]

  attr_accessor :id
  attr_accessor :keywordEstimates

  def initialize(id = nil, keywordEstimates = [])
    @id = id
    @keywordEstimates = keywordEstimates
  end
end

# {https://adwords.google.com/api/adwords/v8}AdGroupRequest
class AdGroupRequest
  @@schema_type = "AdGroupRequest"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = [["id", "SOAP::SOAPInt"], ["keywordRequests", "KeywordRequest[]"], ["maxCpc", "SOAP::SOAPLong"]]

  attr_accessor :id
  attr_accessor :keywordRequests
  attr_accessor :maxCpc

  def initialize(id = nil, keywordRequests = [], maxCpc = nil)
    @id = id
    @keywordRequests = keywordRequests
    @maxCpc = maxCpc
  end
end

# {https://adwords.google.com/api/adwords/v8}ApiError
class ApiError
  @@schema_type = "ApiError"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
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

# {https://adwords.google.com/api/adwords/v8}ApiException
class ApiException
  @@schema_type = "ApiException"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
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

# {https://adwords.google.com/api/adwords/v8}CampaignEstimate
class CampaignEstimate
  @@schema_type = "CampaignEstimate"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = [["adGroupEstimates", "AdGroupEstimate[]"], ["id", "SOAP::SOAPInt"]]

  attr_accessor :adGroupEstimates
  attr_accessor :id

  def initialize(adGroupEstimates = [], id = nil)
    @adGroupEstimates = adGroupEstimates
    @id = id
  end
end

# {https://adwords.google.com/api/adwords/v8}CampaignRequest
class CampaignRequest
  @@schema_type = "CampaignRequest"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = [["adGroupRequests", "AdGroupRequest[]"], ["geoTargeting", "GeoTarget"], ["id", "SOAP::SOAPInt"], ["languageTargeting", "LanguageTarget"], ["networkTargeting", "NetworkTarget"]]

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

# {https://adwords.google.com/api/adwords/v8}GeoTarget
class GeoTarget
  @@schema_type = "GeoTarget"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
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

# {https://adwords.google.com/api/adwords/v8}KeywordEstimate
class KeywordEstimate
  @@schema_type = "KeywordEstimate"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = [["id", "SOAP::SOAPLong"], ["lowerAvgPosition", "SOAP::SOAPFloat"], ["lowerClicksPerDay", "SOAP::SOAPFloat"], ["lowerCpc", "SOAP::SOAPLong"], ["upperAvgPosition", "SOAP::SOAPFloat"], ["upperClicksPerDay", "SOAP::SOAPFloat"], ["upperCpc", "SOAP::SOAPLong"]]

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

# {https://adwords.google.com/api/adwords/v8}KeywordRequest
class KeywordRequest
  @@schema_type = "KeywordRequest"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = [["id", "SOAP::SOAPLong"], ["maxCpc", "SOAP::SOAPLong"], ["negative", "SOAP::SOAPBoolean"], ["text", "SOAP::SOAPString"], ["type", "SOAP::SOAPString"]]

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

# {https://adwords.google.com/api/adwords/v8}LanguageTarget
class LanguageTarget < ::Array
  @@schema_type = "string"
  @@schema_ns = "http://www.w3.org/2001/XMLSchema"
  @@schema_element = [["languages", ["SOAP::SOAPString[]", XSD::QName.new("https://adwords.google.com/api/adwords/v8", "languages")]]]
end

# {https://adwords.google.com/api/adwords/v8}NetworkTarget
class NetworkTarget < ::Array
  @@schema_type = "NetworkType"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = [["networkTypes", ["SOAP::SOAPString[]", XSD::QName.new("https://adwords.google.com/api/adwords/v8", "networkTypes")]]]
end

# {https://adwords.google.com/api/adwords/v8}KeywordType
module KeywordType
  Broad = "Broad"
  Exact = "Exact"
  Phrase = "Phrase"
end

# {https://adwords.google.com/api/adwords/v8}NetworkType
module NetworkType
  ContentNetwork = "ContentNetwork"
  GoogleSearch = "GoogleSearch"
  SearchNetwork = "SearchNetwork"
end
end
