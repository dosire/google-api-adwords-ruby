require 'adwords4r/v13/InfoService'
require 'soap/mapping'

module AdWords; module InfoService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV13 = "https://adwords.google.com/api/adwords/v13"

  EncodedRegistry.register(
    :class => AdWords::InfoService::ApiError,
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
    :class => AdWords::InfoService::ApiException,
    :schema_type => XSD::QName.new(NsV13, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::InfoService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::InfoService::ClientUsageRecord,
    :schema_type => XSD::QName.new(NsV13, "ClientUsageRecord"),
    :schema_element => [
      ["clientEmail", "SOAP::SOAPString"],
      ["quotaUnits", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::ApiError,
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
    :class => AdWords::InfoService::ApiException,
    :schema_type => XSD::QName.new(NsV13, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::InfoService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::ClientUsageRecord,
    :schema_type => XSD::QName.new(NsV13, "ClientUsageRecord"),
    :schema_element => [
      ["clientEmail", "SOAP::SOAPString"],
      ["quotaUnits", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::ApiException,
    :schema_name => XSD::QName.new(NsV13, "fault"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::InfoService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetFreeUsageQuotaThisMonth,
    :schema_name => XSD::QName.new(NsV13, "getFreeUsageQuotaThisMonth"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetFreeUsageQuotaThisMonthResponse,
    :schema_name => XSD::QName.new(NsV13, "getFreeUsageQuotaThisMonthResponse"),
    :schema_element => [
      ["getFreeUsageQuotaThisMonthReturn", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetMethodCost,
    :schema_name => XSD::QName.new(NsV13, "getMethodCost"),
    :schema_element => [
      ["service", "SOAP::SOAPString"],
      ["method", "SOAP::SOAPString"],
      ["date", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetMethodCostResponse,
    :schema_name => XSD::QName.new(NsV13, "getMethodCostResponse"),
    :schema_element => [
      ["getMethodCostReturn", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetOperationCount,
    :schema_name => XSD::QName.new(NsV13, "getOperationCount"),
    :schema_element => [
      ["startDate", "SOAP::SOAPDate"],
      ["endDate", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetOperationCountResponse,
    :schema_name => XSD::QName.new(NsV13, "getOperationCountResponse"),
    :schema_element => [
      ["getOperationCountReturn", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetOperationsQuotaThisMonth,
    :schema_name => XSD::QName.new(NsV13, "getOperationsQuotaThisMonth"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetOperationsQuotaThisMonthResponse,
    :schema_name => XSD::QName.new(NsV13, "getOperationsQuotaThisMonthResponse"),
    :schema_element => [
      ["getOperationsQuotaThisMonthReturn", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetUnitCount,
    :schema_name => XSD::QName.new(NsV13, "getUnitCount"),
    :schema_element => [
      ["startDate", "SOAP::SOAPDate"],
      ["endDate", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetUnitCountForClients,
    :schema_name => XSD::QName.new(NsV13, "getUnitCountForClients"),
    :schema_element => [
      ["clientEmails", "SOAP::SOAPString[]", [1, nil]],
      ["startDate", "SOAP::SOAPDate"],
      ["endDate", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetUnitCountForClientsResponse,
    :schema_name => XSD::QName.new(NsV13, "getUnitCountForClientsResponse"),
    :schema_element => [
      ["getUnitCountForClientsReturn", "AdWords::InfoService::ClientUsageRecord[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetUnitCountForMethod,
    :schema_name => XSD::QName.new(NsV13, "getUnitCountForMethod"),
    :schema_element => [
      ["service", "SOAP::SOAPString"],
      ["method", "SOAP::SOAPString"],
      ["startDate", "SOAP::SOAPDate"],
      ["endDate", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetUnitCountForMethodResponse,
    :schema_name => XSD::QName.new(NsV13, "getUnitCountForMethodResponse"),
    :schema_element => [
      ["getUnitCountForMethodReturn", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetUnitCountResponse,
    :schema_name => XSD::QName.new(NsV13, "getUnitCountResponse"),
    :schema_element => [
      ["getUnitCountReturn", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetUsageQuotaThisMonth,
    :schema_name => XSD::QName.new(NsV13, "getUsageQuotaThisMonth"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetUsageQuotaThisMonthResponse,
    :schema_name => XSD::QName.new(NsV13, "getUsageQuotaThisMonthResponse"),
    :schema_element => [
      ["getUsageQuotaThisMonthReturn", "SOAP::SOAPLong"]
    ]
  )

end

end; end
