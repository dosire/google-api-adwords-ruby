require 'adwords4r/v10/KeywordToolService'
require 'soap/mapping'

module AdWords; module KeywordToolService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new

  EncodedRegistry.register(
    :class => AdWords::KeywordToolService::ApiError,
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
    :class => AdWords::KeywordToolService::ApiException,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "ApiException",
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::KeywordToolService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::KeywordToolService::KeywordVariation,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "KeywordVariation",
    :schema_element => [
      ["advertiserCompetitionScale", "SOAP::SOAPInt"],
      ["language", "SOAP::SOAPString"],
      ["searchVolumeScale", "SOAP::SOAPInt"],
      ["text", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::KeywordToolService::KeywordVariations,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "KeywordVariations",
    :schema_element => [
      ["additionalToConsider", "AdWords::KeywordToolService::KeywordVariation[]", [1, nil]],
      ["moreSpecific", "AdWords::KeywordToolService::KeywordVariation[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::KeywordToolService::SeedKeyword,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "SeedKeyword",
    :schema_element => [
      ["negative", "SOAP::SOAPBoolean", [0, 1]],
      ["text", "SOAP::SOAPString"],
      ["type", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::KeywordToolService::SiteKeyword,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "SiteKeyword",
    :schema_element => [
      ["advertiserCompetitionScale", "SOAP::SOAPInt"],
      ["groupId", "SOAP::SOAPInt"],
      ["searchVolumeScale", "SOAP::SOAPInt"],
      ["text", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::KeywordToolService::SiteKeywordGroups,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "SiteKeywordGroups",
    :schema_element => [
      ["groups", "SOAP::SOAPString[]", [1, nil]],
      ["keywords", "AdWords::KeywordToolService::SiteKeyword[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::KeywordToolService::KeywordType,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "KeywordType"
  )

  LiteralRegistry.register(
    :class => AdWords::KeywordToolService::ApiError,
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
    :class => AdWords::KeywordToolService::ApiException,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "ApiException",
    :schema_qualified => false,
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::KeywordToolService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::KeywordToolService::KeywordVariation,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "KeywordVariation",
    :schema_qualified => false,
    :schema_element => [
      ["advertiserCompetitionScale", "SOAP::SOAPInt"],
      ["language", "SOAP::SOAPString"],
      ["searchVolumeScale", "SOAP::SOAPInt"],
      ["text", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::KeywordToolService::KeywordVariations,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "KeywordVariations",
    :schema_qualified => false,
    :schema_element => [
      ["additionalToConsider", "AdWords::KeywordToolService::KeywordVariation[]", [1, nil]],
      ["moreSpecific", "AdWords::KeywordToolService::KeywordVariation[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::KeywordToolService::SeedKeyword,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "SeedKeyword",
    :schema_qualified => false,
    :schema_element => [
      ["negative", "SOAP::SOAPBoolean", [0, 1]],
      ["text", "SOAP::SOAPString"],
      ["type", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::KeywordToolService::SiteKeyword,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "SiteKeyword",
    :schema_qualified => false,
    :schema_element => [
      ["advertiserCompetitionScale", "SOAP::SOAPInt"],
      ["groupId", "SOAP::SOAPInt"],
      ["searchVolumeScale", "SOAP::SOAPInt"],
      ["text", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::KeywordToolService::SiteKeywordGroups,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "SiteKeywordGroups",
    :schema_qualified => false,
    :schema_element => [
      ["groups", "SOAP::SOAPString[]", [1, nil]],
      ["keywords", "AdWords::KeywordToolService::SiteKeyword[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::KeywordToolService::KeywordType,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "KeywordType"
  )

  LiteralRegistry.register(
    :class => AdWords::KeywordToolService::ApiException,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "fault",
    :schema_qualified => true,
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::KeywordToolService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::KeywordToolService::GetKeywordVariations,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getKeywordVariations",
    :schema_qualified => true,
    :schema_element => [
      ["seedKeywords", "AdWords::KeywordToolService::SeedKeyword[]", [1, nil]],
      ["useSynonyms", "SOAP::SOAPBoolean"],
      ["languages", "SOAP::SOAPString[]", [1, nil]],
      ["countries", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::KeywordToolService::GetKeywordVariationsResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getKeywordVariationsResponse",
    :schema_qualified => true,
    :schema_element => [
      ["getKeywordVariationsReturn", "AdWords::KeywordToolService::KeywordVariations"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::KeywordToolService::GetKeywordsFromSite,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getKeywordsFromSite",
    :schema_qualified => true,
    :schema_element => [
      ["url", "SOAP::SOAPString"],
      ["includeLinkedPages", "SOAP::SOAPBoolean"],
      ["languages", "SOAP::SOAPString[]", [1, nil]],
      ["countries", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::KeywordToolService::GetKeywordsFromSiteResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getKeywordsFromSiteResponse",
    :schema_qualified => true,
    :schema_element => [
      ["getKeywordsFromSiteReturn", "AdWords::KeywordToolService::SiteKeywordGroups"]
    ]
  )
end

end; end
