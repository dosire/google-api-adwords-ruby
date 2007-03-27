module AdWords
require 'xsd/qname'

# {https://adwords.google.com/api/adwords/v8}addCampaign
class AddCampaign
  @@schema_type = "addCampaign"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["campaign", "Campaign"]]

  attr_accessor :campaign

  def initialize(campaign = nil)
    @campaign = campaign
  end
end

# {https://adwords.google.com/api/adwords/v8}addCampaignList
class AddCampaignList
  @@schema_type = "addCampaignList"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["campaigns", "Campaign[]"]]

  attr_accessor :campaigns

  def initialize(campaigns = [])
    @campaigns = campaigns
  end
end

# {https://adwords.google.com/api/adwords/v8}addCampaignListResponse
class AddCampaignListResponse
  @@schema_type = "addCampaignListResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["addCampaignListReturn", "Campaign[]"]]

  attr_accessor :addCampaignListReturn

  def initialize(addCampaignListReturn = [])
    @addCampaignListReturn = addCampaignListReturn
  end
end

# {https://adwords.google.com/api/adwords/v8}addCampaignResponse
class AddCampaignResponse
  @@schema_type = "addCampaignResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["addCampaignReturn", "Campaign"]]

  attr_accessor :addCampaignReturn

  def initialize(addCampaignReturn = nil)
    @addCampaignReturn = addCampaignReturn
  end
end

# {https://adwords.google.com/api/adwords/v8}getAllAdWordsCampaigns
class GetAllAdWordsCampaigns
  @@schema_type = "getAllAdWordsCampaigns"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["dummy", "SOAP::SOAPInt"]]

  attr_accessor :dummy

  def initialize(dummy = nil)
    @dummy = dummy
  end
end

# {https://adwords.google.com/api/adwords/v8}getAllAdWordsCampaignsResponse
class GetAllAdWordsCampaignsResponse
  @@schema_type = "getAllAdWordsCampaignsResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["getAllAdWordsCampaignsReturn", "Campaign[]"]]

  attr_accessor :getAllAdWordsCampaignsReturn

  def initialize(getAllAdWordsCampaignsReturn = [])
    @getAllAdWordsCampaignsReturn = getAllAdWordsCampaignsReturn
  end
end

# {https://adwords.google.com/api/adwords/v8}getCampaign
class GetCampaign
  @@schema_type = "getCampaign"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["id", "SOAP::SOAPInt"]]

  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {https://adwords.google.com/api/adwords/v8}getCampaignList
class GetCampaignList
  @@schema_type = "getCampaignList"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["ids", "SOAP::SOAPInt[]"]]

  attr_accessor :ids

  def initialize(ids = [])
    @ids = ids
  end
end

# {https://adwords.google.com/api/adwords/v8}getCampaignListResponse
class GetCampaignListResponse
  @@schema_type = "getCampaignListResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["getCampaignListReturn", "Campaign[]"]]

  attr_accessor :getCampaignListReturn

  def initialize(getCampaignListReturn = [])
    @getCampaignListReturn = getCampaignListReturn
  end
end

# {https://adwords.google.com/api/adwords/v8}getCampaignResponse
class GetCampaignResponse
  @@schema_type = "getCampaignResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["getCampaignReturn", "Campaign"]]

  attr_accessor :getCampaignReturn

  def initialize(getCampaignReturn = nil)
    @getCampaignReturn = getCampaignReturn
  end
end

# {https://adwords.google.com/api/adwords/v8}getCampaignStats
class GetCampaignStats
  @@schema_type = "getCampaignStats"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
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

# {https://adwords.google.com/api/adwords/v8}getCampaignStatsResponse
class GetCampaignStatsResponse
  @@schema_type = "getCampaignStatsResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["getCampaignStatsReturn", "StatsRecord[]"]]

  attr_accessor :getCampaignStatsReturn

  def initialize(getCampaignStatsReturn = [])
    @getCampaignStatsReturn = getCampaignStatsReturn
  end
end

# {https://adwords.google.com/api/adwords/v8}getOptimizeAdServing
class GetOptimizeAdServing
  @@schema_type = "getOptimizeAdServing"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["campaignId", "SOAP::SOAPInt"]]

  attr_accessor :campaignId

  def initialize(campaignId = nil)
    @campaignId = campaignId
  end
end

# {https://adwords.google.com/api/adwords/v8}getOptimizeAdServingResponse
class GetOptimizeAdServingResponse
  @@schema_type = "getOptimizeAdServingResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["getOptimizeAdServingReturn", "SOAP::SOAPBoolean"]]

  attr_accessor :getOptimizeAdServingReturn

  def initialize(getOptimizeAdServingReturn = nil)
    @getOptimizeAdServingReturn = getOptimizeAdServingReturn
  end
end

# {https://adwords.google.com/api/adwords/v8}setOptimizeAdServing
class SetOptimizeAdServing
  @@schema_type = "setOptimizeAdServing"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["campaignId", "SOAP::SOAPInt"], ["enable", "SOAP::SOAPBoolean"]]

  attr_accessor :campaignId
  attr_accessor :enable

  def initialize(campaignId = nil, enable = nil)
    @campaignId = campaignId
    @enable = enable
  end
end

# {https://adwords.google.com/api/adwords/v8}setOptimizeAdServingResponse
class SetOptimizeAdServingResponse
  @@schema_type = "setOptimizeAdServingResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v8}updateCampaign
class UpdateCampaign
  @@schema_type = "updateCampaign"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["campaign", "Campaign"]]

  attr_accessor :campaign

  def initialize(campaign = nil)
    @campaign = campaign
  end
end

# {https://adwords.google.com/api/adwords/v8}updateCampaignList
class UpdateCampaignList
  @@schema_type = "updateCampaignList"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["campaigns", "Campaign[]"]]

  attr_accessor :campaigns

  def initialize(campaigns = [])
    @campaigns = campaigns
  end
end

# {https://adwords.google.com/api/adwords/v8}updateCampaignListResponse
class UpdateCampaignListResponse
  @@schema_type = "updateCampaignListResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v8}updateCampaignResponse
class UpdateCampaignResponse
  @@schema_type = "updateCampaignResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v8}AdSchedule
class AdSchedule
  @@schema_type = "AdSchedule"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = [["intervals", "SchedulingInterval[]"], ["status", "SOAP::SOAPString"]]

  attr_accessor :intervals
  attr_accessor :status

  def initialize(intervals = [], status = nil)
    @intervals = intervals
    @status = status
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

# {https://adwords.google.com/api/adwords/v8}BudgetOptimizerSettings
class BudgetOptimizerSettings
  @@schema_type = "BudgetOptimizerSettings"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = [["bidCeiling", "SOAP::SOAPLong"], ["enabled", "SOAP::SOAPBoolean"], ["takeOnOptimizedBids", "SOAP::SOAPBoolean"]]

  attr_accessor :bidCeiling
  attr_accessor :enabled
  attr_accessor :takeOnOptimizedBids

  def initialize(bidCeiling = nil, enabled = nil, takeOnOptimizedBids = nil)
    @bidCeiling = bidCeiling
    @enabled = enabled
    @takeOnOptimizedBids = takeOnOptimizedBids
  end
end

# {https://adwords.google.com/api/adwords/v8}Campaign
class Campaign
  @@schema_type = "Campaign"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = [["budgetOptimizerSettings", "BudgetOptimizerSettings"], ["dailyBudget", "SOAP::SOAPLong"], ["enableSeparateContentBids", "SOAP::SOAPBoolean"], ["endDay", "SOAP::SOAPDate"], ["geoTargeting", "GeoTarget"], ["id", "SOAP::SOAPInt"], ["languageTargeting", "LanguageTarget"], ["name", "SOAP::SOAPString"], ["networkTargeting", "NetworkTarget"], ["schedule", "AdSchedule"], ["startDay", "SOAP::SOAPDate"], ["status", "SOAP::SOAPString"]]

  attr_accessor :budgetOptimizerSettings
  attr_accessor :dailyBudget
  attr_accessor :enableSeparateContentBids
  attr_accessor :endDay
  attr_accessor :geoTargeting
  attr_accessor :id
  attr_accessor :languageTargeting
  attr_accessor :name
  attr_accessor :networkTargeting
  attr_accessor :schedule
  attr_accessor :startDay
  attr_accessor :status

  def initialize(budgetOptimizerSettings = nil, dailyBudget = nil, enableSeparateContentBids = nil, endDay = nil, geoTargeting = nil, id = nil, languageTargeting = nil, name = nil, networkTargeting = nil, schedule = nil, startDay = nil, status = nil)
    @budgetOptimizerSettings = budgetOptimizerSettings
    @dailyBudget = dailyBudget
    @enableSeparateContentBids = enableSeparateContentBids
    @endDay = endDay
    @geoTargeting = geoTargeting
    @id = id
    @languageTargeting = languageTargeting
    @name = name
    @networkTargeting = networkTargeting
    @schedule = schedule
    @startDay = startDay
    @status = status
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

# {https://adwords.google.com/api/adwords/v8}SchedulingInterval
class SchedulingInterval
  @@schema_type = "SchedulingInterval"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = [["day", "SOAP::SOAPString"], ["endHour", "SOAP::SOAPInt"], ["endMinute", "SOAP::SOAPInt"], ["multiplier", "SOAP::SOAPDouble"], ["startHour", "SOAP::SOAPInt"], ["startMinute", "SOAP::SOAPInt"]]

  attr_accessor :day
  attr_accessor :endHour
  attr_accessor :endMinute
  attr_accessor :multiplier
  attr_accessor :startHour
  attr_accessor :startMinute

  def initialize(day = nil, endHour = nil, endMinute = nil, multiplier = nil, startHour = nil, startMinute = nil)
    @day = day
    @endHour = endHour
    @endMinute = endMinute
    @multiplier = multiplier
    @startHour = startHour
    @startMinute = startMinute
  end
end

# {https://adwords.google.com/api/adwords/v8}StatsRecord
class StatsRecord
  @@schema_type = "StatsRecord"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
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

# {https://adwords.google.com/api/adwords/v8}AdScheduleStatus
module AdScheduleStatus
  Disabled = "Disabled"
  Enabled = "Enabled"
end

# {https://adwords.google.com/api/adwords/v8}CampaignStatus
module CampaignStatus
  Active = "Active"
  Deleted = "Deleted"
  Ended = "Ended"
  Paused = "Paused"
  Pending = "Pending"
  Suspended = "Suspended"
end

# {https://adwords.google.com/api/adwords/v8}DayOfWeek
module DayOfWeek
  Friday = "Friday"
  Monday = "Monday"
  Saturday = "Saturday"
  Sunday = "Sunday"
  Thursday = "Thursday"
  Tuesday = "Tuesday"
  Wednesday = "Wednesday"
end

# {https://adwords.google.com/api/adwords/v8}NetworkType
module NetworkType
  ContentNetwork = "ContentNetwork"
  GoogleSearch = "GoogleSearch"
  SearchNetwork = "SearchNetwork"
end
end
