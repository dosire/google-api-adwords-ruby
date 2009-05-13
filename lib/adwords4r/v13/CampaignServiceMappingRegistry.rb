require 'adwords4r/v13/CampaignService'
require 'soap/mapping'

module AdWords; module V13; module CampaignService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV13 = "https://adwords.google.com/api/adwords/v13"

  EncodedRegistry.register(
    :class => AdWords::V13::CampaignService::AdSchedule,
    :schema_type => XSD::QName.new(NsV13, "AdSchedule"),
    :schema_element => [
      ["intervals", "AdWords::V13::CampaignService::SchedulingInterval[]", [1, nil]],
      ["status", "AdWords::V13::CampaignService::AdScheduleStatus"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CampaignService::ApiError,
    :schema_type => XSD::QName.new(NsV13, "ApiError"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["detail", "SOAP::SOAPString"],
      ["field", "SOAP::SOAPString", [0, 1]],
      ["index", "SOAP::SOAPInt"],
      ["isExemptable", "SOAP::SOAPBoolean"],
      ["textIndex", "SOAP::SOAPInt", [0, 1]],
      ["textLength", "SOAP::SOAPInt", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CampaignService::ApiException,
    :schema_type => XSD::QName.new(NsV13, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::V13::CampaignService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CampaignService::BudgetOptimizerSettings,
    :schema_type => XSD::QName.new(NsV13, "BudgetOptimizerSettings"),
    :schema_element => [
      ["bidCeiling", "SOAP::SOAPLong", [0, 1]],
      ["enabled", "SOAP::SOAPBoolean", [0, 1]],
      ["takeOnOptimizedBids", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CampaignService::Campaign,
    :schema_type => XSD::QName.new(NsV13, "Campaign"),
    :schema_element => [
      ["budgetAmount", "SOAP::SOAPLong", [0, 1]],
      ["budgetOptimizerSettings", "AdWords::V13::CampaignService::BudgetOptimizerSettings"],
      ["budgetPeriod", "AdWords::V13::CampaignService::BudgetPeriod", [0, 1]],
      ["contentTargeting", "AdWords::V13::CampaignService::ContentTargeting"],
      ["conversionOptimizerSettings", "AdWords::V13::CampaignService::ConversionOptimizerSettings", [0, 1]],
      ["endDay", "SOAP::SOAPDate", [0, 1]],
      ["geoTargeting", "AdWords::V13::CampaignService::GeoTarget"],
      ["id", "SOAP::SOAPInt"],
      ["languageTargeting", "AdWords::V13::CampaignService::LanguageTarget"],
      ["name", "SOAP::SOAPString"],
      ["networkTargeting", "AdWords::V13::CampaignService::NetworkTarget"],
      ["schedule", "AdWords::V13::CampaignService::AdSchedule"],
      ["startDay", "SOAP::SOAPDate", [0, 1]],
      ["status", "AdWords::V13::CampaignService::CampaignStatus"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CampaignService::CampaignBudget,
    :schema_type => XSD::QName.new(NsV13, "CampaignBudget"),
    :schema_element => [
      ["budgetAmount", "SOAP::SOAPLong", [0, 1]],
      ["budgetPeriod", "AdWords::V13::CampaignService::BudgetPeriod", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CampaignService::Circle,
    :schema_type => XSD::QName.new(NsV13, "Circle"),
    :schema_element => [
      ["latitudeMicroDegrees", "SOAP::SOAPInt"],
      ["longitudeMicroDegrees", "SOAP::SOAPInt"],
      ["radiusMeters", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CampaignService::CityTargets,
    :schema_type => XSD::QName.new(NsV13, "CityTargets"),
    :schema_element => [
      ["cities", "SOAP::SOAPString[]", [0, nil]],
      ["excludedCities", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CampaignService::ConversionOptimizerEligibility,
    :schema_type => XSD::QName.new(NsV13, "ConversionOptimizerEligibility"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPInt"],
      ["eligibleToSwitchOn", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CampaignService::ConversionOptimizerSettings,
    :schema_type => XSD::QName.new(NsV13, "ConversionOptimizerSettings"),
    :schema_element => [
      ["enabled", "SOAP::SOAPBoolean", [0, 1]],
      ["maxCpaBidForAllAdGroups", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CampaignService::CountryTargets,
    :schema_type => XSD::QName.new(NsV13, "CountryTargets"),
    :schema_element => [
      ["countries", "SOAP::SOAPString[]", [0, nil]],
      ["excludedCountries", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CampaignService::GeoTarget,
    :schema_type => XSD::QName.new(NsV13, "GeoTarget"),
    :schema_element => [
      ["cityTargets", "AdWords::V13::CampaignService::CityTargets", [0, 1]],
      ["countryTargets", "AdWords::V13::CampaignService::CountryTargets", [0, 1]],
      ["metroTargets", "AdWords::V13::CampaignService::MetroTargets", [0, 1]],
      ["proximityTargets", "AdWords::V13::CampaignService::ProximityTargets", [0, 1]],
      ["regionTargets", "AdWords::V13::CampaignService::RegionTargets", [0, 1]],
      ["targetAll", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CampaignService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV13, "LanguageTarget"),
    :schema_element => [
      ["languages", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CampaignService::MetroTargets,
    :schema_type => XSD::QName.new(NsV13, "MetroTargets"),
    :schema_element => [
      ["excludedMetros", "SOAP::SOAPString[]", [0, nil]],
      ["metros", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CampaignService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV13, "NetworkTarget"),
    :schema_element => [
      ["networkTypes", "AdWords::V13::CampaignService::NetworkType[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CampaignService::ProximityTargets,
    :schema_type => XSD::QName.new(NsV13, "ProximityTargets"),
    :schema_element => [
      ["circles", "AdWords::V13::CampaignService::Circle[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CampaignService::RecommendedBudget,
    :schema_type => XSD::QName.new(NsV13, "RecommendedBudget"),
    :schema_element => [
      ["budget", "AdWords::V13::CampaignService::CampaignBudget"],
      ["campaignId", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CampaignService::RegionTargets,
    :schema_type => XSD::QName.new(NsV13, "RegionTargets"),
    :schema_element => [
      ["excludedRegions", "SOAP::SOAPString[]", [0, nil]],
      ["regions", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CampaignService::SchedulingInterval,
    :schema_type => XSD::QName.new(NsV13, "SchedulingInterval"),
    :schema_element => [
      ["day", "AdWords::V13::CampaignService::DayOfWeek"],
      ["endHour", "SOAP::SOAPInt"],
      ["endMinute", "SOAP::SOAPInt"],
      ["multiplier", "SOAP::SOAPDouble"],
      ["startHour", "SOAP::SOAPInt"],
      ["startMinute", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CampaignService::StatsRecord,
    :schema_type => XSD::QName.new(NsV13, "StatsRecord"),
    :schema_element => [
      ["averagePosition", "SOAP::SOAPDouble"],
      ["clicks", "SOAP::SOAPLong"],
      ["conversionRate", "SOAP::SOAPDouble"],
      ["conversions", "SOAP::SOAPLong"],
      ["cost", "SOAP::SOAPLong"],
      ["id", "SOAP::SOAPLong"],
      ["impressions", "SOAP::SOAPLong"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CampaignService::AdScheduleStatus,
    :schema_type => XSD::QName.new(NsV13, "AdScheduleStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CampaignService::BudgetPeriod,
    :schema_type => XSD::QName.new(NsV13, "BudgetPeriod")
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CampaignService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV13, "CampaignStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CampaignService::ContentTargeting,
    :schema_type => XSD::QName.new(NsV13, "ContentTargeting")
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CampaignService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV13, "DayOfWeek")
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CampaignService::NetworkType,
    :schema_type => XSD::QName.new(NsV13, "NetworkType")
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::AdSchedule,
    :schema_type => XSD::QName.new(NsV13, "AdSchedule"),
    :schema_element => [
      ["intervals", "AdWords::V13::CampaignService::SchedulingInterval[]", [1, nil]],
      ["status", "AdWords::V13::CampaignService::AdScheduleStatus"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::ApiError,
    :schema_type => XSD::QName.new(NsV13, "ApiError"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["detail", "SOAP::SOAPString"],
      ["field", "SOAP::SOAPString", [0, 1]],
      ["index", "SOAP::SOAPInt"],
      ["isExemptable", "SOAP::SOAPBoolean"],
      ["textIndex", "SOAP::SOAPInt", [0, 1]],
      ["textLength", "SOAP::SOAPInt", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::ApiException,
    :schema_type => XSD::QName.new(NsV13, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::V13::CampaignService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::BudgetOptimizerSettings,
    :schema_type => XSD::QName.new(NsV13, "BudgetOptimizerSettings"),
    :schema_element => [
      ["bidCeiling", "SOAP::SOAPLong", [0, 1]],
      ["enabled", "SOAP::SOAPBoolean", [0, 1]],
      ["takeOnOptimizedBids", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::Campaign,
    :schema_type => XSD::QName.new(NsV13, "Campaign"),
    :schema_element => [
      ["budgetAmount", "SOAP::SOAPLong", [0, 1]],
      ["budgetOptimizerSettings", "AdWords::V13::CampaignService::BudgetOptimizerSettings"],
      ["budgetPeriod", "AdWords::V13::CampaignService::BudgetPeriod", [0, 1]],
      ["contentTargeting", "AdWords::V13::CampaignService::ContentTargeting"],
      ["conversionOptimizerSettings", "AdWords::V13::CampaignService::ConversionOptimizerSettings", [0, 1]],
      ["endDay", "SOAP::SOAPDate", [0, 1]],
      ["geoTargeting", "AdWords::V13::CampaignService::GeoTarget"],
      ["id", "SOAP::SOAPInt"],
      ["languageTargeting", "AdWords::V13::CampaignService::LanguageTarget"],
      ["name", "SOAP::SOAPString"],
      ["networkTargeting", "AdWords::V13::CampaignService::NetworkTarget"],
      ["schedule", "AdWords::V13::CampaignService::AdSchedule"],
      ["startDay", "SOAP::SOAPDate", [0, 1]],
      ["status", "AdWords::V13::CampaignService::CampaignStatus"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::CampaignBudget,
    :schema_type => XSD::QName.new(NsV13, "CampaignBudget"),
    :schema_element => [
      ["budgetAmount", "SOAP::SOAPLong", [0, 1]],
      ["budgetPeriod", "AdWords::V13::CampaignService::BudgetPeriod", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::Circle,
    :schema_type => XSD::QName.new(NsV13, "Circle"),
    :schema_element => [
      ["latitudeMicroDegrees", "SOAP::SOAPInt"],
      ["longitudeMicroDegrees", "SOAP::SOAPInt"],
      ["radiusMeters", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::CityTargets,
    :schema_type => XSD::QName.new(NsV13, "CityTargets"),
    :schema_element => [
      ["cities", "SOAP::SOAPString[]", [0, nil]],
      ["excludedCities", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::ConversionOptimizerEligibility,
    :schema_type => XSD::QName.new(NsV13, "ConversionOptimizerEligibility"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPInt"],
      ["eligibleToSwitchOn", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::ConversionOptimizerSettings,
    :schema_type => XSD::QName.new(NsV13, "ConversionOptimizerSettings"),
    :schema_element => [
      ["enabled", "SOAP::SOAPBoolean", [0, 1]],
      ["maxCpaBidForAllAdGroups", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::CountryTargets,
    :schema_type => XSD::QName.new(NsV13, "CountryTargets"),
    :schema_element => [
      ["countries", "SOAP::SOAPString[]", [0, nil]],
      ["excludedCountries", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::GeoTarget,
    :schema_type => XSD::QName.new(NsV13, "GeoTarget"),
    :schema_element => [
      ["cityTargets", "AdWords::V13::CampaignService::CityTargets", [0, 1]],
      ["countryTargets", "AdWords::V13::CampaignService::CountryTargets", [0, 1]],
      ["metroTargets", "AdWords::V13::CampaignService::MetroTargets", [0, 1]],
      ["proximityTargets", "AdWords::V13::CampaignService::ProximityTargets", [0, 1]],
      ["regionTargets", "AdWords::V13::CampaignService::RegionTargets", [0, 1]],
      ["targetAll", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV13, "LanguageTarget"),
    :schema_element => [
      ["languages", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::MetroTargets,
    :schema_type => XSD::QName.new(NsV13, "MetroTargets"),
    :schema_element => [
      ["excludedMetros", "SOAP::SOAPString[]", [0, nil]],
      ["metros", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV13, "NetworkTarget"),
    :schema_element => [
      ["networkTypes", "AdWords::V13::CampaignService::NetworkType[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::ProximityTargets,
    :schema_type => XSD::QName.new(NsV13, "ProximityTargets"),
    :schema_element => [
      ["circles", "AdWords::V13::CampaignService::Circle[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::RecommendedBudget,
    :schema_type => XSD::QName.new(NsV13, "RecommendedBudget"),
    :schema_element => [
      ["budget", "AdWords::V13::CampaignService::CampaignBudget"],
      ["campaignId", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::RegionTargets,
    :schema_type => XSD::QName.new(NsV13, "RegionTargets"),
    :schema_element => [
      ["excludedRegions", "SOAP::SOAPString[]", [0, nil]],
      ["regions", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::SchedulingInterval,
    :schema_type => XSD::QName.new(NsV13, "SchedulingInterval"),
    :schema_element => [
      ["day", "AdWords::V13::CampaignService::DayOfWeek"],
      ["endHour", "SOAP::SOAPInt"],
      ["endMinute", "SOAP::SOAPInt"],
      ["multiplier", "SOAP::SOAPDouble"],
      ["startHour", "SOAP::SOAPInt"],
      ["startMinute", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::StatsRecord,
    :schema_type => XSD::QName.new(NsV13, "StatsRecord"),
    :schema_element => [
      ["averagePosition", "SOAP::SOAPDouble"],
      ["clicks", "SOAP::SOAPLong"],
      ["conversionRate", "SOAP::SOAPDouble"],
      ["conversions", "SOAP::SOAPLong"],
      ["cost", "SOAP::SOAPLong"],
      ["id", "SOAP::SOAPLong"],
      ["impressions", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::AdScheduleStatus,
    :schema_type => XSD::QName.new(NsV13, "AdScheduleStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::BudgetPeriod,
    :schema_type => XSD::QName.new(NsV13, "BudgetPeriod")
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV13, "CampaignStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::ContentTargeting,
    :schema_type => XSD::QName.new(NsV13, "ContentTargeting")
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV13, "DayOfWeek")
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::NetworkType,
    :schema_type => XSD::QName.new(NsV13, "NetworkType")
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::AddCampaign,
    :schema_name => XSD::QName.new(NsV13, "addCampaign"),
    :schema_element => [
      ["campaign", "AdWords::V13::CampaignService::Campaign"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::AddCampaignList,
    :schema_name => XSD::QName.new(NsV13, "addCampaignList"),
    :schema_element => [
      ["campaigns", "AdWords::V13::CampaignService::Campaign[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::AddCampaignListResponse,
    :schema_name => XSD::QName.new(NsV13, "addCampaignListResponse"),
    :schema_element => [
      ["addCampaignListReturn", "AdWords::V13::CampaignService::Campaign[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::AddCampaignResponse,
    :schema_name => XSD::QName.new(NsV13, "addCampaignResponse"),
    :schema_element => [
      ["addCampaignReturn", "AdWords::V13::CampaignService::Campaign"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::ApiException,
    :schema_name => XSD::QName.new(NsV13, "fault"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::V13::CampaignService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::GetActiveAdWordsCampaigns,
    :schema_name => XSD::QName.new(NsV13, "getActiveAdWordsCampaigns"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::GetActiveAdWordsCampaignsResponse,
    :schema_name => XSD::QName.new(NsV13, "getActiveAdWordsCampaignsResponse"),
    :schema_element => [
      ["getActiveAdWordsCampaignsReturn", "AdWords::V13::CampaignService::Campaign[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::GetAllAdWordsCampaigns,
    :schema_name => XSD::QName.new(NsV13, "getAllAdWordsCampaigns"),
    :schema_element => [
      ["dummy", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::GetAllAdWordsCampaignsResponse,
    :schema_name => XSD::QName.new(NsV13, "getAllAdWordsCampaignsResponse"),
    :schema_element => [
      ["getAllAdWordsCampaignsReturn", "AdWords::V13::CampaignService::Campaign[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::GetCampaign,
    :schema_name => XSD::QName.new(NsV13, "getCampaign"),
    :schema_element => [
      ["id", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::GetCampaignList,
    :schema_name => XSD::QName.new(NsV13, "getCampaignList"),
    :schema_element => [
      ["ids", "SOAP::SOAPInt[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::GetCampaignListResponse,
    :schema_name => XSD::QName.new(NsV13, "getCampaignListResponse"),
    :schema_element => [
      ["getCampaignListReturn", "AdWords::V13::CampaignService::Campaign[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::GetCampaignResponse,
    :schema_name => XSD::QName.new(NsV13, "getCampaignResponse"),
    :schema_element => [
      ["getCampaignReturn", "AdWords::V13::CampaignService::Campaign"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::GetCampaignStats,
    :schema_name => XSD::QName.new(NsV13, "getCampaignStats"),
    :schema_element => [
      ["campaignIds", "SOAP::SOAPInt[]", [1, nil]],
      ["startDay", "SOAP::SOAPDate"],
      ["endDay", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::GetCampaignStatsResponse,
    :schema_name => XSD::QName.new(NsV13, "getCampaignStatsResponse"),
    :schema_element => [
      ["getCampaignStatsReturn", "AdWords::V13::CampaignService::StatsRecord[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::GetConversionOptimizerEligibility,
    :schema_name => XSD::QName.new(NsV13, "getConversionOptimizerEligibility"),
    :schema_element => [
      ["campaignIds", "SOAP::SOAPInt[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::GetConversionOptimizerEligibilityResponse,
    :schema_name => XSD::QName.new(NsV13, "getConversionOptimizerEligibilityResponse"),
    :schema_element => [
      ["getConversionOptimizerEligibilityReturn", "AdWords::V13::CampaignService::ConversionOptimizerEligibility[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::GetOptimizeAdServing,
    :schema_name => XSD::QName.new(NsV13, "getOptimizeAdServing"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::GetOptimizeAdServingResponse,
    :schema_name => XSD::QName.new(NsV13, "getOptimizeAdServingResponse"),
    :schema_element => [
      ["getOptimizeAdServingReturn", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::GetRecommendedBudgetList,
    :schema_name => XSD::QName.new(NsV13, "getRecommendedBudgetList"),
    :schema_element => [
      ["campaignIds", "SOAP::SOAPInt[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::GetRecommendedBudgetListResponse,
    :schema_name => XSD::QName.new(NsV13, "getRecommendedBudgetListResponse"),
    :schema_element => [
      ["getRecommendedBudgetListReturn", "AdWords::V13::CampaignService::CampaignBudget[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::GetRecommendedBudgets,
    :schema_name => XSD::QName.new(NsV13, "getRecommendedBudgets"),
    :schema_element => [
      ["campaignIds", "SOAP::SOAPInt[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::GetRecommendedBudgetsResponse,
    :schema_name => XSD::QName.new(NsV13, "getRecommendedBudgetsResponse"),
    :schema_element => [
      ["getRecommendedBudgetsReturn", "AdWords::V13::CampaignService::RecommendedBudget[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::SetOptimizeAdServing,
    :schema_name => XSD::QName.new(NsV13, "setOptimizeAdServing"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPInt"],
      ["enable", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::SetOptimizeAdServingResponse,
    :schema_name => XSD::QName.new(NsV13, "setOptimizeAdServingResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::UpdateCampaign,
    :schema_name => XSD::QName.new(NsV13, "updateCampaign"),
    :schema_element => [
      ["campaign", "AdWords::V13::CampaignService::Campaign"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::UpdateCampaignList,
    :schema_name => XSD::QName.new(NsV13, "updateCampaignList"),
    :schema_element => [
      ["campaigns", "AdWords::V13::CampaignService::Campaign[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::UpdateCampaignListResponse,
    :schema_name => XSD::QName.new(NsV13, "updateCampaignListResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CampaignService::UpdateCampaignResponse,
    :schema_name => XSD::QName.new(NsV13, "updateCampaignResponse"),
    :schema_element => []
  )

end

end; end; end
