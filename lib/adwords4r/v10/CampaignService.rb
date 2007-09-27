require 'xsd/qname'

module AdWords; module CampaignService


# {https://adwords.google.com/api/adwords/v10}AdSchedule
class AdSchedule
  attr_accessor :intervals
  attr_accessor :status

  def initialize(intervals = [], status = nil)
    @intervals = intervals
    @status = status
  end
end

# {https://adwords.google.com/api/adwords/v10}ApiError
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

# {https://adwords.google.com/api/adwords/v10}ApiException
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

# {https://adwords.google.com/api/adwords/v10}BudgetOptimizerSettings
class BudgetOptimizerSettings
  attr_accessor :bidCeiling
  attr_accessor :enabled
  attr_accessor :takeOnOptimizedBids

  def initialize(bidCeiling = nil, enabled = nil, takeOnOptimizedBids = nil)
    @bidCeiling = bidCeiling
    @enabled = enabled
    @takeOnOptimizedBids = takeOnOptimizedBids
  end
end

# {https://adwords.google.com/api/adwords/v10}Campaign
class Campaign
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

# {https://adwords.google.com/api/adwords/v10}Circle
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

# {https://adwords.google.com/api/adwords/v10}CityTargets
class CityTargets < ::Array
end

# {https://adwords.google.com/api/adwords/v10}CountryTargets
class CountryTargets < ::Array
end

# {https://adwords.google.com/api/adwords/v10}GeoTarget
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

# {https://adwords.google.com/api/adwords/v10}LanguageTarget
class LanguageTarget < ::Array
end

# {https://adwords.google.com/api/adwords/v10}MetroTargets
class MetroTargets < ::Array
end

# {https://adwords.google.com/api/adwords/v10}NetworkTarget
class NetworkTarget < ::Array
end

# {https://adwords.google.com/api/adwords/v10}ProximityTargets
class ProximityTargets < ::Array
end

# {https://adwords.google.com/api/adwords/v10}RegionTargets
class RegionTargets < ::Array
end

# {https://adwords.google.com/api/adwords/v10}SchedulingInterval
class SchedulingInterval
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

# {https://adwords.google.com/api/adwords/v10}StatsRecord
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

# {https://adwords.google.com/api/adwords/v10}AdScheduleStatus
class AdScheduleStatus < ::String
  Disabled = AdScheduleStatus.new("Disabled")
  Enabled = AdScheduleStatus.new("Enabled")
end

# {https://adwords.google.com/api/adwords/v10}CampaignStatus
class CampaignStatus < ::String
  Active = CampaignStatus.new("Active")
  Deleted = CampaignStatus.new("Deleted")
  Ended = CampaignStatus.new("Ended")
  Paused = CampaignStatus.new("Paused")
  Pending = CampaignStatus.new("Pending")
  Suspended = CampaignStatus.new("Suspended")
end

# {https://adwords.google.com/api/adwords/v10}DayOfWeek
class DayOfWeek < ::String
  Friday = DayOfWeek.new("Friday")
  Monday = DayOfWeek.new("Monday")
  Saturday = DayOfWeek.new("Saturday")
  Sunday = DayOfWeek.new("Sunday")
  Thursday = DayOfWeek.new("Thursday")
  Tuesday = DayOfWeek.new("Tuesday")
  Wednesday = DayOfWeek.new("Wednesday")
end

# {https://adwords.google.com/api/adwords/v10}NetworkType
class NetworkType < ::String
  ContentNetwork = NetworkType.new("ContentNetwork")
  GoogleSearch = NetworkType.new("GoogleSearch")
  SearchNetwork = NetworkType.new("SearchNetwork")
end

# {https://adwords.google.com/api/adwords/v10}addCampaign
class AddCampaign
  attr_accessor :campaign

  def initialize(campaign = nil)
    @campaign = campaign
  end
end

# {https://adwords.google.com/api/adwords/v10}addCampaignList
class AddCampaignList < ::Array
end

# {https://adwords.google.com/api/adwords/v10}addCampaignListResponse
class AddCampaignListResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v10}addCampaignResponse
class AddCampaignResponse
  attr_accessor :addCampaignReturn

  def initialize(addCampaignReturn = nil)
    @addCampaignReturn = addCampaignReturn
  end
end

# {https://adwords.google.com/api/adwords/v10}getAllAdWordsCampaigns
class GetAllAdWordsCampaigns
  attr_accessor :dummy

  def initialize(dummy = nil)
    @dummy = dummy
  end
end

# {https://adwords.google.com/api/adwords/v10}getAllAdWordsCampaignsResponse
class GetAllAdWordsCampaignsResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v10}getCampaign
class GetCampaign
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {https://adwords.google.com/api/adwords/v10}getCampaignList
class GetCampaignList < ::Array
end

# {https://adwords.google.com/api/adwords/v10}getCampaignListResponse
class GetCampaignListResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v10}getCampaignResponse
class GetCampaignResponse
  attr_accessor :getCampaignReturn

  def initialize(getCampaignReturn = nil)
    @getCampaignReturn = getCampaignReturn
  end
end

# {https://adwords.google.com/api/adwords/v10}getCampaignStats
class GetCampaignStats
  attr_accessor :campaignIds
  attr_accessor :startDay
  attr_accessor :endDay

  def initialize(campaignIds = [], startDay = nil, endDay = nil)
    @campaignIds = campaignIds
    @startDay = startDay
    @endDay = endDay
  end
end

# {https://adwords.google.com/api/adwords/v10}getCampaignStatsResponse
class GetCampaignStatsResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v10}getOptimizeAdServing
class GetOptimizeAdServing
  attr_accessor :campaignId

  def initialize(campaignId = nil)
    @campaignId = campaignId
  end
end

# {https://adwords.google.com/api/adwords/v10}getOptimizeAdServingResponse
class GetOptimizeAdServingResponse
  attr_accessor :getOptimizeAdServingReturn

  def initialize(getOptimizeAdServingReturn = nil)
    @getOptimizeAdServingReturn = getOptimizeAdServingReturn
  end
end

# {https://adwords.google.com/api/adwords/v10}setOptimizeAdServing
class SetOptimizeAdServing
  attr_accessor :campaignId
  attr_accessor :enable

  def initialize(campaignId = nil, enable = nil)
    @campaignId = campaignId
    @enable = enable
  end
end

# {https://adwords.google.com/api/adwords/v10}setOptimizeAdServingResponse
class SetOptimizeAdServingResponse
  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v10}updateCampaign
class UpdateCampaign
  attr_accessor :campaign

  def initialize(campaign = nil)
    @campaign = campaign
  end
end

# {https://adwords.google.com/api/adwords/v10}updateCampaignList
class UpdateCampaignList < ::Array
end

# {https://adwords.google.com/api/adwords/v10}updateCampaignListResponse
class UpdateCampaignListResponse
  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v10}updateCampaignResponse
class UpdateCampaignResponse
  def initialize
  end
end


end; end
