require 'adwords4r/v11/CampaignService'
require 'soap/mapping'

module AdWords; module CampaignService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV11 = "https://adwords.google.com/api/adwords/v11"

  EncodedRegistry.register(
    :class => AdWords::CampaignService::AdSchedule,
    :schema_type => XSD::QName.new(NsV11, "AdSchedule"),
    :schema_element => [
      ["intervals", "AdWords::CampaignService::SchedulingInterval[]", [1, nil]],
      ["status", "AdWords::CampaignService::AdScheduleStatus"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::CampaignService::ApiError,
    :schema_type => XSD::QName.new(NsV11, "ApiError"),
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
    :class => AdWords::CampaignService::ApiException,
    :schema_type => XSD::QName.new(NsV11, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::CampaignService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::CampaignService::BudgetOptimizerSettings,
    :schema_type => XSD::QName.new(NsV11, "BudgetOptimizerSettings"),
    :schema_element => [
      ["bidCeiling", "SOAP::SOAPLong", [0, 1]],
      ["enabled", "SOAP::SOAPBoolean", [0, 1]],
      ["takeOnOptimizedBids", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::CampaignService::Campaign,
    :schema_type => XSD::QName.new(NsV11, "Campaign"),
    :schema_element => [
      ["budgetOptimizerSettings", "AdWords::CampaignService::BudgetOptimizerSettings"],
      ["dailyBudget", "SOAP::SOAPLong", [0, 1]],
      ["enableSeparateContentBids", "SOAP::SOAPBoolean"],
      ["endDay", "SOAP::SOAPDate", [0, 1]],
      ["geoTargeting", "AdWords::CampaignService::GeoTarget"],
      ["id", "SOAP::SOAPInt"],
      ["languageTargeting", "AdWords::CampaignService::LanguageTarget"],
      ["name", "SOAP::SOAPString"],
      ["networkTargeting", "AdWords::CampaignService::NetworkTarget"],
      ["schedule", "AdWords::CampaignService::AdSchedule"],
      ["startDay", "SOAP::SOAPDate", [0, 1]],
      ["status", "AdWords::CampaignService::CampaignStatus"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::CampaignService::Circle,
    :schema_type => XSD::QName.new(NsV11, "Circle"),
    :schema_element => [
      ["latitudeMicroDegrees", "SOAP::SOAPInt"],
      ["longitudeMicroDegrees", "SOAP::SOAPInt"],
      ["radiusMeters", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::CampaignService::CityTargets,
    :schema_type => XSD::QName.new(NsV11, "CityTargets"),
    :schema_element => [
      ["cities", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::CampaignService::CountryTargets,
    :schema_type => XSD::QName.new(NsV11, "CountryTargets"),
    :schema_element => [
      ["countries", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::CampaignService::GeoTarget,
    :schema_type => XSD::QName.new(NsV11, "GeoTarget"),
    :schema_element => [
      ["cityTargets", "AdWords::CampaignService::CityTargets", [0, 1]],
      ["countryTargets", "AdWords::CampaignService::CountryTargets", [0, 1]],
      ["metroTargets", "AdWords::CampaignService::MetroTargets", [0, 1]],
      ["proximityTargets", "AdWords::CampaignService::ProximityTargets", [0, 1]],
      ["regionTargets", "AdWords::CampaignService::RegionTargets", [0, 1]],
      ["targetAll", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::CampaignService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV11, "LanguageTarget"),
    :schema_element => [
      ["languages", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::CampaignService::MetroTargets,
    :schema_type => XSD::QName.new(NsV11, "MetroTargets"),
    :schema_element => [
      ["metros", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::CampaignService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV11, "NetworkTarget"),
    :schema_element => [
      ["networkTypes", "AdWords::CampaignService::NetworkType[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::CampaignService::ProximityTargets,
    :schema_type => XSD::QName.new(NsV11, "ProximityTargets"),
    :schema_element => [
      ["circles", "AdWords::CampaignService::Circle[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::CampaignService::RegionTargets,
    :schema_type => XSD::QName.new(NsV11, "RegionTargets"),
    :schema_element => [
      ["regions", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::CampaignService::SchedulingInterval,
    :schema_type => XSD::QName.new(NsV11, "SchedulingInterval"),
    :schema_element => [
      ["day", "AdWords::CampaignService::DayOfWeek"],
      ["endHour", "SOAP::SOAPInt"],
      ["endMinute", "SOAP::SOAPInt"],
      ["multiplier", "SOAP::SOAPDouble"],
      ["startHour", "SOAP::SOAPInt"],
      ["startMinute", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::CampaignService::StatsRecord,
    :schema_type => XSD::QName.new(NsV11, "StatsRecord"),
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
    :class => AdWords::CampaignService::AdScheduleStatus,
    :schema_type => XSD::QName.new(NsV11, "AdScheduleStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::CampaignService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV11, "CampaignStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::CampaignService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV11, "DayOfWeek")
  )

  EncodedRegistry.register(
    :class => AdWords::CampaignService::NetworkType,
    :schema_type => XSD::QName.new(NsV11, "NetworkType")
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::AdSchedule,
    :schema_type => XSD::QName.new(NsV11, "AdSchedule"),
    :schema_element => [
      ["intervals", "AdWords::CampaignService::SchedulingInterval[]", [1, nil]],
      ["status", "AdWords::CampaignService::AdScheduleStatus"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::ApiError,
    :schema_type => XSD::QName.new(NsV11, "ApiError"),
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
    :class => AdWords::CampaignService::ApiException,
    :schema_type => XSD::QName.new(NsV11, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::CampaignService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::BudgetOptimizerSettings,
    :schema_type => XSD::QName.new(NsV11, "BudgetOptimizerSettings"),
    :schema_element => [
      ["bidCeiling", "SOAP::SOAPLong", [0, 1]],
      ["enabled", "SOAP::SOAPBoolean", [0, 1]],
      ["takeOnOptimizedBids", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::Campaign,
    :schema_type => XSD::QName.new(NsV11, "Campaign"),
    :schema_element => [
      ["budgetOptimizerSettings", "AdWords::CampaignService::BudgetOptimizerSettings"],
      ["dailyBudget", "SOAP::SOAPLong", [0, 1]],
      ["enableSeparateContentBids", "SOAP::SOAPBoolean"],
      ["endDay", "SOAP::SOAPDate", [0, 1]],
      ["geoTargeting", "AdWords::CampaignService::GeoTarget"],
      ["id", "SOAP::SOAPInt"],
      ["languageTargeting", "AdWords::CampaignService::LanguageTarget"],
      ["name", "SOAP::SOAPString"],
      ["networkTargeting", "AdWords::CampaignService::NetworkTarget"],
      ["schedule", "AdWords::CampaignService::AdSchedule"],
      ["startDay", "SOAP::SOAPDate", [0, 1]],
      ["status", "AdWords::CampaignService::CampaignStatus"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::Circle,
    :schema_type => XSD::QName.new(NsV11, "Circle"),
    :schema_element => [
      ["latitudeMicroDegrees", "SOAP::SOAPInt"],
      ["longitudeMicroDegrees", "SOAP::SOAPInt"],
      ["radiusMeters", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::CityTargets,
    :schema_type => XSD::QName.new(NsV11, "CityTargets"),
    :schema_element => [
      ["cities", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::CountryTargets,
    :schema_type => XSD::QName.new(NsV11, "CountryTargets"),
    :schema_element => [
      ["countries", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::GeoTarget,
    :schema_type => XSD::QName.new(NsV11, "GeoTarget"),
    :schema_element => [
      ["cityTargets", "AdWords::CampaignService::CityTargets", [0, 1]],
      ["countryTargets", "AdWords::CampaignService::CountryTargets", [0, 1]],
      ["metroTargets", "AdWords::CampaignService::MetroTargets", [0, 1]],
      ["proximityTargets", "AdWords::CampaignService::ProximityTargets", [0, 1]],
      ["regionTargets", "AdWords::CampaignService::RegionTargets", [0, 1]],
      ["targetAll", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV11, "LanguageTarget"),
    :schema_element => [
      ["languages", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::MetroTargets,
    :schema_type => XSD::QName.new(NsV11, "MetroTargets"),
    :schema_element => [
      ["metros", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV11, "NetworkTarget"),
    :schema_element => [
      ["networkTypes", "AdWords::CampaignService::NetworkType[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::ProximityTargets,
    :schema_type => XSD::QName.new(NsV11, "ProximityTargets"),
    :schema_element => [
      ["circles", "AdWords::CampaignService::Circle[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::RegionTargets,
    :schema_type => XSD::QName.new(NsV11, "RegionTargets"),
    :schema_element => [
      ["regions", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::SchedulingInterval,
    :schema_type => XSD::QName.new(NsV11, "SchedulingInterval"),
    :schema_element => [
      ["day", "AdWords::CampaignService::DayOfWeek"],
      ["endHour", "SOAP::SOAPInt"],
      ["endMinute", "SOAP::SOAPInt"],
      ["multiplier", "SOAP::SOAPDouble"],
      ["startHour", "SOAP::SOAPInt"],
      ["startMinute", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::StatsRecord,
    :schema_type => XSD::QName.new(NsV11, "StatsRecord"),
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
    :class => AdWords::CampaignService::AdScheduleStatus,
    :schema_type => XSD::QName.new(NsV11, "AdScheduleStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV11, "CampaignStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV11, "DayOfWeek")
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::NetworkType,
    :schema_type => XSD::QName.new(NsV11, "NetworkType")
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::AddCampaign,
    :schema_name => XSD::QName.new(NsV11, "addCampaign"),
    :schema_element => [
      ["campaign", "AdWords::CampaignService::Campaign"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::AddCampaignList,
    :schema_name => XSD::QName.new(NsV11, "addCampaignList"),
    :schema_element => [
      ["campaigns", "AdWords::CampaignService::Campaign[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::AddCampaignListResponse,
    :schema_name => XSD::QName.new(NsV11, "addCampaignListResponse"),
    :schema_element => [
      ["addCampaignListReturn", "AdWords::CampaignService::Campaign[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::AddCampaignResponse,
    :schema_name => XSD::QName.new(NsV11, "addCampaignResponse"),
    :schema_element => [
      ["addCampaignReturn", "AdWords::CampaignService::Campaign"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::ApiException,
    :schema_name => XSD::QName.new(NsV11, "fault"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::CampaignService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::GetAllAdWordsCampaigns,
    :schema_name => XSD::QName.new(NsV11, "getAllAdWordsCampaigns"),
    :schema_element => [
      ["dummy", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::GetAllAdWordsCampaignsResponse,
    :schema_name => XSD::QName.new(NsV11, "getAllAdWordsCampaignsResponse"),
    :schema_element => [
      ["getAllAdWordsCampaignsReturn", "AdWords::CampaignService::Campaign[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::GetCampaign,
    :schema_name => XSD::QName.new(NsV11, "getCampaign"),
    :schema_element => [
      ["id", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::GetCampaignList,
    :schema_name => XSD::QName.new(NsV11, "getCampaignList"),
    :schema_element => [
      ["ids", "SOAP::SOAPInt[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::GetCampaignListResponse,
    :schema_name => XSD::QName.new(NsV11, "getCampaignListResponse"),
    :schema_element => [
      ["getCampaignListReturn", "AdWords::CampaignService::Campaign[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::GetCampaignResponse,
    :schema_name => XSD::QName.new(NsV11, "getCampaignResponse"),
    :schema_element => [
      ["getCampaignReturn", "AdWords::CampaignService::Campaign"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::GetCampaignStats,
    :schema_name => XSD::QName.new(NsV11, "getCampaignStats"),
    :schema_element => [
      ["campaignIds", "SOAP::SOAPInt[]", [1, nil]],
      ["startDay", "SOAP::SOAPDate"],
      ["endDay", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::GetCampaignStatsResponse,
    :schema_name => XSD::QName.new(NsV11, "getCampaignStatsResponse"),
    :schema_element => [
      ["getCampaignStatsReturn", "AdWords::CampaignService::StatsRecord[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::GetOptimizeAdServing,
    :schema_name => XSD::QName.new(NsV11, "getOptimizeAdServing"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::GetOptimizeAdServingResponse,
    :schema_name => XSD::QName.new(NsV11, "getOptimizeAdServingResponse"),
    :schema_element => [
      ["getOptimizeAdServingReturn", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::SetOptimizeAdServing,
    :schema_name => XSD::QName.new(NsV11, "setOptimizeAdServing"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPInt"],
      ["enable", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::SetOptimizeAdServingResponse,
    :schema_name => XSD::QName.new(NsV11, "setOptimizeAdServingResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::UpdateCampaign,
    :schema_name => XSD::QName.new(NsV11, "updateCampaign"),
    :schema_element => [
      ["campaign", "AdWords::CampaignService::Campaign"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::UpdateCampaignList,
    :schema_name => XSD::QName.new(NsV11, "updateCampaignList"),
    :schema_element => [
      ["campaigns", "AdWords::CampaignService::Campaign[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::UpdateCampaignListResponse,
    :schema_name => XSD::QName.new(NsV11, "updateCampaignListResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::UpdateCampaignResponse,
    :schema_name => XSD::QName.new(NsV11, "updateCampaignResponse"),
    :schema_element => []
  )

end

end; end
