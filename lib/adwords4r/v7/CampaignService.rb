module AdWords
require 'xsd/qname'

# {https://adwords.google.com/api/adwords/v7}getCampaign
class GetCampaign
  @@schema_type = "getCampaign"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["id", "SOAP::SOAPInt"]]

  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {https://adwords.google.com/api/adwords/v7}getCampaignResponse
class GetCampaignResponse
  @@schema_type = "getCampaignResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["getCampaignReturn", "Campaign"]]

  attr_accessor :getCampaignReturn

  def initialize(getCampaignReturn = nil)
    @getCampaignReturn = getCampaignReturn
  end
end

# {https://adwords.google.com/api/adwords/v7}getCampaignList
class GetCampaignList
  @@schema_type = "getCampaignList"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["ids", "SOAP::SOAPInt[]"]]

  attr_accessor :ids

  def initialize(ids = [])
    @ids = ids
  end
end

# {https://adwords.google.com/api/adwords/v7}getCampaignListResponse
class GetCampaignListResponse
  @@schema_type = "getCampaignListResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["getCampaignListReturn", "Campaign[]"]]

  attr_accessor :getCampaignListReturn

  def initialize(getCampaignListReturn = [])
    @getCampaignListReturn = getCampaignListReturn
  end
end

# {https://adwords.google.com/api/adwords/v7}getAllAdWordsCampaigns
class GetAllAdWordsCampaigns
  @@schema_type = "getAllAdWordsCampaigns"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["dummy", "SOAP::SOAPInt"]]

  attr_accessor :dummy

  def initialize(dummy = nil)
    @dummy = dummy
  end
end

# {https://adwords.google.com/api/adwords/v7}getAllAdWordsCampaignsResponse
class GetAllAdWordsCampaignsResponse
  @@schema_type = "getAllAdWordsCampaignsResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["getAllAdWordsCampaignsReturn", "Campaign[]"]]

  attr_accessor :getAllAdWordsCampaignsReturn

  def initialize(getAllAdWordsCampaignsReturn = [])
    @getAllAdWordsCampaignsReturn = getAllAdWordsCampaignsReturn
  end
end

# {https://adwords.google.com/api/adwords/v7}addCampaign
class AddCampaign
  @@schema_type = "addCampaign"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["campaign", "Campaign"]]

  attr_accessor :campaign

  def initialize(campaign = nil)
    @campaign = campaign
  end
end

# {https://adwords.google.com/api/adwords/v7}addCampaignResponse
class AddCampaignResponse
  @@schema_type = "addCampaignResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["addCampaignReturn", "Campaign"]]

  attr_accessor :addCampaignReturn

  def initialize(addCampaignReturn = nil)
    @addCampaignReturn = addCampaignReturn
  end
end

# {https://adwords.google.com/api/adwords/v7}addCampaignList
class AddCampaignList
  @@schema_type = "addCampaignList"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["campaigns", "Campaign[]"]]

  attr_accessor :campaigns

  def initialize(campaigns = [])
    @campaigns = campaigns
  end
end

# {https://adwords.google.com/api/adwords/v7}addCampaignListResponse
class AddCampaignListResponse
  @@schema_type = "addCampaignListResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["addCampaignListReturn", "Campaign[]"]]

  attr_accessor :addCampaignListReturn

  def initialize(addCampaignListReturn = [])
    @addCampaignListReturn = addCampaignListReturn
  end
end

# {https://adwords.google.com/api/adwords/v7}updateCampaign
class UpdateCampaign
  @@schema_type = "updateCampaign"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["campaign", "Campaign"]]

  attr_accessor :campaign

  def initialize(campaign = nil)
    @campaign = campaign
  end
end

# {https://adwords.google.com/api/adwords/v7}updateCampaignResponse
class UpdateCampaignResponse
  @@schema_type = "updateCampaignResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v7}updateCampaignList
class UpdateCampaignList
  @@schema_type = "updateCampaignList"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["campaigns", "Campaign[]"]]

  attr_accessor :campaigns

  def initialize(campaigns = [])
    @campaigns = campaigns
  end
end

# {https://adwords.google.com/api/adwords/v7}updateCampaignListResponse
class UpdateCampaignListResponse
  @@schema_type = "updateCampaignListResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v7}getOptimizeAdServing
class GetOptimizeAdServing
  @@schema_type = "getOptimizeAdServing"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["campaignId", "SOAP::SOAPInt"]]

  attr_accessor :campaignId

  def initialize(campaignId = nil)
    @campaignId = campaignId
  end
end

# {https://adwords.google.com/api/adwords/v7}getOptimizeAdServingResponse
class GetOptimizeAdServingResponse
  @@schema_type = "getOptimizeAdServingResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["getOptimizeAdServingReturn", "SOAP::SOAPBoolean"]]

  attr_accessor :getOptimizeAdServingReturn

  def initialize(getOptimizeAdServingReturn = nil)
    @getOptimizeAdServingReturn = getOptimizeAdServingReturn
  end
end

# {https://adwords.google.com/api/adwords/v7}setOptimizeAdServing
class SetOptimizeAdServing
  @@schema_type = "setOptimizeAdServing"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["campaignId", "SOAP::SOAPInt"], ["enable", "SOAP::SOAPBoolean"]]

  attr_accessor :campaignId
  attr_accessor :enable

  def initialize(campaignId = nil, enable = nil)
    @campaignId = campaignId
    @enable = enable
  end
end

# {https://adwords.google.com/api/adwords/v7}setOptimizeAdServingResponse
class SetOptimizeAdServingResponse
  @@schema_type = "setOptimizeAdServingResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v7}getCampaignStats
class GetCampaignStats
  @@schema_type = "getCampaignStats"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["campaignIds", "SOAP::SOAPInt[]"], ["startDay", "SOAP::SOAPDate"], ["endDay", "SOAP::SOAPDate"], ["inPST", "SOAP::SOAPBoolean"]]

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

# {https://adwords.google.com/api/adwords/v7}getCampaignStatsResponse
class GetCampaignStatsResponse
  @@schema_type = "getCampaignStatsResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["getCampaignStatsReturn", "StatsRecord[]"]]

  attr_accessor :getCampaignStatsReturn

  def initialize(getCampaignStatsReturn = [])
    @getCampaignStatsReturn = getCampaignStatsReturn
  end
end

# {https://adwords.google.com/api/adwords/v7}Criterion
class Criterion
  @@schema_type = "Criterion"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = [["adGroupId", "SOAP::SOAPInt"], ["criterionType", "SOAP::SOAPString"], ["destinationUrl", "SOAP::SOAPString"], ["exemptionRequest", "SOAP::SOAPString"], ["id", "SOAP::SOAPLong"], ["language", "SOAP::SOAPString"], ["negative", "SOAP::SOAPBoolean"], ["paused", "SOAP::SOAPBoolean"], ["status", "SOAP::SOAPString"]]

  attr_accessor :adGroupId
  attr_accessor :criterionType
  attr_accessor :destinationUrl
  attr_accessor :exemptionRequest
  attr_accessor :id
  attr_accessor :language
  attr_accessor :negative
  attr_accessor :paused
  attr_accessor :status

  def initialize(adGroupId = nil, criterionType = nil, destinationUrl = nil, exemptionRequest = nil, id = nil, language = nil, negative = nil, paused = nil, status = nil)
    @adGroupId = adGroupId
    @criterionType = criterionType
    @destinationUrl = destinationUrl
    @exemptionRequest = exemptionRequest
    @id = id
    @language = language
    @negative = negative
    @paused = paused
    @status = status
  end
end

# {https://adwords.google.com/api/adwords/v7}Keyword
class Keyword
  @@schema_type = "Keyword"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v7}LanguageTarget
class LanguageTarget < ::Array
  @@schema_type = "string"
  @@schema_ns = "http://www.w3.org/2001/XMLSchema"
  @@schema_element = [["languages", ["SOAP::SOAPString[]", XSD::QName.new("https://adwords.google.com/api/adwords/v7", "languages")]]]
end

# {https://adwords.google.com/api/adwords/v7}GeoTarget
class GeoTarget
  @@schema_type = "GeoTarget"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
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

# {https://adwords.google.com/api/adwords/v7}NetworkTarget
class NetworkTarget < ::Array
  @@schema_type = "NetworkType"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = [["networkTypes", ["SOAP::SOAPString[]", XSD::QName.new("https://adwords.google.com/api/adwords/v7", "networkTypes")]]]
end

# {https://adwords.google.com/api/adwords/v7}SchedulingInterval
class SchedulingInterval
  @@schema_type = "SchedulingInterval"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = [["day", "SOAP::SOAPString"], ["startHour", "SOAP::SOAPInt"], ["startMinute", "SOAP::SOAPInt"], ["endHour", "SOAP::SOAPInt"], ["endMinute", "SOAP::SOAPInt"], ["multiplier", "SOAP::SOAPDouble"]]

  attr_accessor :day
  attr_accessor :startHour
  attr_accessor :startMinute
  attr_accessor :endHour
  attr_accessor :endMinute
  attr_accessor :multiplier

  def initialize(day = nil, startHour = nil, startMinute = nil, endHour = nil, endMinute = nil, multiplier = nil)
    @day = day
    @startHour = startHour
    @startMinute = startMinute
    @endHour = endHour
    @endMinute = endMinute
    @multiplier = multiplier
  end
end

# {https://adwords.google.com/api/adwords/v7}AdSchedule
class AdSchedule
  @@schema_type = "AdSchedule"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = [["status", "SOAP::SOAPString"], ["intervals", "SchedulingInterval[]"]]

  attr_accessor :status
  attr_accessor :intervals

  def initialize(status = nil, intervals = [])
    @status = status
    @intervals = intervals
  end
end

# {https://adwords.google.com/api/adwords/v7}Campaign
class Campaign
  @@schema_type = "Campaign"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = [["dailyBudget", "SOAP::SOAPLong"], ["enableSeparateContentBids", "SOAP::SOAPBoolean"], ["endDay", "SOAP::SOAPDate"], ["geoTargeting", "GeoTarget"], ["id", "SOAP::SOAPInt"], ["languageTargeting", "LanguageTarget"], ["name", "SOAP::SOAPString"], ["networkTargeting", "NetworkTarget"], ["startDay", "SOAP::SOAPDate"], ["status", "SOAP::SOAPString"], ["schedule", "AdSchedule"]]

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
  attr_accessor :schedule

  def initialize(dailyBudget = nil, enableSeparateContentBids = nil, endDay = nil, geoTargeting = nil, id = nil, languageTargeting = nil, name = nil, networkTargeting = nil, startDay = nil, status = nil, schedule = nil)
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
    @schedule = schedule
  end
end

# {https://adwords.google.com/api/adwords/v7}ApiException
class ApiException
  @@schema_type = "ApiException"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = [["code", "SOAP::SOAPInt"], ["internal", "SOAP::SOAPBoolean"], ["message", "SOAP::SOAPString"], ["trigger", "SOAP::SOAPString"], ["errors", "ApiError[]"]]

  attr_accessor :code
  attr_accessor :internal
  attr_accessor :message
  attr_accessor :trigger
  attr_accessor :errors

  def initialize(code = nil, internal = nil, message = nil, trigger = nil, errors = [])
    @code = code
    @internal = internal
    @message = message
    @trigger = trigger
    @errors = errors
  end
end

# {https://adwords.google.com/api/adwords/v7}ApiError
class ApiError
  @@schema_type = "ApiError"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = [["index", "SOAP::SOAPInt"], ["field", "SOAP::SOAPString"], ["textIndex", "SOAP::SOAPInt"], ["textLength", "SOAP::SOAPInt"], ["trigger", "SOAP::SOAPString"], ["code", "SOAP::SOAPInt"], ["isExemptable", "SOAP::SOAPBoolean"], ["detail", "SOAP::SOAPString"]]

  attr_accessor :index
  attr_accessor :field
  attr_accessor :textIndex
  attr_accessor :textLength
  attr_accessor :trigger
  attr_accessor :code
  attr_accessor :isExemptable
  attr_accessor :detail

  def initialize(index = nil, field = nil, textIndex = nil, textLength = nil, trigger = nil, code = nil, isExemptable = nil, detail = nil)
    @index = index
    @field = field
    @textIndex = textIndex
    @textLength = textLength
    @trigger = trigger
    @code = code
    @isExemptable = isExemptable
    @detail = detail
  end
end

# {https://adwords.google.com/api/adwords/v7}StatsRecord
class StatsRecord
  @@schema_type = "StatsRecord"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
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

# {https://adwords.google.com/api/adwords/v7}CriterionStatus
module CriterionStatus
  Deleted = "Deleted"
  Disabled = "Disabled"
  Disapproved = "Disapproved"
  InTrial = "InTrial"
  Normal = "Normal"
  OnHold = "OnHold"
end

# {https://adwords.google.com/api/adwords/v7}KeywordType
module KeywordType
  Broad = "Broad"
  Exact = "Exact"
  Phrase = "Phrase"
end

# {https://adwords.google.com/api/adwords/v7}CampaignStatus
module CampaignStatus
  Active = "Active"
  Deleted = "Deleted"
  Ended = "Ended"
  Paused = "Paused"
  Pending = "Pending"
  Suspended = "Suspended"
end

# {https://adwords.google.com/api/adwords/v7}NetworkType
module NetworkType
  ContentNetwork = "ContentNetwork"
  GoogleSearch = "GoogleSearch"
  SearchNetwork = "SearchNetwork"
end

# {https://adwords.google.com/api/adwords/v7}DayOfWeek
module DayOfWeek
  Friday = "Friday"
  Monday = "Monday"
  Saturday = "Saturday"
  Sunday = "Sunday"
  Thursday = "Thursday"
  Tuesday = "Tuesday"
  Wednesday = "Wednesday"
end

# {https://adwords.google.com/api/adwords/v7}AdScheduleStatus
module AdScheduleStatus
  Disabled = "Disabled"
  Enabled = "Enabled"
end
end
