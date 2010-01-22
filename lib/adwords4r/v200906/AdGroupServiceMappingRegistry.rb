require 'adwords4r/v200906/AdGroupService'
require 'soap/mapping'

module AdWords; module V200906; module AdGroupService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV200906 = "https://adwords.google.com/api/adwords/cm/v200906"

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::AdGroupServiceError,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupServiceError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::AdGroupServiceErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV200906, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200906, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::BiddingError,
    :schema_type => XSD::QName.new(NsV200906, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::BiddingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV200906, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200906, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::DateError,
    :schema_type => XSD::QName.new(NsV200906, "DateError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::DateErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::DateRange,
    :schema_type => XSD::QName.new(NsV200906, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::DistinctError,
    :schema_type => XSD::QName.new(NsV200906, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::DoubleValue,
    :schema_type => XSD::QName.new(NsV200906, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200906, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::InternalApiError,
    :schema_type => XSD::QName.new(NsV200906, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::LongValue,
    :schema_type => XSD::QName.new(NsV200906, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::Money,
    :schema_type => XSD::QName.new(NsV200906, "Money"),
    :schema_basetype => XSD::QName.new(NsV200906, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV200906, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200906, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200906, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::NullError,
    :schema_type => XSD::QName.new(NsV200906, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV200906, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::OperatorError,
    :schema_type => XSD::QName.new(NsV200906, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::OperatorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::Paging,
    :schema_type => XSD::QName.new(NsV200906, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200906, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::QuotaError,
    :schema_type => XSD::QName.new(NsV200906, "QuotaError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::QuotaErrorReason", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::QuotaExceededError,
    :schema_type => XSD::QName.new(NsV200906, "QuotaExceededError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::QuotaExceededErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::C_RangeError,
    :schema_type => XSD::QName.new(NsV200906, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200906, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::RequiredError,
    :schema_type => XSD::QName.new(NsV200906, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV200906, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::SoapHeader,
    :schema_type => XSD::QName.new(NsV200906, "SoapHeader"),
    :schema_element => [
      ["applicationToken", "SOAP::SOAPString", [0, 1]],
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]],
      ["developerToken", "SOAP::SOAPString", [0, 1]],
      ["userAgent", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200906, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV200906, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::StatsSelector,
    :schema_type => XSD::QName.new(NsV200906, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdWords::V200906::AdGroupService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "StatsSelector.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::Stats,
    :schema_type => XSD::QName.new(NsV200906, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdWords::V200906::AdGroupService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdWords::V200906::AdGroupService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdWords::V200906::AdGroupService::Money", [0, 1]],
      ["averageCpm", "AdWords::V200906::AdGroupService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdWords::V200906::AdGroupService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdWords::V200906::AdGroupService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::ApiException,
    :schema_type => XSD::QName.new(NsV200906, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200906::AdGroupService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200906, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::Bid,
    :schema_type => XSD::QName.new(NsV200906, "Bid"),
    :schema_element => [
      ["amount", "AdWords::V200906::AdGroupService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::BudgetOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV200906, "BudgetOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200906, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupBids.Type")], [0, 1]],
      ["proxyKeywordMaxCpc", "AdWords::V200906::AdGroupService::Bid", [0, 1]],
      ["proxySiteMaxCpc", "AdWords::V200906::AdGroupService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::ConversionOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV200906, "ConversionOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200906, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupBids.Type")], [0, 1]],
      ["targetCpa", "AdWords::V200906::AdGroupService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::ManualCPCAdGroupBids,
    :schema_type => XSD::QName.new(NsV200906, "ManualCPCAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200906, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupBids.Type")], [0, 1]],
      ["keywordMaxCpc", "AdWords::V200906::AdGroupService::Bid", [0, 1]],
      ["keywordContentMaxCpc", "AdWords::V200906::AdGroupService::Bid", [0, 1]],
      ["siteMaxCpc", "AdWords::V200906::AdGroupService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::ManualCPMAdGroupBids,
    :schema_type => XSD::QName.new(NsV200906, "ManualCPMAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200906, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupBids.Type")], [0, 1]],
      ["maxCpm", "AdWords::V200906::AdGroupService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::AdGroupSelector,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupSelector"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["adGroupIds", "SOAP::SOAPLong[]", [0, nil]],
      ["statsSelector", "AdWords::V200906::AdGroupService::StatsSelector", [0, 1]],
      ["paging", "AdWords::V200906::AdGroupService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::AdGroup,
    :schema_type => XSD::QName.new(NsV200906, "AdGroup"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["campaignName", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdWords::V200906::AdGroupService::AdGroupStatus", [0, 1]],
      ["bids", "AdWords::V200906::AdGroupService::AdGroupBids", [0, 1]],
      ["stats", "AdWords::V200906::AdGroupService::Stats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::AdGroupOperation,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupOperation"),
    :schema_basetype => XSD::QName.new(NsV200906, "Operation"),
    :schema_element => [
      ["operator", "AdWords::V200906::AdGroupService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Operation.Type")], [0, 1]],
      ["operand", "AdWords::V200906::AdGroupService::AdGroup", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::AdGroupPage,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupPage"),
    :schema_basetype => XSD::QName.new(NsV200906, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Page.Type")], [0, 1]],
      ["entries", "AdWords::V200906::AdGroupService::AdGroup[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::AdGroupReturnValue,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupReturnValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdWords::V200906::AdGroupService::AdGroup[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::AdGroupStatus,
    :schema_type => XSD::QName.new(NsV200906, "AdGroup.Status")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::AdGroupServiceErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupServiceError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "BiddingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "DateError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200906, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NewEntityCreationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200906, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::Operator,
    :schema_type => XSD::QName.new(NsV200906, "Operator")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "OperatorError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::QuotaErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "QuotaError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::QuotaExceededErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "QuotaExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV200906, "Stats.Network")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::AdGroupServiceError,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupServiceError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::AdGroupServiceErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV200906, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200906, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::BiddingError,
    :schema_type => XSD::QName.new(NsV200906, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::BiddingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV200906, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200906, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::DateError,
    :schema_type => XSD::QName.new(NsV200906, "DateError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::DateErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::DateRange,
    :schema_type => XSD::QName.new(NsV200906, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::DistinctError,
    :schema_type => XSD::QName.new(NsV200906, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::DoubleValue,
    :schema_type => XSD::QName.new(NsV200906, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200906, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::InternalApiError,
    :schema_type => XSD::QName.new(NsV200906, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::LongValue,
    :schema_type => XSD::QName.new(NsV200906, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::Money,
    :schema_type => XSD::QName.new(NsV200906, "Money"),
    :schema_basetype => XSD::QName.new(NsV200906, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV200906, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200906, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200906, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::NullError,
    :schema_type => XSD::QName.new(NsV200906, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV200906, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::OperatorError,
    :schema_type => XSD::QName.new(NsV200906, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::OperatorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::Paging,
    :schema_type => XSD::QName.new(NsV200906, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200906, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::QuotaError,
    :schema_type => XSD::QName.new(NsV200906, "QuotaError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::QuotaErrorReason", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::QuotaExceededError,
    :schema_type => XSD::QName.new(NsV200906, "QuotaExceededError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::QuotaExceededErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::C_RangeError,
    :schema_type => XSD::QName.new(NsV200906, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200906, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::RequiredError,
    :schema_type => XSD::QName.new(NsV200906, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV200906, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::SoapHeader,
    :schema_type => XSD::QName.new(NsV200906, "SoapHeader"),
    :schema_element => [
      ["applicationToken", "SOAP::SOAPString", [0, 1]],
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]],
      ["developerToken", "SOAP::SOAPString", [0, 1]],
      ["userAgent", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200906, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV200906, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::StatsSelector,
    :schema_type => XSD::QName.new(NsV200906, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdWords::V200906::AdGroupService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "StatsSelector.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::Stats,
    :schema_type => XSD::QName.new(NsV200906, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdWords::V200906::AdGroupService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdWords::V200906::AdGroupService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdWords::V200906::AdGroupService::Money", [0, 1]],
      ["averageCpm", "AdWords::V200906::AdGroupService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdWords::V200906::AdGroupService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdWords::V200906::AdGroupService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::ApiException,
    :schema_type => XSD::QName.new(NsV200906, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200906::AdGroupService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200906, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::Bid,
    :schema_type => XSD::QName.new(NsV200906, "Bid"),
    :schema_element => [
      ["amount", "AdWords::V200906::AdGroupService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::BudgetOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV200906, "BudgetOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200906, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupBids.Type")], [0, 1]],
      ["proxyKeywordMaxCpc", "AdWords::V200906::AdGroupService::Bid", [0, 1]],
      ["proxySiteMaxCpc", "AdWords::V200906::AdGroupService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::ConversionOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV200906, "ConversionOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200906, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupBids.Type")], [0, 1]],
      ["targetCpa", "AdWords::V200906::AdGroupService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::ManualCPCAdGroupBids,
    :schema_type => XSD::QName.new(NsV200906, "ManualCPCAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200906, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupBids.Type")], [0, 1]],
      ["keywordMaxCpc", "AdWords::V200906::AdGroupService::Bid", [0, 1]],
      ["keywordContentMaxCpc", "AdWords::V200906::AdGroupService::Bid", [0, 1]],
      ["siteMaxCpc", "AdWords::V200906::AdGroupService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::ManualCPMAdGroupBids,
    :schema_type => XSD::QName.new(NsV200906, "ManualCPMAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200906, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupBids.Type")], [0, 1]],
      ["maxCpm", "AdWords::V200906::AdGroupService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::AdGroupSelector,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupSelector"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["adGroupIds", "SOAP::SOAPLong[]", [0, nil]],
      ["statsSelector", "AdWords::V200906::AdGroupService::StatsSelector", [0, 1]],
      ["paging", "AdWords::V200906::AdGroupService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::AdGroup,
    :schema_type => XSD::QName.new(NsV200906, "AdGroup"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["campaignName", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdWords::V200906::AdGroupService::AdGroupStatus", [0, 1]],
      ["bids", "AdWords::V200906::AdGroupService::AdGroupBids", [0, 1]],
      ["stats", "AdWords::V200906::AdGroupService::Stats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::AdGroupOperation,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupOperation"),
    :schema_basetype => XSD::QName.new(NsV200906, "Operation"),
    :schema_element => [
      ["operator", "AdWords::V200906::AdGroupService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Operation.Type")], [0, 1]],
      ["operand", "AdWords::V200906::AdGroupService::AdGroup", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::AdGroupPage,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupPage"),
    :schema_basetype => XSD::QName.new(NsV200906, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Page.Type")], [0, 1]],
      ["entries", "AdWords::V200906::AdGroupService::AdGroup[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::AdGroupReturnValue,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupReturnValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdWords::V200906::AdGroupService::AdGroup[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::AdGroupStatus,
    :schema_type => XSD::QName.new(NsV200906, "AdGroup.Status")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::AdGroupServiceErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupServiceError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "BiddingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "DateError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200906, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NewEntityCreationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200906, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::Operator,
    :schema_type => XSD::QName.new(NsV200906, "Operator")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "OperatorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::QuotaErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "QuotaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::QuotaExceededErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "QuotaExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV200906, "Stats.Network")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::Get,
    :schema_name => XSD::QName.new(NsV200906, "get"),
    :schema_element => [
      ["selector", "AdWords::V200906::AdGroupService::AdGroupSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::GetResponse,
    :schema_name => XSD::QName.new(NsV200906, "getResponse"),
    :schema_element => [
      ["rval", "AdWords::V200906::AdGroupService::AdGroupPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::ApiException,
    :schema_name => XSD::QName.new(NsV200906, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200906::AdGroupService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::Mutate,
    :schema_name => XSD::QName.new(NsV200906, "mutate"),
    :schema_element => [
      ["operations", "AdWords::V200906::AdGroupService::AdGroupOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::MutateResponse,
    :schema_name => XSD::QName.new(NsV200906, "mutateResponse"),
    :schema_element => [
      ["rval", "AdWords::V200906::AdGroupService::AdGroupReturnValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::SoapHeader,
    :schema_name => XSD::QName.new(NsV200906, "RequestHeader"),
    :schema_element => [
      ["applicationToken", "SOAP::SOAPString", [0, 1]],
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]],
      ["developerToken", "SOAP::SOAPString", [0, 1]],
      ["userAgent", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupService::SoapResponseHeader,
    :schema_name => XSD::QName.new(NsV200906, "ResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )
end

end; end; end
