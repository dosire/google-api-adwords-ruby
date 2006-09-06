module AdWords
require 'xsd/qname'

# {https://adwords.google.com/api/adwords/v4}getCampaign
class GetCampaign
  @@schema_type = "getCampaign"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["id", "SOAP::SOAPInt"]
  ]

  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {https://adwords.google.com/api/adwords/v4}getCampaignResponse
class GetCampaignResponse
  @@schema_type = "getCampaignResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getCampaignReturn", "Campaign"]
  ]

  attr_accessor :getCampaignReturn

  def initialize(getCampaignReturn = nil)
    @getCampaignReturn = getCampaignReturn
  end
end

# {https://adwords.google.com/api/adwords/v4}getCampaignList
class GetCampaignList < ::Array
  @@schema_element = [
    ["ids", ["SOAP::SOAPInt[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "ids")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}getCampaignListResponse
class GetCampaignListResponse < ::Array
  @@schema_element = [
    ["getCampaignListReturn", ["Campaign[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "getCampaignListReturn")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}getAllAdWordsCampaigns
class GetAllAdWordsCampaigns
  @@schema_type = "getAllAdWordsCampaigns"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["dummy", "SOAP::SOAPInt"]
  ]

  attr_accessor :dummy

  def initialize(dummy = nil)
    @dummy = dummy
  end
end

# {https://adwords.google.com/api/adwords/v4}getAllAdWordsCampaignsResponse
class GetAllAdWordsCampaignsResponse < ::Array
  @@schema_element = [
    ["getAllAdWordsCampaignsReturn", ["Campaign[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "getAllAdWordsCampaignsReturn")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}addCampaign
class AddCampaign
  @@schema_type = "addCampaign"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["campaign", "Campaign"]
  ]

  attr_accessor :campaign

  def initialize(campaign = nil)
    @campaign = campaign
  end
end

# {https://adwords.google.com/api/adwords/v4}addCampaignResponse
class AddCampaignResponse
  @@schema_type = "addCampaignResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["addCampaignReturn", "Campaign"]
  ]

  attr_accessor :addCampaignReturn

  def initialize(addCampaignReturn = nil)
    @addCampaignReturn = addCampaignReturn
  end
end

# {https://adwords.google.com/api/adwords/v4}addCampaignList
class AddCampaignList < ::Array
  @@schema_element = [
    ["campaigns", ["Campaign[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "campaigns")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}addCampaignListResponse
class AddCampaignListResponse < ::Array
  @@schema_element = [
    ["addCampaignListReturn", ["Campaign[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "addCampaignListReturn")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}updateCampaign
class UpdateCampaign
  @@schema_type = "updateCampaign"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["campaign", "Campaign"]
  ]

  attr_accessor :campaign

  def initialize(campaign = nil)
    @campaign = campaign
  end
end

# {https://adwords.google.com/api/adwords/v4}updateCampaignResponse
class UpdateCampaignResponse
  @@schema_type = "updateCampaignResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}updateCampaignList
class UpdateCampaignList < ::Array
  @@schema_element = [
    ["campaigns", ["Campaign[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "campaigns")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}updateCampaignListResponse
class UpdateCampaignListResponse
  @@schema_type = "updateCampaignListResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}getOptimizeAdServing
class GetOptimizeAdServing
  @@schema_type = "getOptimizeAdServing"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["campaignId", "SOAP::SOAPInt"]
  ]

  attr_accessor :campaignId

  def initialize(campaignId = nil)
    @campaignId = campaignId
  end
end

# {https://adwords.google.com/api/adwords/v4}getOptimizeAdServingResponse
class GetOptimizeAdServingResponse
  @@schema_type = "getOptimizeAdServingResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getOptimizeAdServingReturn", "SOAP::SOAPBoolean"]
  ]

  attr_accessor :getOptimizeAdServingReturn

  def initialize(getOptimizeAdServingReturn = nil)
    @getOptimizeAdServingReturn = getOptimizeAdServingReturn
  end
end

# {https://adwords.google.com/api/adwords/v4}setOptimizeAdServing
class SetOptimizeAdServing
  @@schema_type = "setOptimizeAdServing"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["campaignId", "SOAP::SOAPInt"],
    ["enable", "SOAP::SOAPBoolean"]
  ]

  attr_accessor :campaignId
  attr_accessor :enable

  def initialize(campaignId = nil, enable = nil)
    @campaignId = campaignId
    @enable = enable
  end
end

# {https://adwords.google.com/api/adwords/v4}setOptimizeAdServingResponse
class SetOptimizeAdServingResponse
  @@schema_type = "setOptimizeAdServingResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}getCampaignStats
class GetCampaignStats
  @@schema_type = "getCampaignStats"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["campaignIds", "SOAP::SOAPInt[]"],
    ["startDay", "SOAP::SOAPDate"],
    ["endDay", "SOAP::SOAPDate"],
    ["inPST", "SOAP::SOAPBoolean"]
  ]

  attr_accessor :campaignIds
  attr_accessor :startDay
  attr_accessor :endDay
  attr_accessor :inPST

  def initialize(campaignIds = [], startDay = nil, endDay = nil, inPST = nil)
    @campaignIds = campaignIds
    @startDay = startDay
    @endDay = endDay
    @inPST = inPST
  end
end

# {https://adwords.google.com/api/adwords/v4}getCampaignStatsResponse
class GetCampaignStatsResponse < ::Array
  @@schema_element = [
    ["getCampaignStatsReturn", ["StatsRecord[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "getCampaignStatsReturn")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}Criterion
class Criterion
  @@schema_type = "Criterion"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["adGroupId", "SOAP::SOAPInt"],
    ["criterionType", "SOAP::SOAPString"],
    ["destinationUrl", "SOAP::SOAPString"],
    ["exemptionRequest", "SOAP::SOAPString"],
    ["id", "SOAP::SOAPLong"],
    ["language", "SOAP::SOAPString"],
    ["negative", "SOAP::SOAPBoolean"],
    ["status", "SOAP::SOAPString"]
  ]

  attr_accessor :adGroupId
  attr_accessor :criterionType
  attr_accessor :destinationUrl
  attr_accessor :exemptionRequest
  attr_accessor :id
  attr_accessor :language
  attr_accessor :negative
  attr_accessor :status

  def initialize(adGroupId = nil, criterionType = nil, destinationUrl = nil, exemptionRequest = nil, id = nil, language = nil, negative = nil, status = nil)
    @adGroupId = adGroupId
    @criterionType = criterionType
    @destinationUrl = destinationUrl
    @exemptionRequest = exemptionRequest
    @id = id
    @language = language
    @negative = negative
    @status = status
  end
end

# {https://adwords.google.com/api/adwords/v4}Keyword
class Keyword
  @@schema_type = "Keyword"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["adGroupId", "SOAP::SOAPInt"],
    ["criterionType", "SOAP::SOAPString"],
    ["destinationUrl", "SOAP::SOAPString"],
    ["exemptionRequest", "SOAP::SOAPString"],
    ["id", "SOAP::SOAPLong"],
    ["language", "SOAP::SOAPString"],
    ["negative", "SOAP::SOAPBoolean"],
    ["status", "SOAP::SOAPString"],
    ["maxCpc", "SOAP::SOAPLong"],
    ["minCpc", "SOAP::SOAPLong"],
    ["text", "SOAP::SOAPString"],
    ["type", "SOAP::SOAPString"]
  ]

  attr_accessor :adGroupId
  attr_accessor :criterionType
  attr_accessor :destinationUrl
  attr_accessor :exemptionRequest
  attr_accessor :id
  attr_accessor :language
  attr_accessor :negative
  attr_accessor :status
  attr_accessor :maxCpc
  attr_accessor :minCpc
  attr_accessor :text
  attr_accessor :type

  def initialize(adGroupId = nil, criterionType = nil, destinationUrl = nil, exemptionRequest = nil, id = nil, language = nil, negative = nil, status = nil, maxCpc = nil, minCpc = nil, text = nil, type = nil)
    @adGroupId = adGroupId
    @criterionType = criterionType
    @destinationUrl = destinationUrl
    @exemptionRequest = exemptionRequest
    @id = id
    @language = language
    @negative = negative
    @status = status
    @maxCpc = maxCpc
    @minCpc = minCpc
    @text = text
    @type = type
  end
end

# {https://adwords.google.com/api/adwords/v4}LanguageTarget
class LanguageTarget < ::Array
  @@schema_element = [
    ["languages", ["SOAP::SOAPString[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "languages")]]
  ]
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

# {https://adwords.google.com/api/adwords/v4}NetworkTarget
class NetworkTarget < ::Array
  @@schema_element = [
    ["networkTypes", ["SOAP::SOAPString[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "networkTypes")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}Campaign
class Campaign
  @@schema_type = "Campaign"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["dailyBudget", "SOAP::SOAPLong"],
    ["enableSeparateContentBids", "SOAP::SOAPBoolean"],
    ["endDay", "SOAP::SOAPDate"],
    ["geoTargeting", "GeoTarget"],
    ["id", "SOAP::SOAPInt"],
    ["languageTargeting", "LanguageTarget"],
    ["name", "SOAP::SOAPString"],
    ["networkTargeting", "NetworkTarget"],
    ["startDay", "SOAP::SOAPDate"],
    ["status", "SOAP::SOAPString"]
  ]

  attr_accessor :dailyBudget
  attr_accessor :enableSeparateContentBids
  attr_accessor :endDay
  attr_accessor :geoTargeting
  attr_accessor :id
  attr_accessor :languageTargeting
  attr_accessor :name
  attr_accessor :networkTargeting
  attr_accessor :startDay
  attr_accessor :status

  def initialize(dailyBudget = nil, enableSeparateContentBids = nil, endDay = nil, geoTargeting = nil, id = nil, languageTargeting = nil, name = nil, networkTargeting = nil, startDay = nil, status = nil)
    @dailyBudget = dailyBudget
    @enableSeparateContentBids = enableSeparateContentBids
    @endDay = endDay
    @geoTargeting = geoTargeting
    @id = id
    @languageTargeting = languageTargeting
    @name = name
    @networkTargeting = networkTargeting
    @startDay = startDay
    @status = status
  end
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

# {https://adwords.google.com/api/adwords/v4}StatsRecord
class StatsRecord
  @@schema_type = "StatsRecord"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["averagePosition", "SOAP::SOAPDouble"],
    ["clicks", "SOAP::SOAPLong"],
    ["conversionRate", "SOAP::SOAPDouble"],
    ["conversions", "SOAP::SOAPLong"],
    ["cost", "SOAP::SOAPLong"],
    ["id", "SOAP::SOAPLong"],
    ["impressions", "SOAP::SOAPLong"]
  ]

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

# {https://adwords.google.com/api/adwords/v4}CriterionStatus
class CriterionStatus < ::String
  @@schema_type = "CriterionStatus"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"

  Deleted = CriterionStatus.new("Deleted")
  Disabled = CriterionStatus.new("Disabled")
  Disapproved = CriterionStatus.new("Disapproved")
  InTrial = CriterionStatus.new("InTrial")
  Normal = CriterionStatus.new("Normal")
  OnHold = CriterionStatus.new("OnHold")
end

# {https://adwords.google.com/api/adwords/v4}KeywordType
class KeywordType < ::String
  @@schema_type = "KeywordType"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"

  Broad = KeywordType.new("Broad")
  Exact = KeywordType.new("Exact")
  Phrase = KeywordType.new("Phrase")
end

# {https://adwords.google.com/api/adwords/v4}CampaignStatus
class CampaignStatus < ::String
  @@schema_type = "CampaignStatus"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"

  Active = CampaignStatus.new("Active")
  Deleted = CampaignStatus.new("Deleted")
  Ended = CampaignStatus.new("Ended")
  Paused = CampaignStatus.new("Paused")
  Pending = CampaignStatus.new("Pending")
  Suspended = CampaignStatus.new("Suspended")
end

# {https://adwords.google.com/api/adwords/v4}NetworkType
class NetworkType < ::String
  @@schema_type = "NetworkType"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"

  ContentNetwork = NetworkType.new("ContentNetwork")
  GoogleSearch = NetworkType.new("GoogleSearch")
  SearchNetwork = NetworkType.new("SearchNetwork")
end
end
