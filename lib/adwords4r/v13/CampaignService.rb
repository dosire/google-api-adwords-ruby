require 'xsd/qname'

module AdWords; module V13; module CampaignService


# AdSchedule
# - intervals - AdWords::V13::CampaignService::SchedulingInterval
# - status - AdWords::V13::CampaignService::AdScheduleStatus
class AdSchedule
  attr_accessor :intervals
  attr_accessor :status

  def initialize(intervals = [], status = nil)
    @intervals = intervals
    @status = status
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
# - errors - AdWords::V13::CampaignService::ApiError
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

# BudgetOptimizerSettings
# - bidCeiling - SOAP::SOAPLong
# - enabled - SOAP::SOAPBoolean
# - takeOnOptimizedBids - SOAP::SOAPBoolean
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

# Campaign
# - budgetAmount - SOAP::SOAPLong
# - budgetOptimizerSettings - AdWords::V13::CampaignService::BudgetOptimizerSettings
# - budgetPeriod - AdWords::V13::CampaignService::BudgetPeriod
# - contentTargeting - AdWords::V13::CampaignService::ContentTargeting
# - conversionOptimizerSettings - AdWords::V13::CampaignService::ConversionOptimizerSettings
# - endDay - SOAP::SOAPDate
# - geoTargeting - AdWords::V13::CampaignService::GeoTarget
# - id - SOAP::SOAPInt
# - languageTargeting - AdWords::V13::CampaignService::LanguageTarget
# - name - SOAP::SOAPString
# - networkTargeting - AdWords::V13::CampaignService::NetworkTarget
# - schedule - AdWords::V13::CampaignService::AdSchedule
# - startDay - SOAP::SOAPDate
# - status - AdWords::V13::CampaignService::CampaignStatus
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

# CampaignBudget
# - budgetAmount - SOAP::SOAPLong
# - budgetPeriod - AdWords::V13::CampaignService::BudgetPeriod
class CampaignBudget
  attr_accessor :budgetAmount
  attr_accessor :budgetPeriod

  def initialize(budgetAmount = nil, budgetPeriod = nil)
    @budgetAmount = budgetAmount
    @budgetPeriod = budgetPeriod
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

# ConversionOptimizerEligibility
# - campaignId - SOAP::SOAPInt
# - eligibleToSwitchOn - SOAP::SOAPBoolean
class ConversionOptimizerEligibility
  attr_accessor :campaignId
  attr_accessor :eligibleToSwitchOn

  def initialize(campaignId = nil, eligibleToSwitchOn = nil)
    @campaignId = campaignId
    @eligibleToSwitchOn = eligibleToSwitchOn
  end
end

# ConversionOptimizerSettings
# - enabled - SOAP::SOAPBoolean
# - maxCpaBidForAllAdGroups - SOAP::SOAPLong
class ConversionOptimizerSettings
  attr_accessor :enabled
  attr_accessor :maxCpaBidForAllAdGroups

  def initialize(enabled = nil, maxCpaBidForAllAdGroups = nil)
    @enabled = enabled
    @maxCpaBidForAllAdGroups = maxCpaBidForAllAdGroups
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
# - cityTargets - AdWords::V13::CampaignService::CityTargets
# - countryTargets - AdWords::V13::CampaignService::CountryTargets
# - metroTargets - AdWords::V13::CampaignService::MetroTargets
# - proximityTargets - AdWords::V13::CampaignService::ProximityTargets
# - regionTargets - AdWords::V13::CampaignService::RegionTargets
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

# RecommendedBudget
# - budget - AdWords::V13::CampaignService::CampaignBudget
# - campaignId - SOAP::SOAPInt
class RecommendedBudget
  attr_accessor :budget
  attr_accessor :campaignId

  def initialize(budget = nil, campaignId = nil)
    @budget = budget
    @campaignId = campaignId
  end
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

# SchedulingInterval
# - day - AdWords::V13::CampaignService::DayOfWeek
# - endHour - SOAP::SOAPInt
# - endMinute - SOAP::SOAPInt
# - multiplier - SOAP::SOAPDouble
# - startHour - SOAP::SOAPInt
# - startMinute - SOAP::SOAPInt
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

# StatsRecord
# - averagePosition - SOAP::SOAPDouble
# - clicks - SOAP::SOAPLong
# - conversionRate - SOAP::SOAPDouble
# - conversions - SOAP::SOAPLong
# - cost - SOAP::SOAPLong
# - id - SOAP::SOAPLong
# - impressions - SOAP::SOAPLong
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

# AdScheduleStatus
class AdScheduleStatus < ::String
  Disabled = AdScheduleStatus.new("Disabled")
  Enabled = AdScheduleStatus.new("Enabled")
end

# BudgetPeriod
class BudgetPeriod < ::String
  Daily = BudgetPeriod.new("Daily")
  Monthly = BudgetPeriod.new("Monthly")
end

# CampaignStatus
class CampaignStatus < ::String
  Active = CampaignStatus.new("Active")
  Deleted = CampaignStatus.new("Deleted")
  Ended = CampaignStatus.new("Ended")
  Paused = CampaignStatus.new("Paused")
  Pending = CampaignStatus.new("Pending")
  Suspended = CampaignStatus.new("Suspended")
end

# ContentTargeting
class ContentTargeting < ::String
  AllPlacements = ContentTargeting.new("AllPlacements")
  SelectedPlacements = ContentTargeting.new("SelectedPlacements")
end

# DayOfWeek
class DayOfWeek < ::String
  Friday = DayOfWeek.new("Friday")
  Monday = DayOfWeek.new("Monday")
  Saturday = DayOfWeek.new("Saturday")
  Sunday = DayOfWeek.new("Sunday")
  Thursday = DayOfWeek.new("Thursday")
  Tuesday = DayOfWeek.new("Tuesday")
  Wednesday = DayOfWeek.new("Wednesday")
end

# NetworkType
class NetworkType < ::String
  ContentNetwork = NetworkType.new("ContentNetwork")
  GoogleSearch = NetworkType.new("GoogleSearch")
  SearchNetwork = NetworkType.new("SearchNetwork")
end

# addCampaign
# - campaign - AdWords::V13::CampaignService::Campaign
class AddCampaign #:nodoc: all
  attr_accessor :campaign

  def initialize(campaign = nil)
    @campaign = campaign
  end
end

# addCampaignList
class AddCampaignList < ::Array #:nodoc: all
end

# addCampaignListResponse
class AddCampaignListResponse < ::Array #:nodoc: all
end

# addCampaignResponse
# - addCampaignReturn - AdWords::V13::CampaignService::Campaign
class AddCampaignResponse #:nodoc: all
  attr_accessor :addCampaignReturn

  def initialize(addCampaignReturn = nil)
    @addCampaignReturn = addCampaignReturn
  end
end

# getActiveAdWordsCampaigns
class GetActiveAdWordsCampaigns #:nodoc: all
  def initialize
  end
end

# getActiveAdWordsCampaignsResponse
class GetActiveAdWordsCampaignsResponse < ::Array #:nodoc: all
end

# getAllAdWordsCampaigns
# - dummy - SOAP::SOAPInt
class GetAllAdWordsCampaigns #:nodoc: all
  attr_accessor :dummy

  def initialize(dummy = nil)
    @dummy = dummy
  end
end

# getAllAdWordsCampaignsResponse
class GetAllAdWordsCampaignsResponse < ::Array #:nodoc: all
end

# getCampaign
# - id - SOAP::SOAPInt
class GetCampaign #:nodoc: all
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# getCampaignList
class GetCampaignList < ::Array #:nodoc: all
end

# getCampaignListResponse
class GetCampaignListResponse < ::Array #:nodoc: all
end

# getCampaignResponse
# - getCampaignReturn - AdWords::V13::CampaignService::Campaign
class GetCampaignResponse #:nodoc: all
  attr_accessor :getCampaignReturn

  def initialize(getCampaignReturn = nil)
    @getCampaignReturn = getCampaignReturn
  end
end

# getCampaignStats
# - campaignIds - SOAP::SOAPInt
# - startDay - SOAP::SOAPDate
# - endDay - SOAP::SOAPDate
class GetCampaignStats #:nodoc: all
  attr_accessor :campaignIds
  attr_accessor :startDay
  attr_accessor :endDay

  def initialize(campaignIds = [], startDay = nil, endDay = nil)
    @campaignIds = campaignIds
    @startDay = startDay
    @endDay = endDay
  end
end

# getCampaignStatsResponse
class GetCampaignStatsResponse < ::Array #:nodoc: all
end

# getConversionOptimizerEligibility
class GetConversionOptimizerEligibility < ::Array #:nodoc: all
end

# getConversionOptimizerEligibilityResponse
class GetConversionOptimizerEligibilityResponse < ::Array #:nodoc: all
end

# getOptimizeAdServing
# - campaignId - SOAP::SOAPInt
class GetOptimizeAdServing #:nodoc: all
  attr_accessor :campaignId

  def initialize(campaignId = nil)
    @campaignId = campaignId
  end
end

# getOptimizeAdServingResponse
# - getOptimizeAdServingReturn - SOAP::SOAPBoolean
class GetOptimizeAdServingResponse #:nodoc: all
  attr_accessor :getOptimizeAdServingReturn

  def initialize(getOptimizeAdServingReturn = nil)
    @getOptimizeAdServingReturn = getOptimizeAdServingReturn
  end
end

# getRecommendedBudgetList
class GetRecommendedBudgetList < ::Array #:nodoc: all
end

# getRecommendedBudgetListResponse
class GetRecommendedBudgetListResponse < ::Array #:nodoc: all
end

# getRecommendedBudgets
class GetRecommendedBudgets < ::Array #:nodoc: all
end

# getRecommendedBudgetsResponse
class GetRecommendedBudgetsResponse < ::Array #:nodoc: all
end

# setOptimizeAdServing
# - campaignId - SOAP::SOAPInt
# - enable - SOAP::SOAPBoolean
class SetOptimizeAdServing #:nodoc: all
  attr_accessor :campaignId
  attr_accessor :enable

  def initialize(campaignId = nil, enable = nil)
    @campaignId = campaignId
    @enable = enable
  end
end

# setOptimizeAdServingResponse
class SetOptimizeAdServingResponse #:nodoc: all
  def initialize
  end
end

# updateCampaign
# - campaign - AdWords::V13::CampaignService::Campaign
class UpdateCampaign #:nodoc: all
  attr_accessor :campaign

  def initialize(campaign = nil)
    @campaign = campaign
  end
end

# updateCampaignList
class UpdateCampaignList < ::Array #:nodoc: all
end

# updateCampaignListResponse
class UpdateCampaignListResponse #:nodoc: all
  def initialize
  end
end

# updateCampaignResponse
class UpdateCampaignResponse #:nodoc: all
  def initialize
  end
end


end; end; end
