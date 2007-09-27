require 'adwords4r/v9/TrafficEstimatorService'
require 'soap/mapping'

module AdWords; module TrafficEstimatorService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new

  EncodedRegistry.register(
    :class => AdWords::TrafficEstimatorService::AdGroupEstimate,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "AdGroupEstimate",
    :schema_element => [
      ["id", "SOAP::SOAPInt", [0, 1]],
      ["keywordEstimates", "AdWords::TrafficEstimatorService::KeywordEstimate[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::TrafficEstimatorService::AdGroupRequest,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "AdGroupRequest",
    :schema_element => [
      ["id", "SOAP::SOAPInt", [0, 1]],
      ["keywordRequests", "AdWords::TrafficEstimatorService::KeywordRequest[]", [1, nil]],
      ["maxCpc", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::TrafficEstimatorService::ApiError,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
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
    :class => AdWords::TrafficEstimatorService::ApiException,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "ApiException",
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
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "CampaignEstimate",
    :schema_element => [
      ["adGroupEstimates", "AdWords::TrafficEstimatorService::AdGroupEstimate[]", [1, nil]],
      ["id", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::TrafficEstimatorService::CampaignRequest,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "CampaignRequest",
    :schema_element => [
      ["adGroupRequests", "AdWords::TrafficEstimatorService::AdGroupRequest[]", [1, nil]],
      ["geoTargeting", "AdWords::TrafficEstimatorService::GeoTarget", [0, 1]],
      ["id", "SOAP::SOAPInt", [0, 1]],
      ["languageTargeting", "AdWords::TrafficEstimatorService::LanguageTarget", [0, 1]],
      ["networkTargeting", "AdWords::TrafficEstimatorService::NetworkTarget", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::TrafficEstimatorService::GeoTarget,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "GeoTarget",
    :schema_element => [
      ["cities", "SOAP::SOAPString[]", [1, nil]],
      ["countries", "SOAP::SOAPString[]", [1, nil]],
      ["metros", "SOAP::SOAPString[]", [1, nil]],
      ["regions", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::TrafficEstimatorService::KeywordEstimate,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "KeywordEstimate",
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
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "KeywordRequest",
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["maxCpc", "SOAP::SOAPLong", [0, 1]],
      ["negative", "SOAP::SOAPBoolean", [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["type", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.set(
    AdWords::TrafficEstimatorService::LanguageTarget,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.set(
    AdWords::TrafficEstimatorService::NetworkTarget,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("https://adwords.google.com/api/adwords/v9", "NetworkType") }
  )

  EncodedRegistry.register(
    :class => AdWords::TrafficEstimatorService::KeywordType,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "KeywordType"
  )

  EncodedRegistry.register(
    :class => AdWords::TrafficEstimatorService::NetworkType,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "NetworkType"
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::AdGroupEstimate,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "AdGroupEstimate",
    :schema_qualified => false,
    :schema_element => [
      ["id", "SOAP::SOAPInt", [0, 1]],
      ["keywordEstimates", "AdWords::TrafficEstimatorService::KeywordEstimate[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::AdGroupRequest,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "AdGroupRequest",
    :schema_qualified => false,
    :schema_element => [
      ["id", "SOAP::SOAPInt", [0, 1]],
      ["keywordRequests", "AdWords::TrafficEstimatorService::KeywordRequest[]", [1, nil]],
      ["maxCpc", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::ApiError,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
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
    :class => AdWords::TrafficEstimatorService::ApiException,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "ApiException",
    :schema_qualified => false,
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
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "CampaignEstimate",
    :schema_qualified => false,
    :schema_element => [
      ["adGroupEstimates", "AdWords::TrafficEstimatorService::AdGroupEstimate[]", [1, nil]],
      ["id", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::CampaignRequest,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "CampaignRequest",
    :schema_qualified => false,
    :schema_element => [
      ["adGroupRequests", "AdWords::TrafficEstimatorService::AdGroupRequest[]", [1, nil]],
      ["geoTargeting", "AdWords::TrafficEstimatorService::GeoTarget", [0, 1]],
      ["id", "SOAP::SOAPInt", [0, 1]],
      ["languageTargeting", "AdWords::TrafficEstimatorService::LanguageTarget", [0, 1]],
      ["networkTargeting", "AdWords::TrafficEstimatorService::NetworkTarget", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::GeoTarget,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "GeoTarget",
    :schema_qualified => false,
    :schema_element => [
      ["cities", "SOAP::SOAPString[]", [1, nil]],
      ["countries", "SOAP::SOAPString[]", [1, nil]],
      ["metros", "SOAP::SOAPString[]", [1, nil]],
      ["regions", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::KeywordEstimate,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "KeywordEstimate",
    :schema_qualified => false,
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
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "KeywordRequest",
    :schema_qualified => false,
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["maxCpc", "SOAP::SOAPLong", [0, 1]],
      ["negative", "SOAP::SOAPBoolean", [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["type", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::LanguageTarget,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "LanguageTarget",
    :schema_element => [
      ["languages", ["SOAP::SOAPString[]", XSD::QName.new("https://adwords.google.com/api/adwords/v9", "languages")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::NetworkTarget,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "NetworkTarget",
    :schema_element => [
      ["networkTypes", ["SOAP::SOAPString[]", XSD::QName.new("https://adwords.google.com/api/adwords/v9", "networkTypes")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::KeywordType,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "KeywordType"
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::NetworkType,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "NetworkType"
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::EstimateAdGroupList,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "estimateAdGroupList",
    :schema_element => [
      ["adGroupRequests", ["AdWords::TrafficEstimatorService::AdGroupRequest[]", XSD::QName.new("https://adwords.google.com/api/adwords/v9", "adGroupRequests")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::EstimateAdGroupListResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "estimateAdGroupListResponse",
    :schema_element => [
      ["estimateAdGroupListReturn", ["AdWords::TrafficEstimatorService::AdGroupEstimate[]", XSD::QName.new("https://adwords.google.com/api/adwords/v9", "estimateAdGroupListReturn")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::EstimateCampaignList,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "estimateCampaignList",
    :schema_element => [
      ["campaignRequests", ["AdWords::TrafficEstimatorService::CampaignRequest[]", XSD::QName.new("https://adwords.google.com/api/adwords/v9", "campaignRequests")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::EstimateCampaignListResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "estimateCampaignListResponse",
    :schema_element => [
      ["estimateCampaignListReturn", ["AdWords::TrafficEstimatorService::CampaignEstimate[]", XSD::QName.new("https://adwords.google.com/api/adwords/v9", "estimateCampaignListReturn")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::EstimateKeywordList,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "estimateKeywordList",
    :schema_element => [
      ["keywordRequests", ["AdWords::TrafficEstimatorService::KeywordRequest[]", XSD::QName.new("https://adwords.google.com/api/adwords/v9", "keywordRequests")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::EstimateKeywordListResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "estimateKeywordListResponse",
    :schema_element => [
      ["estimateKeywordListReturn", ["AdWords::TrafficEstimatorService::KeywordEstimate[]", XSD::QName.new("https://adwords.google.com/api/adwords/v9", "estimateKeywordListReturn")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::TrafficEstimatorService::ApiException,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "fault",
    :schema_qualified => true,
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
