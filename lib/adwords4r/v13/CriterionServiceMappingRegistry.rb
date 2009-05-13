require 'adwords4r/v13/CriterionService'
require 'soap/mapping'

module AdWords; module V13; module CriterionService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV13 = "https://adwords.google.com/api/adwords/v13"

  EncodedRegistry.register(
    :class => AdWords::V13::CriterionService::ApiError,
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
    :class => AdWords::V13::CriterionService::ApiException,
    :schema_type => XSD::QName.new(NsV13, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::V13::CriterionService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CriterionService::Circle,
    :schema_type => XSD::QName.new(NsV13, "Circle"),
    :schema_element => [
      ["latitudeMicroDegrees", "SOAP::SOAPInt"],
      ["longitudeMicroDegrees", "SOAP::SOAPInt"],
      ["radiusMeters", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CriterionService::CityTargets,
    :schema_type => XSD::QName.new(NsV13, "CityTargets"),
    :schema_element => [
      ["cities", "SOAP::SOAPString[]", [0, nil]],
      ["excludedCities", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CriterionService::CountryTargets,
    :schema_type => XSD::QName.new(NsV13, "CountryTargets"),
    :schema_element => [
      ["countries", "SOAP::SOAPString[]", [0, nil]],
      ["excludedCountries", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CriterionService::GeoTarget,
    :schema_type => XSD::QName.new(NsV13, "GeoTarget"),
    :schema_element => [
      ["cityTargets", "AdWords::V13::CriterionService::CityTargets", [0, 1]],
      ["countryTargets", "AdWords::V13::CriterionService::CountryTargets", [0, 1]],
      ["metroTargets", "AdWords::V13::CriterionService::MetroTargets", [0, 1]],
      ["proximityTargets", "AdWords::V13::CriterionService::ProximityTargets", [0, 1]],
      ["regionTargets", "AdWords::V13::CriterionService::RegionTargets", [0, 1]],
      ["targetAll", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CriterionService::Keyword,
    :schema_type => XSD::QName.new(NsV13, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV13, "Criterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong"],
      ["criterionType", "AdWords::V13::CriterionService::CriterionType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["language", "SOAP::SOAPString"],
      ["negative", "SOAP::SOAPBoolean"],
      ["paused", "SOAP::SOAPBoolean", [0, 1]],
      ["status", "AdWords::V13::CriterionService::CriterionStatus", [0, 1]],
      ["firstPageCpc", "SOAP::SOAPLong", [0, 1]],
      ["maxCpc", "SOAP::SOAPLong", [0, 1]],
      ["proxyMaxCpc", "SOAP::SOAPLong", [0, 1]],
      ["qualityScore", "SOAP::SOAPInt", [0, 1]],
      ["text", "SOAP::SOAPString"],
      ["type", "AdWords::V13::CriterionService::KeywordType"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CriterionService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV13, "LanguageTarget"),
    :schema_element => [
      ["languages", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CriterionService::MetroTargets,
    :schema_type => XSD::QName.new(NsV13, "MetroTargets"),
    :schema_element => [
      ["excludedMetros", "SOAP::SOAPString[]", [0, nil]],
      ["metros", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CriterionService::ProximityTargets,
    :schema_type => XSD::QName.new(NsV13, "ProximityTargets"),
    :schema_element => [
      ["circles", "AdWords::V13::CriterionService::Circle[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CriterionService::RegionTargets,
    :schema_type => XSD::QName.new(NsV13, "RegionTargets"),
    :schema_element => [
      ["excludedRegions", "SOAP::SOAPString[]", [0, nil]],
      ["regions", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CriterionService::StatsRecord,
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
    :class => AdWords::V13::CriterionService::Website,
    :schema_type => XSD::QName.new(NsV13, "Website"),
    :schema_basetype => XSD::QName.new(NsV13, "Criterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong"],
      ["criterionType", "AdWords::V13::CriterionService::CriterionType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["language", "SOAP::SOAPString"],
      ["negative", "SOAP::SOAPBoolean"],
      ["paused", "SOAP::SOAPBoolean", [0, 1]],
      ["status", "AdWords::V13::CriterionService::CriterionStatus", [0, 1]],
      ["maxCpc", "SOAP::SOAPLong", [0, 1]],
      ["maxCpm", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CriterionService::CriterionStatus,
    :schema_type => XSD::QName.new(NsV13, "CriterionStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CriterionService::CriterionType,
    :schema_type => XSD::QName.new(NsV13, "CriterionType")
  )

  EncodedRegistry.register(
    :class => AdWords::V13::CriterionService::KeywordType,
    :schema_type => XSD::QName.new(NsV13, "KeywordType")
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::ApiError,
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
    :class => AdWords::V13::CriterionService::ApiException,
    :schema_type => XSD::QName.new(NsV13, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::V13::CriterionService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::Circle,
    :schema_type => XSD::QName.new(NsV13, "Circle"),
    :schema_element => [
      ["latitudeMicroDegrees", "SOAP::SOAPInt"],
      ["longitudeMicroDegrees", "SOAP::SOAPInt"],
      ["radiusMeters", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::CityTargets,
    :schema_type => XSD::QName.new(NsV13, "CityTargets"),
    :schema_element => [
      ["cities", "SOAP::SOAPString[]", [0, nil]],
      ["excludedCities", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::CountryTargets,
    :schema_type => XSD::QName.new(NsV13, "CountryTargets"),
    :schema_element => [
      ["countries", "SOAP::SOAPString[]", [0, nil]],
      ["excludedCountries", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::GeoTarget,
    :schema_type => XSD::QName.new(NsV13, "GeoTarget"),
    :schema_element => [
      ["cityTargets", "AdWords::V13::CriterionService::CityTargets", [0, 1]],
      ["countryTargets", "AdWords::V13::CriterionService::CountryTargets", [0, 1]],
      ["metroTargets", "AdWords::V13::CriterionService::MetroTargets", [0, 1]],
      ["proximityTargets", "AdWords::V13::CriterionService::ProximityTargets", [0, 1]],
      ["regionTargets", "AdWords::V13::CriterionService::RegionTargets", [0, 1]],
      ["targetAll", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::Keyword,
    :schema_type => XSD::QName.new(NsV13, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV13, "Criterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong"],
      ["criterionType", "AdWords::V13::CriterionService::CriterionType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["language", "SOAP::SOAPString"],
      ["negative", "SOAP::SOAPBoolean"],
      ["paused", "SOAP::SOAPBoolean", [0, 1]],
      ["status", "AdWords::V13::CriterionService::CriterionStatus", [0, 1]],
      ["firstPageCpc", "SOAP::SOAPLong", [0, 1]],
      ["maxCpc", "SOAP::SOAPLong", [0, 1]],
      ["proxyMaxCpc", "SOAP::SOAPLong", [0, 1]],
      ["qualityScore", "SOAP::SOAPInt", [0, 1]],
      ["text", "SOAP::SOAPString"],
      ["type", "AdWords::V13::CriterionService::KeywordType"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV13, "LanguageTarget"),
    :schema_element => [
      ["languages", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::MetroTargets,
    :schema_type => XSD::QName.new(NsV13, "MetroTargets"),
    :schema_element => [
      ["excludedMetros", "SOAP::SOAPString[]", [0, nil]],
      ["metros", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::ProximityTargets,
    :schema_type => XSD::QName.new(NsV13, "ProximityTargets"),
    :schema_element => [
      ["circles", "AdWords::V13::CriterionService::Circle[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::RegionTargets,
    :schema_type => XSD::QName.new(NsV13, "RegionTargets"),
    :schema_element => [
      ["excludedRegions", "SOAP::SOAPString[]", [0, nil]],
      ["regions", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::StatsRecord,
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
    :class => AdWords::V13::CriterionService::Website,
    :schema_type => XSD::QName.new(NsV13, "Website"),
    :schema_basetype => XSD::QName.new(NsV13, "Criterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong"],
      ["criterionType", "AdWords::V13::CriterionService::CriterionType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["language", "SOAP::SOAPString"],
      ["negative", "SOAP::SOAPBoolean"],
      ["paused", "SOAP::SOAPBoolean", [0, 1]],
      ["status", "AdWords::V13::CriterionService::CriterionStatus", [0, 1]],
      ["maxCpc", "SOAP::SOAPLong", [0, 1]],
      ["maxCpm", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::CriterionStatus,
    :schema_type => XSD::QName.new(NsV13, "CriterionStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::CriterionType,
    :schema_type => XSD::QName.new(NsV13, "CriterionType")
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::KeywordType,
    :schema_type => XSD::QName.new(NsV13, "KeywordType")
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::AddCriteria,
    :schema_name => XSD::QName.new(NsV13, "addCriteria"),
    :schema_element => [
      ["criteria", "AdWords::V13::CriterionService::Criterion[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::AddCriteriaResponse,
    :schema_name => XSD::QName.new(NsV13, "addCriteriaResponse"),
    :schema_element => [
      ["addCriteriaReturn", "AdWords::V13::CriterionService::Criterion[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::CheckCriteria,
    :schema_name => XSD::QName.new(NsV13, "checkCriteria"),
    :schema_element => [
      ["criteria", "AdWords::V13::CriterionService::Criterion[]", [1, nil]],
      ["languageTarget", "AdWords::V13::CriterionService::LanguageTarget"],
      ["geoTarget", "AdWords::V13::CriterionService::GeoTarget"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::CheckCriteriaResponse,
    :schema_name => XSD::QName.new(NsV13, "checkCriteriaResponse"),
    :schema_element => [
      ["checkCriteriaReturn", "AdWords::V13::CriterionService::ApiError[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::ApiException,
    :schema_name => XSD::QName.new(NsV13, "fault"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::V13::CriterionService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::GetAllCriteria,
    :schema_name => XSD::QName.new(NsV13, "getAllCriteria"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::GetAllCriteriaResponse,
    :schema_name => XSD::QName.new(NsV13, "getAllCriteriaResponse"),
    :schema_element => [
      ["getAllCriteriaReturn", "AdWords::V13::CriterionService::Criterion[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::GetCampaignNegativeCriteria,
    :schema_name => XSD::QName.new(NsV13, "getCampaignNegativeCriteria"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::GetCampaignNegativeCriteriaResponse,
    :schema_name => XSD::QName.new(NsV13, "getCampaignNegativeCriteriaResponse"),
    :schema_element => [
      ["getCampaignNegativeCriteriaReturn", "AdWords::V13::CriterionService::Criterion[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::GetCriteria,
    :schema_name => XSD::QName.new(NsV13, "getCriteria"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong"],
      ["criterionIds", "SOAP::SOAPLong[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::GetCriteriaResponse,
    :schema_name => XSD::QName.new(NsV13, "getCriteriaResponse"),
    :schema_element => [
      ["getCriteriaReturn", "AdWords::V13::CriterionService::Criterion[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::GetCriterionStats,
    :schema_name => XSD::QName.new(NsV13, "getCriterionStats"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong"],
      ["criterionIds", "SOAP::SOAPLong[]", [1, nil]],
      ["startDay", "SOAP::SOAPDate"],
      ["endDay", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::GetCriterionStatsResponse,
    :schema_name => XSD::QName.new(NsV13, "getCriterionStatsResponse"),
    :schema_element => [
      ["getCriterionStatsReturn", "AdWords::V13::CriterionService::StatsRecord[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::RemoveCriteria,
    :schema_name => XSD::QName.new(NsV13, "removeCriteria"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong"],
      ["criterionIds", "SOAP::SOAPLong[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::RemoveCriteriaResponse,
    :schema_name => XSD::QName.new(NsV13, "removeCriteriaResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::SetCampaignNegativeCriteria,
    :schema_name => XSD::QName.new(NsV13, "setCampaignNegativeCriteria"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPInt"],
      ["criteria", "AdWords::V13::CriterionService::Criterion[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::SetCampaignNegativeCriteriaResponse,
    :schema_name => XSD::QName.new(NsV13, "setCampaignNegativeCriteriaResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::UpdateCriteria,
    :schema_name => XSD::QName.new(NsV13, "updateCriteria"),
    :schema_element => [
      ["criteria", "AdWords::V13::CriterionService::Criterion[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::CriterionService::UpdateCriteriaResponse,
    :schema_name => XSD::QName.new(NsV13, "updateCriteriaResponse"),
    :schema_element => []
  )

end

end; end; end
