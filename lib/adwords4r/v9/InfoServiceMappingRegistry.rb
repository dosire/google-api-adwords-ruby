require 'adwords4r/v9/InfoService'
require 'soap/mapping'

module AdWords; module InfoService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new

  EncodedRegistry.register(
    :class => AdWords::InfoService::ApiError,
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
    :class => AdWords::InfoService::ApiException,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "ApiException",
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
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "ClientUsageRecord",
    :schema_element => [
      ["clientEmail", "SOAP::SOAPString"],
      ["quotaUnits", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::ApiError,
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
    :class => AdWords::InfoService::ApiException,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "ApiException",
    :schema_qualified => false,
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
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "ClientUsageRecord",
    :schema_qualified => false,
    :schema_element => [
      ["clientEmail", "SOAP::SOAPString"],
      ["quotaUnits", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::ApiException,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "fault",
    :schema_qualified => true,
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
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getFreeUsageQuotaThisMonth",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetFreeUsageQuotaThisMonthResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getFreeUsageQuotaThisMonthResponse",
    :schema_qualified => true,
    :schema_element => [
      ["getFreeUsageQuotaThisMonthReturn", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetMethodCost,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getMethodCost",
    :schema_qualified => true,
    :schema_element => [
      ["service", "SOAP::SOAPString"],
      ["method", "SOAP::SOAPString"],
      ["date", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetMethodCostResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getMethodCostResponse",
    :schema_qualified => true,
    :schema_element => [
      ["getMethodCostReturn", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetOperationCount,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getOperationCount",
    :schema_qualified => true,
    :schema_element => [
      ["startDate", "SOAP::SOAPDate"],
      ["endDate", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetOperationCountResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getOperationCountResponse",
    :schema_qualified => true,
    :schema_element => [
      ["getOperationCountReturn", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetOperationsQuotaThisMonth,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getOperationsQuotaThisMonth",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetOperationsQuotaThisMonthResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getOperationsQuotaThisMonthResponse",
    :schema_qualified => true,
    :schema_element => [
      ["getOperationsQuotaThisMonthReturn", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetUnitCount,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getUnitCount",
    :schema_qualified => true,
    :schema_element => [
      ["startDate", "SOAP::SOAPDate"],
      ["endDate", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetUnitCountForClients,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getUnitCountForClients",
    :schema_qualified => true,
    :schema_element => [
      ["clientEmails", "SOAP::SOAPString[]", [1, nil]],
      ["startDate", "SOAP::SOAPDate"],
      ["endDate", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetUnitCountForClientsResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getUnitCountForClientsResponse",
    :schema_element => [
      ["getUnitCountForClientsReturn", ["AdWords::InfoService::ClientUsageRecord[]", XSD::QName.new("https://adwords.google.com/api/adwords/v9", "getUnitCountForClientsReturn")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetUnitCountForMethod,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getUnitCountForMethod",
    :schema_qualified => true,
    :schema_element => [
      ["service", "SOAP::SOAPString"],
      ["method", "SOAP::SOAPString"],
      ["startDate", "SOAP::SOAPDate"],
      ["endDate", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetUnitCountForMethodResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getUnitCountForMethodResponse",
    :schema_qualified => true,
    :schema_element => [
      ["getUnitCountForMethodReturn", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetUnitCountResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getUnitCountResponse",
    :schema_qualified => true,
    :schema_element => [
      ["getUnitCountReturn", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetUsageQuotaThisMonth,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getUsageQuotaThisMonth",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::InfoService::GetUsageQuotaThisMonthResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getUsageQuotaThisMonthResponse",
    :schema_qualified => true,
    :schema_element => [
      ["getUsageQuotaThisMonthReturn", "SOAP::SOAPLong"]
    ]
  )
end

end; end
