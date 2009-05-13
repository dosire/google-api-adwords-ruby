require 'adwords4r/v13/SiteSuggestionService'
require 'soap/mapping'

module AdWords; module V13; module SiteSuggestionService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV13 = "https://adwords.google.com/api/adwords/v13"

  EncodedRegistry.register(
    :class => AdWords::V13::SiteSuggestionService::ApiError,
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
    :class => AdWords::V13::SiteSuggestionService::ApiException,
    :schema_type => XSD::QName.new(NsV13, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::V13::SiteSuggestionService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::SiteSuggestionService::DemographicsTarget,
    :schema_type => XSD::QName.new(NsV13, "DemographicsTarget"),
    :schema_element => [
      ["childrenTarget", "AdWords::V13::SiteSuggestionService::ChildrenTarget", [0, 1]],
      ["ethnicityTarget", "AdWords::V13::SiteSuggestionService::EthnicityTarget", [0, 1]],
      ["genderTarget", "AdWords::V13::SiteSuggestionService::GenderTarget", [0, 1]],
      ["maxAgeRange", "AdWords::V13::SiteSuggestionService::AgeRange", [0, 1]],
      ["maxHouseholdIncomeRange", "AdWords::V13::SiteSuggestionService::HouseholdIncomeRange", [0, 1]],
      ["minAgeRange", "AdWords::V13::SiteSuggestionService::AgeRange", [0, 1]],
      ["minHouseholdIncomeRange", "AdWords::V13::SiteSuggestionService::HouseholdIncomeRange", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::SiteSuggestionService::LanguageGeoTargeting,
    :schema_type => XSD::QName.new(NsV13, "LanguageGeoTargeting"),
    :schema_element => [
      ["countries", "SOAP::SOAPString[]", [1, nil]],
      ["languages", "SOAP::SOAPString[]", [1, nil]],
      ["metros", "SOAP::SOAPString[]", [1, nil]],
      ["regions", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::SiteSuggestionService::SiteSuggestion,
    :schema_type => XSD::QName.new(NsV13, "SiteSuggestion"),
    :schema_element => [
      ["acceptsImageAds", "SOAP::SOAPBoolean"],
      ["acceptsTextAds", "SOAP::SOAPBoolean"],
      ["acceptsVideoAds", "SOAP::SOAPBoolean"],
      ["pageViews", "SOAP::SOAPInt"],
      ["url", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::SiteSuggestionService::AgeRange,
    :schema_type => XSD::QName.new(NsV13, "AgeRange")
  )

  EncodedRegistry.register(
    :class => AdWords::V13::SiteSuggestionService::ChildrenTarget,
    :schema_type => XSD::QName.new(NsV13, "ChildrenTarget")
  )

  EncodedRegistry.register(
    :class => AdWords::V13::SiteSuggestionService::EthnicityTarget,
    :schema_type => XSD::QName.new(NsV13, "EthnicityTarget")
  )

  EncodedRegistry.register(
    :class => AdWords::V13::SiteSuggestionService::GenderTarget,
    :schema_type => XSD::QName.new(NsV13, "GenderTarget")
  )

  EncodedRegistry.register(
    :class => AdWords::V13::SiteSuggestionService::HouseholdIncomeRange,
    :schema_type => XSD::QName.new(NsV13, "HouseholdIncomeRange")
  )

  LiteralRegistry.register(
    :class => AdWords::V13::SiteSuggestionService::ApiError,
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
    :class => AdWords::V13::SiteSuggestionService::ApiException,
    :schema_type => XSD::QName.new(NsV13, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::V13::SiteSuggestionService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::SiteSuggestionService::DemographicsTarget,
    :schema_type => XSD::QName.new(NsV13, "DemographicsTarget"),
    :schema_element => [
      ["childrenTarget", "AdWords::V13::SiteSuggestionService::ChildrenTarget", [0, 1]],
      ["ethnicityTarget", "AdWords::V13::SiteSuggestionService::EthnicityTarget", [0, 1]],
      ["genderTarget", "AdWords::V13::SiteSuggestionService::GenderTarget", [0, 1]],
      ["maxAgeRange", "AdWords::V13::SiteSuggestionService::AgeRange", [0, 1]],
      ["maxHouseholdIncomeRange", "AdWords::V13::SiteSuggestionService::HouseholdIncomeRange", [0, 1]],
      ["minAgeRange", "AdWords::V13::SiteSuggestionService::AgeRange", [0, 1]],
      ["minHouseholdIncomeRange", "AdWords::V13::SiteSuggestionService::HouseholdIncomeRange", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::SiteSuggestionService::LanguageGeoTargeting,
    :schema_type => XSD::QName.new(NsV13, "LanguageGeoTargeting"),
    :schema_element => [
      ["countries", "SOAP::SOAPString[]", [1, nil]],
      ["languages", "SOAP::SOAPString[]", [1, nil]],
      ["metros", "SOAP::SOAPString[]", [1, nil]],
      ["regions", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::SiteSuggestionService::SiteSuggestion,
    :schema_type => XSD::QName.new(NsV13, "SiteSuggestion"),
    :schema_element => [
      ["acceptsImageAds", "SOAP::SOAPBoolean"],
      ["acceptsTextAds", "SOAP::SOAPBoolean"],
      ["acceptsVideoAds", "SOAP::SOAPBoolean"],
      ["pageViews", "SOAP::SOAPInt"],
      ["url", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::SiteSuggestionService::AgeRange,
    :schema_type => XSD::QName.new(NsV13, "AgeRange")
  )

  LiteralRegistry.register(
    :class => AdWords::V13::SiteSuggestionService::ChildrenTarget,
    :schema_type => XSD::QName.new(NsV13, "ChildrenTarget")
  )

  LiteralRegistry.register(
    :class => AdWords::V13::SiteSuggestionService::EthnicityTarget,
    :schema_type => XSD::QName.new(NsV13, "EthnicityTarget")
  )

  LiteralRegistry.register(
    :class => AdWords::V13::SiteSuggestionService::GenderTarget,
    :schema_type => XSD::QName.new(NsV13, "GenderTarget")
  )

  LiteralRegistry.register(
    :class => AdWords::V13::SiteSuggestionService::HouseholdIncomeRange,
    :schema_type => XSD::QName.new(NsV13, "HouseholdIncomeRange")
  )

  LiteralRegistry.register(
    :class => AdWords::V13::SiteSuggestionService::ApiException,
    :schema_name => XSD::QName.new(NsV13, "fault"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::V13::SiteSuggestionService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::SiteSuggestionService::GetSitesByCategoryName,
    :schema_name => XSD::QName.new(NsV13, "getSitesByCategoryName"),
    :schema_element => [
      ["categoryName", "SOAP::SOAPString"],
      ["targeting", "AdWords::V13::SiteSuggestionService::LanguageGeoTargeting"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::SiteSuggestionService::GetSitesByCategoryNameResponse,
    :schema_name => XSD::QName.new(NsV13, "getSitesByCategoryNameResponse"),
    :schema_element => [
      ["getSitesByCategoryNameReturn", "AdWords::V13::SiteSuggestionService::SiteSuggestion[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::SiteSuggestionService::GetSitesByDemographics,
    :schema_name => XSD::QName.new(NsV13, "getSitesByDemographics"),
    :schema_element => [
      ["demo", "AdWords::V13::SiteSuggestionService::DemographicsTarget"],
      ["targeting", "AdWords::V13::SiteSuggestionService::LanguageGeoTargeting"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::SiteSuggestionService::GetSitesByDemographicsResponse,
    :schema_name => XSD::QName.new(NsV13, "getSitesByDemographicsResponse"),
    :schema_element => [
      ["getSitesByDemographicsReturn", "AdWords::V13::SiteSuggestionService::SiteSuggestion[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::SiteSuggestionService::GetSitesByTopics,
    :schema_name => XSD::QName.new(NsV13, "getSitesByTopics"),
    :schema_element => [
      ["topics", "SOAP::SOAPString[]", [1, nil]],
      ["targeting", "AdWords::V13::SiteSuggestionService::LanguageGeoTargeting"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::SiteSuggestionService::GetSitesByTopicsResponse,
    :schema_name => XSD::QName.new(NsV13, "getSitesByTopicsResponse"),
    :schema_element => [
      ["getSitesByTopicsReturn", "AdWords::V13::SiteSuggestionService::SiteSuggestion[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::SiteSuggestionService::GetSitesByUrls,
    :schema_name => XSD::QName.new(NsV13, "getSitesByUrls"),
    :schema_element => [
      ["urls", "SOAP::SOAPString[]", [1, nil]],
      ["targeting", "AdWords::V13::SiteSuggestionService::LanguageGeoTargeting"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::SiteSuggestionService::GetSitesByUrlsResponse,
    :schema_name => XSD::QName.new(NsV13, "getSitesByUrlsResponse"),
    :schema_element => [
      ["getSitesByUrlsReturn", "AdWords::V13::SiteSuggestionService::SiteSuggestion[]", [1, nil]]
    ]
  )

end

end; end; end
