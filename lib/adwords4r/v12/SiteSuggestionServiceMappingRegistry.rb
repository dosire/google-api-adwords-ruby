require 'adwords4r/v12/SiteSuggestionService'
require 'soap/mapping'

module AdWords; module SiteSuggestionService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV12 = "https://adwords.google.com/api/adwords/v12"

  EncodedRegistry.register(
    :class => AdWords::SiteSuggestionService::ApiError,
    :schema_type => XSD::QName.new(NsV12, "ApiError"),
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
    :class => AdWords::SiteSuggestionService::ApiException,
    :schema_type => XSD::QName.new(NsV12, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::SiteSuggestionService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::SiteSuggestionService::DemographicsTarget,
    :schema_type => XSD::QName.new(NsV12, "DemographicsTarget"),
    :schema_element => [
      ["childrenTarget", "AdWords::SiteSuggestionService::ChildrenTarget", [0, 1]],
      ["ethnicityTarget", "AdWords::SiteSuggestionService::EthnicityTarget", [0, 1]],
      ["genderTarget", "AdWords::SiteSuggestionService::GenderTarget", [0, 1]],
      ["maxAgeRange", "AdWords::SiteSuggestionService::AgeRange", [0, 1]],
      ["maxHouseholdIncomeRange", "AdWords::SiteSuggestionService::HouseholdIncomeRange", [0, 1]],
      ["minAgeRange", "AdWords::SiteSuggestionService::AgeRange", [0, 1]],
      ["minHouseholdIncomeRange", "AdWords::SiteSuggestionService::HouseholdIncomeRange", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::SiteSuggestionService::LanguageGeoTargeting,
    :schema_type => XSD::QName.new(NsV12, "LanguageGeoTargeting"),
    :schema_element => [
      ["countries", "SOAP::SOAPString[]", [1, nil]],
      ["languages", "SOAP::SOAPString[]", [1, nil]],
      ["metros", "SOAP::SOAPString[]", [1, nil]],
      ["regions", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::SiteSuggestionService::SiteSuggestion,
    :schema_type => XSD::QName.new(NsV12, "SiteSuggestion"),
    :schema_element => [
      ["acceptsImageAds", "SOAP::SOAPBoolean"],
      ["acceptsTextAds", "SOAP::SOAPBoolean"],
      ["acceptsVideoAds", "SOAP::SOAPBoolean"],
      ["pageViews", "SOAP::SOAPInt"],
      ["url", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::SiteSuggestionService::AgeRange,
    :schema_type => XSD::QName.new(NsV12, "AgeRange")
  )

  EncodedRegistry.register(
    :class => AdWords::SiteSuggestionService::ChildrenTarget,
    :schema_type => XSD::QName.new(NsV12, "ChildrenTarget")
  )

  EncodedRegistry.register(
    :class => AdWords::SiteSuggestionService::EthnicityTarget,
    :schema_type => XSD::QName.new(NsV12, "EthnicityTarget")
  )

  EncodedRegistry.register(
    :class => AdWords::SiteSuggestionService::GenderTarget,
    :schema_type => XSD::QName.new(NsV12, "GenderTarget")
  )

  EncodedRegistry.register(
    :class => AdWords::SiteSuggestionService::HouseholdIncomeRange,
    :schema_type => XSD::QName.new(NsV12, "HouseholdIncomeRange")
  )

  LiteralRegistry.register(
    :class => AdWords::SiteSuggestionService::ApiError,
    :schema_type => XSD::QName.new(NsV12, "ApiError"),
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
    :class => AdWords::SiteSuggestionService::ApiException,
    :schema_type => XSD::QName.new(NsV12, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::SiteSuggestionService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::SiteSuggestionService::DemographicsTarget,
    :schema_type => XSD::QName.new(NsV12, "DemographicsTarget"),
    :schema_element => [
      ["childrenTarget", "AdWords::SiteSuggestionService::ChildrenTarget", [0, 1]],
      ["ethnicityTarget", "AdWords::SiteSuggestionService::EthnicityTarget", [0, 1]],
      ["genderTarget", "AdWords::SiteSuggestionService::GenderTarget", [0, 1]],
      ["maxAgeRange", "AdWords::SiteSuggestionService::AgeRange", [0, 1]],
      ["maxHouseholdIncomeRange", "AdWords::SiteSuggestionService::HouseholdIncomeRange", [0, 1]],
      ["minAgeRange", "AdWords::SiteSuggestionService::AgeRange", [0, 1]],
      ["minHouseholdIncomeRange", "AdWords::SiteSuggestionService::HouseholdIncomeRange", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::SiteSuggestionService::LanguageGeoTargeting,
    :schema_type => XSD::QName.new(NsV12, "LanguageGeoTargeting"),
    :schema_element => [
      ["countries", "SOAP::SOAPString[]", [1, nil]],
      ["languages", "SOAP::SOAPString[]", [1, nil]],
      ["metros", "SOAP::SOAPString[]", [1, nil]],
      ["regions", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::SiteSuggestionService::SiteSuggestion,
    :schema_type => XSD::QName.new(NsV12, "SiteSuggestion"),
    :schema_element => [
      ["acceptsImageAds", "SOAP::SOAPBoolean"],
      ["acceptsTextAds", "SOAP::SOAPBoolean"],
      ["acceptsVideoAds", "SOAP::SOAPBoolean"],
      ["pageViews", "SOAP::SOAPInt"],
      ["url", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::SiteSuggestionService::AgeRange,
    :schema_type => XSD::QName.new(NsV12, "AgeRange")
  )

  LiteralRegistry.register(
    :class => AdWords::SiteSuggestionService::ChildrenTarget,
    :schema_type => XSD::QName.new(NsV12, "ChildrenTarget")
  )

  LiteralRegistry.register(
    :class => AdWords::SiteSuggestionService::EthnicityTarget,
    :schema_type => XSD::QName.new(NsV12, "EthnicityTarget")
  )

  LiteralRegistry.register(
    :class => AdWords::SiteSuggestionService::GenderTarget,
    :schema_type => XSD::QName.new(NsV12, "GenderTarget")
  )

  LiteralRegistry.register(
    :class => AdWords::SiteSuggestionService::HouseholdIncomeRange,
    :schema_type => XSD::QName.new(NsV12, "HouseholdIncomeRange")
  )

  LiteralRegistry.register(
    :class => AdWords::SiteSuggestionService::ApiException,
    :schema_name => XSD::QName.new(NsV12, "fault"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::SiteSuggestionService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::SiteSuggestionService::GetSitesByCategoryName,
    :schema_name => XSD::QName.new(NsV12, "getSitesByCategoryName"),
    :schema_element => [
      ["categoryName", "SOAP::SOAPString"],
      ["targeting", "AdWords::SiteSuggestionService::LanguageGeoTargeting"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::SiteSuggestionService::GetSitesByCategoryNameResponse,
    :schema_name => XSD::QName.new(NsV12, "getSitesByCategoryNameResponse"),
    :schema_element => [
      ["getSitesByCategoryNameReturn", "AdWords::SiteSuggestionService::SiteSuggestion[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::SiteSuggestionService::GetSitesByDemographics,
    :schema_name => XSD::QName.new(NsV12, "getSitesByDemographics"),
    :schema_element => [
      ["demo", "AdWords::SiteSuggestionService::DemographicsTarget"],
      ["targeting", "AdWords::SiteSuggestionService::LanguageGeoTargeting"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::SiteSuggestionService::GetSitesByDemographicsResponse,
    :schema_name => XSD::QName.new(NsV12, "getSitesByDemographicsResponse"),
    :schema_element => [
      ["getSitesByDemographicsReturn", "AdWords::SiteSuggestionService::SiteSuggestion[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::SiteSuggestionService::GetSitesByTopics,
    :schema_name => XSD::QName.new(NsV12, "getSitesByTopics"),
    :schema_element => [
      ["topics", "SOAP::SOAPString[]", [1, nil]],
      ["targeting", "AdWords::SiteSuggestionService::LanguageGeoTargeting"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::SiteSuggestionService::GetSitesByTopicsResponse,
    :schema_name => XSD::QName.new(NsV12, "getSitesByTopicsResponse"),
    :schema_element => [
      ["getSitesByTopicsReturn", "AdWords::SiteSuggestionService::SiteSuggestion[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::SiteSuggestionService::GetSitesByUrls,
    :schema_name => XSD::QName.new(NsV12, "getSitesByUrls"),
    :schema_element => [
      ["urls", "SOAP::SOAPString[]", [1, nil]],
      ["targeting", "AdWords::SiteSuggestionService::LanguageGeoTargeting"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::SiteSuggestionService::GetSitesByUrlsResponse,
    :schema_name => XSD::QName.new(NsV12, "getSitesByUrlsResponse"),
    :schema_element => [
      ["getSitesByUrlsReturn", "AdWords::SiteSuggestionService::SiteSuggestion[]", [1, nil]]
    ]
  )

end

end; end
