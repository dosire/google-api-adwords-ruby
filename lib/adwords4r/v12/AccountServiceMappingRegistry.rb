require 'adwords4r/v12/AccountService'
require 'soap/mapping'

module AdWords; module AccountService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV12 = "https://adwords.google.com/api/adwords/v12"

  EncodedRegistry.register(
    :class => AdWords::AccountService::AccountInfo,
    :schema_type => XSD::QName.new(NsV12, "AccountInfo"),
    :schema_element => [
      ["billingAddress", "AdWords::AccountService::Address"],
      ["currencyCode", "SOAP::SOAPString"],
      ["customerId", "SOAP::SOAPLong", [0, 1]],
      ["defaultNetworkTargeting", "AdWords::AccountService::NetworkTarget"],
      ["descriptiveName", "SOAP::SOAPString"],
      ["emailPromotionsPreferences", "AdWords::AccountService::EmailPromotionsPreferences"],
      ["languagePreference", "SOAP::SOAPString"],
      ["primaryAddress", "AdWords::AccountService::Address"],
      ["primaryBusinessCategory", "SOAP::SOAPString"],
      ["timeZoneEffectiveDate", "SOAP::SOAPLong", [0, 1]],
      ["timeZoneId", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AccountService::Address,
    :schema_type => XSD::QName.new(NsV12, "Address"),
    :schema_element => [
      ["addressLine1", "SOAP::SOAPString"],
      ["addressLine2", "SOAP::SOAPString"],
      ["city", "SOAP::SOAPString"],
      ["companyName", "SOAP::SOAPString"],
      ["countryCode", "SOAP::SOAPString"],
      ["emailAddress", "SOAP::SOAPString"],
      ["faxNumber", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"],
      ["phoneNumber", "SOAP::SOAPString"],
      ["postalCode", "SOAP::SOAPString"],
      ["state", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AccountService::ApiError,
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
    :class => AdWords::AccountService::ApiException,
    :schema_type => XSD::QName.new(NsV12, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::AccountService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AccountService::EmailPromotionsPreferences,
    :schema_type => XSD::QName.new(NsV12, "EmailPromotionsPreferences"),
    :schema_element => [
      ["accountPerformanceEnabled", "SOAP::SOAPBoolean"],
      ["disapprovedAdsEnabled", "SOAP::SOAPBoolean"],
      ["marketResearchEnabled", "SOAP::SOAPBoolean"],
      ["newsletterEnabled", "SOAP::SOAPBoolean"],
      ["promotionsEnabled", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AccountService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV12, "NetworkTarget"),
    :schema_element => [
      ["networkTypes", "AdWords::AccountService::NetworkType[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AccountService::NetworkType,
    :schema_type => XSD::QName.new(NsV12, "NetworkType")
  )

  LiteralRegistry.register(
    :class => AdWords::AccountService::AccountInfo,
    :schema_type => XSD::QName.new(NsV12, "AccountInfo"),
    :schema_element => [
      ["billingAddress", "AdWords::AccountService::Address"],
      ["currencyCode", "SOAP::SOAPString"],
      ["customerId", "SOAP::SOAPLong", [0, 1]],
      ["defaultNetworkTargeting", "AdWords::AccountService::NetworkTarget"],
      ["descriptiveName", "SOAP::SOAPString"],
      ["emailPromotionsPreferences", "AdWords::AccountService::EmailPromotionsPreferences"],
      ["languagePreference", "SOAP::SOAPString"],
      ["primaryAddress", "AdWords::AccountService::Address"],
      ["primaryBusinessCategory", "SOAP::SOAPString"],
      ["timeZoneEffectiveDate", "SOAP::SOAPLong", [0, 1]],
      ["timeZoneId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AccountService::Address,
    :schema_type => XSD::QName.new(NsV12, "Address"),
    :schema_element => [
      ["addressLine1", "SOAP::SOAPString"],
      ["addressLine2", "SOAP::SOAPString"],
      ["city", "SOAP::SOAPString"],
      ["companyName", "SOAP::SOAPString"],
      ["countryCode", "SOAP::SOAPString"],
      ["emailAddress", "SOAP::SOAPString"],
      ["faxNumber", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"],
      ["phoneNumber", "SOAP::SOAPString"],
      ["postalCode", "SOAP::SOAPString"],
      ["state", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AccountService::ApiError,
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
    :class => AdWords::AccountService::ApiException,
    :schema_type => XSD::QName.new(NsV12, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::AccountService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AccountService::EmailPromotionsPreferences,
    :schema_type => XSD::QName.new(NsV12, "EmailPromotionsPreferences"),
    :schema_element => [
      ["accountPerformanceEnabled", "SOAP::SOAPBoolean"],
      ["disapprovedAdsEnabled", "SOAP::SOAPBoolean"],
      ["marketResearchEnabled", "SOAP::SOAPBoolean"],
      ["newsletterEnabled", "SOAP::SOAPBoolean"],
      ["promotionsEnabled", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AccountService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV12, "NetworkTarget"),
    :schema_element => [
      ["networkTypes", "AdWords::AccountService::NetworkType[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AccountService::NetworkType,
    :schema_type => XSD::QName.new(NsV12, "NetworkType")
  )

  LiteralRegistry.register(
    :class => AdWords::AccountService::ApiException,
    :schema_name => XSD::QName.new(NsV12, "fault"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::AccountService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AccountService::GetAccountInfo,
    :schema_name => XSD::QName.new(NsV12, "getAccountInfo"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::AccountService::GetAccountInfoResponse,
    :schema_name => XSD::QName.new(NsV12, "getAccountInfoResponse"),
    :schema_element => [
      ["getAccountInfoReturn", "AdWords::AccountService::AccountInfo"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AccountService::GetClientAccounts,
    :schema_name => XSD::QName.new(NsV12, "getClientAccounts"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::AccountService::GetClientAccountsResponse,
    :schema_name => XSD::QName.new(NsV12, "getClientAccountsResponse"),
    :schema_element => [
      ["getClientAccountsReturn", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AccountService::UpdateAccountInfo,
    :schema_name => XSD::QName.new(NsV12, "updateAccountInfo"),
    :schema_element => [
      ["accountInfo", "AdWords::AccountService::AccountInfo"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AccountService::UpdateAccountInfoResponse,
    :schema_name => XSD::QName.new(NsV12, "updateAccountInfoResponse"),
    :schema_element => []
  )

end

end; end
