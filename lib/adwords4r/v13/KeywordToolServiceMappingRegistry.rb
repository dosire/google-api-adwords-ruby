require 'adwords4r/v13/KeywordToolService'
require 'soap/mapping'

module AdWords; module V13; module KeywordToolService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV13 = "https://adwords.google.com/api/adwords/v13"

  EncodedRegistry.register(
    :class => AdWords::V13::KeywordToolService::ApiError,
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
    :class => AdWords::V13::KeywordToolService::ApiException,
    :schema_type => XSD::QName.new(NsV13, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::V13::KeywordToolService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::KeywordToolService::KeywordVariation,
    :schema_type => XSD::QName.new(NsV13, "KeywordVariation"),
    :schema_element => [
      ["advertiserCompetitionScale", "SOAP::SOAPInt"],
      ["avgSearchVolume", "SOAP::SOAPLong"],
      ["language", "SOAP::SOAPString"],
      ["lastMonthSearchVolume", "SOAP::SOAPLong"],
      ["text", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::KeywordToolService::KeywordVariations,
    :schema_type => XSD::QName.new(NsV13, "KeywordVariations"),
    :schema_element => [
      ["additionalToConsider", "AdWords::V13::KeywordToolService::KeywordVariation[]", [1, nil]],
      ["moreSpecific", "AdWords::V13::KeywordToolService::KeywordVariation[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::KeywordToolService::SeedKeyword,
    :schema_type => XSD::QName.new(NsV13, "SeedKeyword"),
    :schema_element => [
      ["negative", "SOAP::SOAPBoolean", [0, 1]],
      ["text", "SOAP::SOAPString"],
      ["type", "AdWords::V13::KeywordToolService::KeywordType"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::KeywordToolService::SiteKeyword,
    :schema_type => XSD::QName.new(NsV13, "SiteKeyword"),
    :schema_element => [
      ["advertiserCompetitionScale", "SOAP::SOAPInt"],
      ["avgSearchVolume", "SOAP::SOAPLong"],
      ["groupId", "SOAP::SOAPInt"],
      ["lastMonthSearchVolume", "SOAP::SOAPLong"],
      ["text", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::KeywordToolService::SiteKeywordGroups,
    :schema_type => XSD::QName.new(NsV13, "SiteKeywordGroups"),
    :schema_element => [
      ["groups", "SOAP::SOAPString[]", [1, nil]],
      ["keywords", "AdWords::V13::KeywordToolService::SiteKeyword[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::KeywordToolService::KeywordType,
    :schema_type => XSD::QName.new(NsV13, "KeywordType")
  )

  LiteralRegistry.register(
    :class => AdWords::V13::KeywordToolService::ApiError,
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
    :class => AdWords::V13::KeywordToolService::ApiException,
    :schema_type => XSD::QName.new(NsV13, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::V13::KeywordToolService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::KeywordToolService::KeywordVariation,
    :schema_type => XSD::QName.new(NsV13, "KeywordVariation"),
    :schema_element => [
      ["advertiserCompetitionScale", "SOAP::SOAPInt"],
      ["avgSearchVolume", "SOAP::SOAPLong"],
      ["language", "SOAP::SOAPString"],
      ["lastMonthSearchVolume", "SOAP::SOAPLong"],
      ["text", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::KeywordToolService::KeywordVariations,
    :schema_type => XSD::QName.new(NsV13, "KeywordVariations"),
    :schema_element => [
      ["additionalToConsider", "AdWords::V13::KeywordToolService::KeywordVariation[]", [1, nil]],
      ["moreSpecific", "AdWords::V13::KeywordToolService::KeywordVariation[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::KeywordToolService::SeedKeyword,
    :schema_type => XSD::QName.new(NsV13, "SeedKeyword"),
    :schema_element => [
      ["negative", "SOAP::SOAPBoolean", [0, 1]],
      ["text", "SOAP::SOAPString"],
      ["type", "AdWords::V13::KeywordToolService::KeywordType"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::KeywordToolService::SiteKeyword,
    :schema_type => XSD::QName.new(NsV13, "SiteKeyword"),
    :schema_element => [
      ["advertiserCompetitionScale", "SOAP::SOAPInt"],
      ["avgSearchVolume", "SOAP::SOAPLong"],
      ["groupId", "SOAP::SOAPInt"],
      ["lastMonthSearchVolume", "SOAP::SOAPLong"],
      ["text", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::KeywordToolService::SiteKeywordGroups,
    :schema_type => XSD::QName.new(NsV13, "SiteKeywordGroups"),
    :schema_element => [
      ["groups", "SOAP::SOAPString[]", [1, nil]],
      ["keywords", "AdWords::V13::KeywordToolService::SiteKeyword[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::KeywordToolService::KeywordType,
    :schema_type => XSD::QName.new(NsV13, "KeywordType")
  )

  LiteralRegistry.register(
    :class => AdWords::V13::KeywordToolService::ApiException,
    :schema_name => XSD::QName.new(NsV13, "fault"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::V13::KeywordToolService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::KeywordToolService::GetKeywordVariations,
    :schema_name => XSD::QName.new(NsV13, "getKeywordVariations"),
    :schema_element => [
      ["seedKeywords", "AdWords::V13::KeywordToolService::SeedKeyword[]", [1, nil]],
      ["useSynonyms", "SOAP::SOAPBoolean"],
      ["languages", "SOAP::SOAPString[]", [1, nil]],
      ["countries", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::KeywordToolService::GetKeywordVariationsResponse,
    :schema_name => XSD::QName.new(NsV13, "getKeywordVariationsResponse"),
    :schema_element => [
      ["getKeywordVariationsReturn", "AdWords::V13::KeywordToolService::KeywordVariations"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::KeywordToolService::GetKeywordsFromSite,
    :schema_name => XSD::QName.new(NsV13, "getKeywordsFromSite"),
    :schema_element => [
      ["url", "SOAP::SOAPString"],
      ["includeLinkedPages", "SOAP::SOAPBoolean"],
      ["languages", "SOAP::SOAPString[]", [1, nil]],
      ["countries", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::KeywordToolService::GetKeywordsFromSiteResponse,
    :schema_name => XSD::QName.new(NsV13, "getKeywordsFromSiteResponse"),
    :schema_element => [
      ["getKeywordsFromSiteReturn", "AdWords::V13::KeywordToolService::SiteKeywordGroups"]
    ]
  )

end

end; end; end
