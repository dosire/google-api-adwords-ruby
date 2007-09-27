require 'adwords4r/v10/AccountService'
require 'soap/mapping'

module AdWords; module AccountService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new

  EncodedRegistry.register(
    :class => AdWords::AccountService::AccountInfo,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "AccountInfo",
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
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "Address",
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
    :class => AdWords::AccountService::ApiException,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "ApiException",
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
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "EmailPromotionsPreferences",
    :schema_element => [
      ["accountPerformanceEnabled", "SOAP::SOAPBoolean"],
      ["disapprovedAdsEnabled", "SOAP::SOAPBoolean"],
      ["marketResearchEnabled", "SOAP::SOAPBoolean"],
      ["newsletterEnabled", "SOAP::SOAPBoolean"],
      ["promotionsEnabled", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.set(
    AdWords::AccountService::NetworkTarget,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("https://adwords.google.com/api/adwords/v10", "NetworkType") }
  )

  EncodedRegistry.register(
    :class => AdWords::AccountService::NetworkType,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "NetworkType"
  )

  LiteralRegistry.register(
    :class => AdWords::AccountService::AccountInfo,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "AccountInfo",
    :schema_qualified => false,
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
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "Address",
    :schema_qualified => false,
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
    :class => AdWords::AccountService::ApiException,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "ApiException",
    :schema_qualified => false,
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
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "EmailPromotionsPreferences",
    :schema_qualified => false,
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
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "NetworkTarget",
    :schema_element => [
      ["networkTypes", ["SOAP::SOAPString[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "networkTypes")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AccountService::NetworkType,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "NetworkType"
  )

  LiteralRegistry.register(
    :class => AdWords::AccountService::ApiException,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "fault",
    :schema_qualified => true,
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
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getAccountInfo",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::AccountService::GetAccountInfoResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getAccountInfoResponse",
    :schema_qualified => true,
    :schema_element => [
      ["getAccountInfoReturn", "AdWords::AccountService::AccountInfo"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AccountService::GetClientAccounts,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getClientAccounts",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::AccountService::GetClientAccountsResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getClientAccountsResponse",
    :schema_element => [
      ["getClientAccountsReturn", ["SOAP::SOAPString[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "getClientAccountsReturn")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AccountService::SetLoginInfo,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "setLoginInfo",
    :schema_qualified => true,
    :schema_element => [
      ["login", "SOAP::SOAPString"],
      ["newPassword", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AccountService::SetLoginInfoResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "setLoginInfoResponse",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::AccountService::UpdateAccountInfo,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "updateAccountInfo",
    :schema_qualified => true,
    :schema_element => [
      ["accountInfo", "AdWords::AccountService::AccountInfo"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AccountService::UpdateAccountInfoResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "updateAccountInfoResponse",
    :schema_qualified => true,
    :schema_element => []
  )
end

end; end
