require 'adwords4r/v13/TrafficEstimatorService'
require 'soap/mapping'

module AdWords; module TrafficEstimatorService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV13 = "https://adwords.google.com/api/adwords/v13"

  EncodedRegistry.register(
    :class => AdWords::TrafficEstimatorService::AdGroupEstimate,
    :schema_type => XSD::QName.new(NsV13, "AdGroupEstimate"),
    :schema_element => [
      ["id", "SOAP::SOAPInt", [0, 1]],
      ["keywordEstimates", "AdWords::TrafficEstimatorService::KeywordEstimate[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::TrafficEstimatorService::AdGroupRequest,
    :schema_type => XSD::QName.new(NsV13, "AdGroupRequest"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["keywordRequests", "AdWords::TrafficEstimatorService::KeywordRequest[]", [1, nil]],
      ["maxCpc", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::TrafficEstimatorService::ApiError,
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
    :class => AdWords::TrafficEstimatorService::ApiException,
    :schema_type => XSD::QName.new(NsV13, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::TrafficEstimatorService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::TrafficEstimatorService::CampaignEstimate,
    :schema_type => XSD::QName.new(NsV13, "CampaignEstimate"),
    :schema_element => [
      ["adGroupEstimates", "AdWords::TrafficEstimatorService::AdGroupEstimate[]", [1, nil]],
      ["id", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::TrafficEstimatorService::CampaignRequest,
    :schema_type => XSD::QName.new(NsV13, "CampaignRequest"),
    :schema_element => [
      ["adGroupRequests", "AdWords::TrafficEstimatorService::AdGroupRequest[]", [1, nil]],
      ["geoTargeting", "AdWords::TrafficEstimatorService::GeoTarget", [0, 1]],
      ["id", "SOAP::SOAPInt", [0, 1]],
      ["languageTargeting", "AdWords::TrafficEstimatorService::LanguageTarget", [0, 1]],
      ["networkTargeting", "AdWords::TrafficEstimatorService::NetworkTarget", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::TrafficEstimatorService::Circle,
    :schema_type => XSD::QName.new(NsV13, "Circle"),
    :schema_element => [
      ["latitudeMicroDegrees", "SOAP::SOAPInt"],
      ["longitudeMicroDegrees", "SOAP::SOAPInt"],
      ["radiusMeters", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::TrafficEstimatorService::CityTargets,
    :schema_type => XSD::QName.new(NsV13, "CityTargets"),
    :schema_element => [
      ["cities", "SOAP::SOAPString[]", [0, nil]],
      ["excludedCities", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::TrafficEstimatorService::CountryTargets,
    :schema_type => XSD::QName.new(NsV13, "CountryTargets"),
    :schema_element => [
      ["countries", "SOAP::SOAPString[]", [0, nil]],
      ["excludedCountries", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::TrafficEstimatorService::GeoTarget,
    :schema_type => XSD::QName.new(NsV13, "GeoTarget"),
    :schema_element => [
      ["cityTargets", "AdWords::TrafficEstimatorService::CityTargets", [0, 1]],
      ["countryTargets", "AdWords::TrafficEstimatorService::CountryTargets", [0, 1]],
      ["metroTargets", "AdWords::TrafficEstimatorService::MetroTargets", [0, 1]],
      ["proximityTargets", "AdWords::TrafficEstimatorService::ProximityTargets", [0, 1]],
      ["regionTargets", "AdWords::TrafficEstimatorService::RegionTargets", [0, 1]],
      ["targetAll", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::TrafficEstimatorService::KeywordEstimate,
    :schema_type => XSD::QName.new(NsV13, "KeywordEstimate"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["lowerAvgPosition", "SOAP::SOAPFloat"],
      ["lowerClicksPerDay", "SOAP::SOAPFloat"],
      ["lowerCpc", "SOAP::SOAPLong"],
      ["upperAvgPosition", "SOAP::SOAPFloat"],
      ["upperClicksPerDay", "SOAP::SOAPFloat"],
      ["upperCpc", "SOAP::SOAPLong"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::TrafficEstimatorService::KeywordRequest,
    :schema_type => XSD::QName.new(NsV13, "KeywordRequest"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["maxCpc", "SOAP::SOAPLong", [0, 1]],
      ["negative", "SOAP::SOAPBoolean", [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["type", "AdWords::TrafficEstimatorService::KeywordType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::TrafficEstimatorService::KeywordTrafficRequest,
    :schema_type => XSD::QName.new(NsV13, "KeywordTrafficRequest"),
    :schema_element => [
      ["keywordText", "SOAP::SOAPString"],
      ["keywordType", "AdWords::TrafficEstimatorService::KeywordType"],
      ["language", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::TrafficEstimatorService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV13, "LanguageTarget"),
    :schema_element => [
      ["languages", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::TrafficEstimatorService::MetroTargets,
    :schema_type => XSD::QName.new(NsV13, "MetroTargets"),
    :schema_element => [
      ["excludedMetros", "SOAP::SOAPString[]", [0, nil]],
      ["metros", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::TrafficEstimatorService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV13, "NetworkTarget"),
    :schema_element => [
      ["networkTypes", "AdWords::TrafficEstimatorService::NetworkType[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::TrafficEstimatorService::ProximityTargets,
    :schema_type => XSD::QName.new(NsV13, "ProximityTargets"),
    :schema_element => [
      ["circles", "AdWords::TrafficEstimatorService::Circle[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::TrafficEstimatorService::RegionTargets,
    :schema_type => XSD::QName.new(NsV13, "RegionTargets"),
    :schema_element => [
      ["excludedRegions", "SOAP::SOAPString[]", [0, nil]],
      ["regions", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::TrafficEstimatorService::KeywordTraffic,
    :schema_type => XSD::QName.new(NsV13, "KeywordTraffic")
  )

  EncodedRegistry.register(
    :class => AdWords::TrafficEstimatorService::KeywordType,
    :schema_type => XSD::QName.new(NsV13, "KeywordType")
  )

  EncodedRegistry.register(
    :class => AdWords::TrafficEstimatorService::NetworkType,
    :schema_type => XSD::QName.new(NsV13, "NetworkType")
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::AdGroupEstimate,
    :schema_type => XSD::QName.new(NsV13, "AdGroupEstimate"),
    :schema_element => [
      ["id", "SOAP::SOAPInt", [0, 1]],
      ["keywordEstimates", "AdWords::TrafficEstimatorService::KeywordEstimate[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::AdGroupRequest,
    :schema_type => XSD::QName.new(NsV13, "AdGroupRequest"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["keywordRequests", "AdWords::TrafficEstimatorService::KeywordRequest[]", [1, nil]],
      ["maxCpc", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::ApiError,
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
    :class => AdWords::TrafficEstimatorService::ApiException,
    :schema_type => XSD::QName.new(NsV13, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::TrafficEstimatorService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::CampaignEstimate,
    :schema_type => XSD::QName.new(NsV13, "CampaignEstimate"),
    :schema_element => [
      ["adGroupEstimates", "AdWords::TrafficEstimatorService::AdGroupEstimate[]", [1, nil]],
      ["id", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::CampaignRequest,
    :schema_type => XSD::QName.new(NsV13, "CampaignRequest"),
    :schema_element => [
      ["adGroupRequests", "AdWords::TrafficEstimatorService::AdGroupRequest[]", [1, nil]],
      ["geoTargeting", "AdWords::TrafficEstimatorService::GeoTarget", [0, 1]],
      ["id", "SOAP::SOAPInt", [0, 1]],
      ["languageTargeting", "AdWords::TrafficEstimatorService::LanguageTarget", [0, 1]],
      ["networkTargeting", "AdWords::TrafficEstimatorService::NetworkTarget", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::Circle,
    :schema_type => XSD::QName.new(NsV13, "Circle"),
    :schema_element => [
      ["latitudeMicroDegrees", "SOAP::SOAPInt"],
      ["longitudeMicroDegrees", "SOAP::SOAPInt"],
      ["radiusMeters", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::CityTargets,
    :schema_type => XSD::QName.new(NsV13, "CityTargets"),
    :schema_element => [
      ["cities", "SOAP::SOAPString[]", [0, nil]],
      ["excludedCities", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::CountryTargets,
    :schema_type => XSD::QName.new(NsV13, "CountryTargets"),
    :schema_element => [
      ["countries", "SOAP::SOAPString[]", [0, nil]],
      ["excludedCountries", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::GeoTarget,
    :schema_type => XSD::QName.new(NsV13, "GeoTarget"),
    :schema_element => [
      ["cityTargets", "AdWords::TrafficEstimatorService::CityTargets", [0, 1]],
      ["countryTargets", "AdWords::TrafficEstimatorService::CountryTargets", [0, 1]],
      ["metroTargets", "AdWords::TrafficEstimatorService::MetroTargets", [0, 1]],
      ["proximityTargets", "AdWords::TrafficEstimatorService::ProximityTargets", [0, 1]],
      ["regionTargets", "AdWords::TrafficEstimatorService::RegionTargets", [0, 1]],
      ["targetAll", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::KeywordEstimate,
    :schema_type => XSD::QName.new(NsV13, "KeywordEstimate"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["lowerAvgPosition", "SOAP::SOAPFloat"],
      ["lowerClicksPerDay", "SOAP::SOAPFloat"],
      ["lowerCpc", "SOAP::SOAPLong"],
      ["upperAvgPosition", "SOAP::SOAPFloat"],
      ["upperClicksPerDay", "SOAP::SOAPFloat"],
      ["upperCpc", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::KeywordRequest,
    :schema_type => XSD::QName.new(NsV13, "KeywordRequest"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["maxCpc", "SOAP::SOAPLong", [0, 1]],
      ["negative", "SOAP::SOAPBoolean", [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["type", "AdWords::TrafficEstimatorService::KeywordType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::KeywordTrafficRequest,
    :schema_type => XSD::QName.new(NsV13, "KeywordTrafficRequest"),
    :schema_element => [
      ["keywordText", "SOAP::SOAPString"],
      ["keywordType", "AdWords::TrafficEstimatorService::KeywordType"],
      ["language", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV13, "LanguageTarget"),
    :schema_element => [
      ["languages", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::MetroTargets,
    :schema_type => XSD::QName.new(NsV13, "MetroTargets"),
    :schema_element => [
      ["excludedMetros", "SOAP::SOAPString[]", [0, nil]],
      ["metros", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV13, "NetworkTarget"),
    :schema_element => [
      ["networkTypes", "AdWords::TrafficEstimatorService::NetworkType[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::ProximityTargets,
    :schema_type => XSD::QName.new(NsV13, "ProximityTargets"),
    :schema_element => [
      ["circles", "AdWords::TrafficEstimatorService::Circle[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::RegionTargets,
    :schema_type => XSD::QName.new(NsV13, "RegionTargets"),
    :schema_element => [
      ["excludedRegions", "SOAP::SOAPString[]", [0, nil]],
      ["regions", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::KeywordTraffic,
    :schema_type => XSD::QName.new(NsV13, "KeywordTraffic")
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::KeywordType,
    :schema_type => XSD::QName.new(NsV13, "KeywordType")
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::NetworkType,
    :schema_type => XSD::QName.new(NsV13, "NetworkType")
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::CheckKeywordTraffic,
    :schema_name => XSD::QName.new(NsV13, "checkKeywordTraffic"),
    :schema_element => [
      ["requests", "AdWords::TrafficEstimatorService::KeywordTrafficRequest[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::CheckKeywordTrafficResponse,
    :schema_name => XSD::QName.new(NsV13, "checkKeywordTrafficResponse"),
    :schema_element => [
      ["checkKeywordTrafficReturn", "AdWords::TrafficEstimatorService::KeywordTraffic[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::EstimateAdGroupList,
    :schema_name => XSD::QName.new(NsV13, "estimateAdGroupList"),
    :schema_element => [
      ["adGroupRequests", "AdWords::TrafficEstimatorService::AdGroupRequest[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::EstimateAdGroupListResponse,
    :schema_name => XSD::QName.new(NsV13, "estimateAdGroupListResponse"),
    :schema_element => [
      ["estimateAdGroupListReturn", "AdWords::TrafficEstimatorService::AdGroupEstimate[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::EstimateCampaignList,
    :schema_name => XSD::QName.new(NsV13, "estimateCampaignList"),
    :schema_element => [
      ["campaignRequests", "AdWords::TrafficEstimatorService::CampaignRequest[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::EstimateCampaignListResponse,
    :schema_name => XSD::QName.new(NsV13, "estimateCampaignListResponse"),
    :schema_element => [
      ["estimateCampaignListReturn", "AdWords::TrafficEstimatorService::CampaignEstimate[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::EstimateKeywordList,
    :schema_name => XSD::QName.new(NsV13, "estimateKeywordList"),
    :schema_element => [
      ["keywordRequests", "AdWords::TrafficEstimatorService::KeywordRequest[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::EstimateKeywordListResponse,
    :schema_name => XSD::QName.new(NsV13, "estimateKeywordListResponse"),
    :schema_element => [
      ["estimateKeywordListReturn", "AdWords::TrafficEstimatorService::KeywordEstimate[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::ApiException,
    :schema_name => XSD::QName.new(NsV13, "fault"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::TrafficEstimatorService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

end

end; end
