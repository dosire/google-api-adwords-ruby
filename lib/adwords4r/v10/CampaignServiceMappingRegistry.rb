require 'adwords4r/v10/CampaignService'
require 'soap/mapping'

module AdWords; module CampaignService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new

  EncodedRegistry.register(
    :class => AdWords::CampaignService::AdSchedule,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "AdSchedule",
    :schema_element => [
      ["intervals", "AdWords::CampaignService::SchedulingInterval[]", [1, nil]],
      ["status", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::CampaignService::ApiError,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "ApiError",
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
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "ApiException",
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
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "BudgetOptimizerSettings",
    :schema_element => [
      ["bidCeiling", "SOAP::SOAPLong", [0, 1]],
      ["enabled", "SOAP::SOAPBoolean", [0, 1]],
      ["takeOnOptimizedBids", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::CampaignService::Campaign,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "Campaign",
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
      ["status", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::CampaignService::Circle,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "Circle",
    :schema_element => [
      ["latitudeMicroDegrees", "SOAP::SOAPInt"],
      ["longitudeMicroDegrees", "SOAP::SOAPInt"],
      ["radiusMeters", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.set(
    AdWords::CampaignService::CityTargets,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.set(
    AdWords::CampaignService::CountryTargets,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.register(
    :class => AdWords::CampaignService::GeoTarget,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "GeoTarget",
    :schema_element => [
      ["cityTargets", "AdWords::CampaignService::CityTargets", [0, 1]],
      ["countryTargets", "AdWords::CampaignService::CountryTargets", [0, 1]],
      ["metroTargets", "AdWords::CampaignService::MetroTargets", [0, 1]],
      ["proximityTargets", "AdWords::CampaignService::ProximityTargets", [0, 1]],
      ["regionTargets", "AdWords::CampaignService::RegionTargets", [0, 1]],
      ["targetAll", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.set(
    AdWords::CampaignService::LanguageTarget,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.set(
    AdWords::CampaignService::MetroTargets,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.set(
    AdWords::CampaignService::NetworkTarget,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("https://adwords.google.com/api/adwords/v10", "NetworkType") }
  )

  EncodedRegistry.set(
    AdWords::CampaignService::ProximityTargets,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("https://adwords.google.com/api/adwords/v10", "Circle") }
  )

  EncodedRegistry.set(
    AdWords::CampaignService::RegionTargets,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.register(
    :class => AdWords::CampaignService::SchedulingInterval,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "SchedulingInterval",
    :schema_element => [
      ["day", "SOAP::SOAPString"],
      ["endHour", "SOAP::SOAPInt"],
      ["endMinute", "SOAP::SOAPInt"],
      ["multiplier", "SOAP::SOAPDouble"],
      ["startHour", "SOAP::SOAPInt"],
      ["startMinute", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::CampaignService::StatsRecord,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "StatsRecord",
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
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "AdScheduleStatus"
  )

  EncodedRegistry.register(
    :class => AdWords::CampaignService::CampaignStatus,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "CampaignStatus"
  )

  EncodedRegistry.register(
    :class => AdWords::CampaignService::DayOfWeek,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "DayOfWeek"
  )

  EncodedRegistry.register(
    :class => AdWords::CampaignService::NetworkType,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "NetworkType"
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::AdSchedule,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "AdSchedule",
    :schema_qualified => false,
    :schema_element => [
      ["intervals", "AdWords::CampaignService::SchedulingInterval[]", [1, nil]],
      ["status", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::ApiError,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "ApiError",
    :schema_qualified => false,
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
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "ApiException",
    :schema_qualified => false,
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
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "BudgetOptimizerSettings",
    :schema_qualified => false,
    :schema_element => [
      ["bidCeiling", "SOAP::SOAPLong", [0, 1]],
      ["enabled", "SOAP::SOAPBoolean", [0, 1]],
      ["takeOnOptimizedBids", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::Campaign,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "Campaign",
    :schema_qualified => false,
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
      ["status", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::Circle,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "Circle",
    :schema_qualified => false,
    :schema_element => [
      ["latitudeMicroDegrees", "SOAP::SOAPInt"],
      ["longitudeMicroDegrees", "SOAP::SOAPInt"],
      ["radiusMeters", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::CityTargets,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "CityTargets",
    :schema_element => [
      ["cities", ["SOAP::SOAPString[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "cities")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::CountryTargets,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "CountryTargets",
    :schema_element => [
      ["countries", ["SOAP::SOAPString[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "countries")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::GeoTarget,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "GeoTarget",
    :schema_qualified => false,
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
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "LanguageTarget",
    :schema_element => [
      ["languages", ["SOAP::SOAPString[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "languages")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::MetroTargets,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "MetroTargets",
    :schema_element => [
      ["metros", ["SOAP::SOAPString[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "metros")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::NetworkTarget,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "NetworkTarget",
    :schema_element => [
      ["networkTypes", ["SOAP::SOAPString[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "networkTypes")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::ProximityTargets,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "ProximityTargets",
    :schema_element => [
      ["circles", ["AdWords::CampaignService::Circle[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "circles")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::RegionTargets,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "RegionTargets",
    :schema_element => [
      ["regions", ["SOAP::SOAPString[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "regions")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::SchedulingInterval,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "SchedulingInterval",
    :schema_qualified => false,
    :schema_element => [
      ["day", "SOAP::SOAPString"],
      ["endHour", "SOAP::SOAPInt"],
      ["endMinute", "SOAP::SOAPInt"],
      ["multiplier", "SOAP::SOAPDouble"],
      ["startHour", "SOAP::SOAPInt"],
      ["startMinute", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::StatsRecord,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "StatsRecord",
    :schema_qualified => false,
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
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "AdScheduleStatus"
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::CampaignStatus,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "CampaignStatus"
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::DayOfWeek,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "DayOfWeek"
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::NetworkType,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "NetworkType"
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::AddCampaign,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "addCampaign",
    :schema_qualified => true,
    :schema_element => [
      ["campaign", "AdWords::CampaignService::Campaign"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::AddCampaignList,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "addCampaignList",
    :schema_element => [
      ["campaigns", ["AdWords::CampaignService::Campaign[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "campaigns")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::AddCampaignListResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "addCampaignListResponse",
    :schema_element => [
      ["addCampaignListReturn", ["AdWords::CampaignService::Campaign[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "addCampaignListReturn")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::AddCampaignResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "addCampaignResponse",
    :schema_qualified => true,
    :schema_element => [
      ["addCampaignReturn", "AdWords::CampaignService::Campaign"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::ApiException,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "fault",
    :schema_qualified => true,
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
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getAllAdWordsCampaigns",
    :schema_qualified => true,
    :schema_element => [
      ["dummy", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::GetAllAdWordsCampaignsResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getAllAdWordsCampaignsResponse",
    :schema_element => [
      ["getAllAdWordsCampaignsReturn", ["AdWords::CampaignService::Campaign[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "getAllAdWordsCampaignsReturn")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::GetCampaign,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getCampaign",
    :schema_qualified => true,
    :schema_element => [
      ["id", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::GetCampaignList,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getCampaignList",
    :schema_element => [
      ["ids", ["SOAP::SOAPInt[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "ids")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::GetCampaignListResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getCampaignListResponse",
    :schema_element => [
      ["getCampaignListReturn", ["AdWords::CampaignService::Campaign[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "getCampaignListReturn")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::GetCampaignResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getCampaignResponse",
    :schema_qualified => true,
    :schema_element => [
      ["getCampaignReturn", "AdWords::CampaignService::Campaign"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::GetCampaignStats,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getCampaignStats",
    :schema_qualified => true,
    :schema_element => [
      ["campaignIds", "SOAP::SOAPInt[]", [1, nil]],
      ["startDay", "SOAP::SOAPDate"],
      ["endDay", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::GetCampaignStatsResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getCampaignStatsResponse",
    :schema_element => [
      ["getCampaignStatsReturn", ["AdWords::CampaignService::StatsRecord[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "getCampaignStatsReturn")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::GetOptimizeAdServing,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getOptimizeAdServing",
    :schema_qualified => true,
    :schema_element => [
      ["campaignId", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::GetOptimizeAdServingResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getOptimizeAdServingResponse",
    :schema_qualified => true,
    :schema_element => [
      ["getOptimizeAdServingReturn", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::SetOptimizeAdServing,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "setOptimizeAdServing",
    :schema_qualified => true,
    :schema_element => [
      ["campaignId", "SOAP::SOAPInt"],
      ["enable", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::SetOptimizeAdServingResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "setOptimizeAdServingResponse",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::UpdateCampaign,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "updateCampaign",
    :schema_qualified => true,
    :schema_element => [
      ["campaign", "AdWords::CampaignService::Campaign"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::UpdateCampaignList,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "updateCampaignList",
    :schema_element => [
      ["campaigns", ["AdWords::CampaignService::Campaign[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "campaigns")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::UpdateCampaignListResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "updateCampaignListResponse",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::CampaignService::UpdateCampaignResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "updateCampaignResponse",
    :schema_qualified => true,
    :schema_element => []
  )
end

end; end
