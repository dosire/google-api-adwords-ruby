require 'xsd/qname'

module AdWords; module CampaignService


# {https://adwords.google.com/api/adwords/v13}AdSchedule
#   intervals - AdWords::CampaignService::SchedulingInterval
#   status - AdWords::CampaignService::AdScheduleStatus
class AdSchedule
  attr_accessor :intervals
  attr_accessor :status

  def initialize(intervals = [], status = nil)
    @intervals = intervals
    @status = status
  end
end

# {https://adwords.google.com/api/adwords/v13}ApiError
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

# {https://adwords.google.com/api/adwords/v13}ApiException
#   code - SOAP::SOAPInt
#   errors - AdWords::CampaignService::ApiError
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

# {https://adwords.google.com/api/adwords/v13}BudgetOptimizerSettings
#   bidCeiling - SOAP::SOAPLong
#   enabled - SOAP::SOAPBoolean
#   takeOnOptimizedBids - SOAP::SOAPBoolean
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

# {https://adwords.google.com/api/adwords/v13}Campaign
#   budgetAmount - SOAP::SOAPLong
#   budgetOptimizerSettings - AdWords::CampaignService::BudgetOptimizerSettings
#   budgetPeriod - AdWords::CampaignService::BudgetPeriod
#   contentTargeting - AdWords::CampaignService::ContentTargeting
#   conversionOptimizerSettings - AdWords::CampaignService::ConversionOptimizerSettings
#   endDay - SOAP::SOAPDate
#   geoTargeting - AdWords::CampaignService::GeoTarget
#   id - SOAP::SOAPInt
#   languageTargeting - AdWords::CampaignService::LanguageTarget
#   name - SOAP::SOAPString
#   networkTargeting - AdWords::CampaignService::NetworkTarget
#   schedule - AdWords::CampaignService::AdSchedule
#   startDay - SOAP::SOAPDate
#   status - AdWords::CampaignService::CampaignStatus
class Campaign
  attr_accessor :budgetAmount
  attr_accessor :budgetOptimizerSettings
  attr_accessor :budgetPeriod
  attr_accessor :contentTargeting
  attr_accessor :conversionOptimizerSettings
  attr_accessor :endDay
  attr_accessor :geoTargeting
  attr_accessor :id
  attr_accessor :languageTargeting
  attr_accessor :name
  attr_accessor :networkTargeting
  attr_accessor :schedule
  attr_accessor :startDay
  attr_accessor :status

  def initialize(budgetAmount = nil, budgetOptimizerSettings = nil, budgetPeriod = nil, contentTargeting = nil, conversionOptimizerSettings = nil, endDay = nil, geoTargeting = nil, id = nil, languageTargeting = nil, name = nil, networkTargeting = nil, schedule = nil, startDay = nil, status = nil)
    @budgetAmount = budgetAmount
    @budgetOptimizerSettings = budgetOptimizerSettings
    @budgetPeriod = budgetPeriod
    @contentTargeting = contentTargeting
    @conversionOptimizerSettings = conversionOptimizerSettings
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

# {https://adwords.google.com/api/adwords/v13}CampaignBudget
#   budgetAmount - SOAP::SOAPLong
#   budgetPeriod - AdWords::CampaignService::BudgetPeriod
class CampaignBudget
  attr_accessor :budgetAmount
  attr_accessor :budgetPeriod

  def initialize(budgetAmount = nil, budgetPeriod = nil)
    @budgetAmount = budgetAmount
    @budgetPeriod = budgetPeriod
  end
end

# {https://adwords.google.com/api/adwords/v13}Circle
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

# {https://adwords.google.com/api/adwords/v13}CityTargets
#   cities - SOAP::SOAPString
#   excludedCities - SOAP::SOAPString
class CityTargets
  attr_accessor :cities
  attr_accessor :excludedCities

  def initialize(cities = [], excludedCities = [])
    @cities = cities
    @excludedCities = excludedCities
  end
end

# {https://adwords.google.com/api/adwords/v13}ConversionOptimizerEligibility
#   campaignId - SOAP::SOAPInt
#   eligibleToSwitchOn - SOAP::SOAPBoolean
class ConversionOptimizerEligibility
  attr_accessor :campaignId
  attr_accessor :eligibleToSwitchOn

  def initialize(campaignId = nil, eligibleToSwitchOn = nil)
    @campaignId = campaignId
    @eligibleToSwitchOn = eligibleToSwitchOn
  end
end

# {https://adwords.google.com/api/adwords/v13}ConversionOptimizerSettings
#   enabled - SOAP::SOAPBoolean
#   maxCpaBidForAllAdGroups - SOAP::SOAPLong
class ConversionOptimizerSettings
  attr_accessor :enabled
  attr_accessor :maxCpaBidForAllAdGroups

  def initialize(enabled = nil, maxCpaBidForAllAdGroups = nil)
    @enabled = enabled
    @maxCpaBidForAllAdGroups = maxCpaBidForAllAdGroups
  end
end

# {https://adwords.google.com/api/adwords/v13}CountryTargets
#   countries - SOAP::SOAPString
#   excludedCountries - SOAP::SOAPString
class CountryTargets
  attr_accessor :countries
  attr_accessor :excludedCountries

  def initialize(countries = [], excludedCountries = [])
    @countries = countries
    @excludedCountries = excludedCountries
  end
end

# {https://adwords.google.com/api/adwords/v13}GeoTarget
#   cityTargets - AdWords::CampaignService::CityTargets
#   countryTargets - AdWords::CampaignService::CountryTargets
#   metroTargets - AdWords::CampaignService::MetroTargets
#   proximityTargets - AdWords::CampaignService::ProximityTargets
#   regionTargets - AdWords::CampaignService::RegionTargets
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

# {https://adwords.google.com/api/adwords/v13}LanguageTarget
class LanguageTarget < ::Array
end

# {https://adwords.google.com/api/adwords/v13}MetroTargets
#   excludedMetros - SOAP::SOAPString
#   metros - SOAP::SOAPString
class MetroTargets
  attr_accessor :excludedMetros
  attr_accessor :metros

  def initialize(excludedMetros = [], metros = [])
    @excludedMetros = excludedMetros
    @metros = metros
  end
end

# {https://adwords.google.com/api/adwords/v13}NetworkTarget
class NetworkTarget < ::Array
end

# {https://adwords.google.com/api/adwords/v13}ProximityTargets
class ProximityTargets < ::Array
end

# {https://adwords.google.com/api/adwords/v13}RegionTargets
#   excludedRegions - SOAP::SOAPString
#   regions - SOAP::SOAPString
class RegionTargets
  attr_accessor :excludedRegions
  attr_accessor :regions

  def initialize(excludedRegions = [], regions = [])
    @excludedRegions = excludedRegions
    @regions = regions
  end
end

# {https://adwords.google.com/api/adwords/v13}SchedulingInterval
#   day - AdWords::CampaignService::DayOfWeek
#   endHour - SOAP::SOAPInt
#   endMinute - SOAP::SOAPInt
#   multiplier - SOAP::SOAPDouble
#   startHour - SOAP::SOAPInt
#   startMinute - SOAP::SOAPInt
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

# {https://adwords.google.com/api/adwords/v13}StatsRecord
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

# {https://adwords.google.com/api/adwords/v13}AdScheduleStatus
class AdScheduleStatus < ::String
  Disabled = AdScheduleStatus.new("Disabled")
  Enabled = AdScheduleStatus.new("Enabled")
end

# {https://adwords.google.com/api/adwords/v13}BudgetPeriod
class BudgetPeriod < ::String
  Daily = BudgetPeriod.new("Daily")
  Monthly = BudgetPeriod.new("Monthly")
end

# {https://adwords.google.com/api/adwords/v13}CampaignStatus
class CampaignStatus < ::String
  Active = CampaignStatus.new("Active")
  Deleted = CampaignStatus.new("Deleted")
  Ended = CampaignStatus.new("Ended")
  Paused = CampaignStatus.new("Paused")
  Pending = CampaignStatus.new("Pending")
  Suspended = CampaignStatus.new("Suspended")
end

# {https://adwords.google.com/api/adwords/v13}ContentTargeting
class ContentTargeting < ::String
  AllPlacements = ContentTargeting.new("AllPlacements")
  SelectedPlacements = ContentTargeting.new("SelectedPlacements")
end

# {https://adwords.google.com/api/adwords/v13}DayOfWeek
class DayOfWeek < ::String
  Friday = DayOfWeek.new("Friday")
  Monday = DayOfWeek.new("Monday")
  Saturday = DayOfWeek.new("Saturday")
  Sunday = DayOfWeek.new("Sunday")
  Thursday = DayOfWeek.new("Thursday")
  Tuesday = DayOfWeek.new("Tuesday")
  Wednesday = DayOfWeek.new("Wednesday")
end

# {https://adwords.google.com/api/adwords/v13}NetworkType
class NetworkType < ::String
  ContentNetwork = NetworkType.new("ContentNetwork")
  GoogleSearch = NetworkType.new("GoogleSearch")
  SearchNetwork = NetworkType.new("SearchNetwork")
end

# {https://adwords.google.com/api/adwords/v13}addCampaign
#   campaign - AdWords::CampaignService::Campaign
class AddCampaign
  attr_accessor :campaign

  def initialize(campaign = nil)
    @campaign = campaign
  end
end

# {https://adwords.google.com/api/adwords/v13}addCampaignList
class AddCampaignList < ::Array
end

# {https://adwords.google.com/api/adwords/v13}addCampaignListResponse
class AddCampaignListResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v13}addCampaignResponse
#   addCampaignReturn - AdWords::CampaignService::Campaign
class AddCampaignResponse
  attr_accessor :addCampaignReturn

  def initialize(addCampaignReturn = nil)
    @addCampaignReturn = addCampaignReturn
  end
end

# {https://adwords.google.com/api/adwords/v13}getActiveAdWordsCampaigns
class GetActiveAdWordsCampaigns
  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v13}getActiveAdWordsCampaignsResponse
class GetActiveAdWordsCampaignsResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v13}getAllAdWordsCampaigns
#   dummy - SOAP::SOAPInt
class GetAllAdWordsCampaigns
  attr_accessor :dummy

  def initialize(dummy = nil)
    @dummy = dummy
  end
end

# {https://adwords.google.com/api/adwords/v13}getAllAdWordsCampaignsResponse
class GetAllAdWordsCampaignsResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v13}getCampaign
#   id - SOAP::SOAPInt
class GetCampaign
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {https://adwords.google.com/api/adwords/v13}getCampaignList
class GetCampaignList < ::Array
end

# {https://adwords.google.com/api/adwords/v13}getCampaignListResponse
class GetCampaignListResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v13}getCampaignResponse
#   getCampaignReturn - AdWords::CampaignService::Campaign
class GetCampaignResponse
  attr_accessor :getCampaignReturn

  def initialize(getCampaignReturn = nil)
    @getCampaignReturn = getCampaignReturn
  end
end

# {https://adwords.google.com/api/adwords/v13}getCampaignStats
#   campaignIds - SOAP::SOAPInt
#   startDay - SOAP::SOAPDate
#   endDay - SOAP::SOAPDate
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

# {https://adwords.google.com/api/adwords/v13}getCampaignStatsResponse
class GetCampaignStatsResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v13}getConversionOptimizerEligibility
class GetConversionOptimizerEligibility < ::Array
end

# {https://adwords.google.com/api/adwords/v13}getConversionOptimizerEligibilityResponse
class GetConversionOptimizerEligibilityResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v13}getOptimizeAdServing
#   campaignId - SOAP::SOAPInt
class GetOptimizeAdServing
  attr_accessor :campaignId

  def initialize(campaignId = nil)
    @campaignId = campaignId
  end
end

# {https://adwords.google.com/api/adwords/v13}getOptimizeAdServingResponse
#   getOptimizeAdServingReturn - SOAP::SOAPBoolean
class GetOptimizeAdServingResponse
  attr_accessor :getOptimizeAdServingReturn

  def initialize(getOptimizeAdServingReturn = nil)
    @getOptimizeAdServingReturn = getOptimizeAdServingReturn
  end
end

# {https://adwords.google.com/api/adwords/v13}getRecommendedBudgetList
class GetRecommendedBudgetList < ::Array
end

# {https://adwords.google.com/api/adwords/v13}getRecommendedBudgetListResponse
class GetRecommendedBudgetListResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v13}setOptimizeAdServing
#   campaignId - SOAP::SOAPInt
#   enable - SOAP::SOAPBoolean
class SetOptimizeAdServing
  attr_accessor :campaignId
  attr_accessor :enable

  def initialize(campaignId = nil, enable = nil)
    @campaignId = campaignId
    @enable = enable
  end
end

# {https://adwords.google.com/api/adwords/v13}setOptimizeAdServingResponse
class SetOptimizeAdServingResponse
  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v13}updateCampaign
#   campaign - AdWords::CampaignService::Campaign
class UpdateCampaign
  attr_accessor :campaign

  def initialize(campaign = nil)
    @campaign = campaign
  end
end

# {https://adwords.google.com/api/adwords/v13}updateCampaignList
class UpdateCampaignList < ::Array
end

# {https://adwords.google.com/api/adwords/v13}updateCampaignListResponse
class UpdateCampaignListResponse
  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v13}updateCampaignResponse
class UpdateCampaignResponse
  def initialize
  end
end


end; end
