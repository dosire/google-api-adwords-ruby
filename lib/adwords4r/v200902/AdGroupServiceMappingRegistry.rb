require 'adwords4r/v200902/AdGroupService'
require 'soap/mapping'

module AdWords; module V200902; module AdGroupService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV200902 = "https://adwords.google.com/api/adwords/cm/v200902"

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::AdGroupServiceError,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupServiceError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::AdGroupServiceErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200902, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::BiddingError,
    :schema_type => XSD::QName.new(NsV200902, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::BiddingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200902, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::Date,
    :schema_type => XSD::QName.new(NsV200902, "Date"),
    :schema_element => [
      ["year", "SOAP::SOAPInt", [0, 1]],
      ["month", "SOAP::SOAPInt", [0, 1]],
      ["day", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::DateError,
    :schema_type => XSD::QName.new(NsV200902, "DateError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::DateErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::DateRange,
    :schema_type => XSD::QName.new(NsV200902, "DateRange"),
    :schema_element => [
      ["min", "AdWords::V200902::AdGroupService::Date", [0, 1]],
      ["max", "AdWords::V200902::AdGroupService::Date", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::DistinctError,
    :schema_type => XSD::QName.new(NsV200902, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200902, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::Money,
    :schema_type => XSD::QName.new(NsV200902, "Money"),
    :schema_element => [
      ["currencyCode", "SOAP::SOAPString", [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV200902, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200902, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200902, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::NullError,
    :schema_type => XSD::QName.new(NsV200902, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV200902, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::OperatorError,
    :schema_type => XSD::QName.new(NsV200902, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::OperatorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::Paging,
    :schema_type => XSD::QName.new(NsV200902, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200902, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::QuotaError,
    :schema_type => XSD::QName.new(NsV200902, "QuotaError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::QuotaErrorReason", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200902, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::RequiredError,
    :schema_type => XSD::QName.new(NsV200902, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::SoapHeader,
    :schema_type => XSD::QName.new(NsV200902, "SoapHeader"),
    :schema_element => [
      ["applicationToken", "SOAP::SOAPString", [0, 1]],
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]],
      ["developerToken", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200902, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["callCost", "SOAP::SOAPLong", [0, 1]],
      ["operationCount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::Stats,
    :schema_type => XSD::QName.new(NsV200902, "Stats"),
    :schema_element => [
      ["startDate", "AdWords::V200902::AdGroupService::Date", [0, 1]],
      ["endDate", "AdWords::V200902::AdGroupService::Date", [0, 1]],
      ["network", "AdWords::V200902::AdGroupService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdWords::V200902::AdGroupService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdWords::V200902::AdGroupService::Money", [0, 1]],
      ["averageCpm", "AdWords::V200902::AdGroupService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdWords::V200902::AdGroupService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdWords::V200902::AdGroupService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV200902, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::StatsSelector,
    :schema_type => XSD::QName.new(NsV200902, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdWords::V200902::AdGroupService::DateRange", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::AdGroupId,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adGroupId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupId.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::Bid,
    :schema_type => XSD::QName.new(NsV200902, "Bid"),
    :schema_element => [
      ["event", "AdWords::V200902::AdGroupService::BidEvent", [0, 1]],
      ["amount", "AdWords::V200902::AdGroupService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::BudgetOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV200902, "BudgetOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupBids.Type")], [0, 1]],
      ["proxyKeywordMaxCpc", "AdWords::V200902::AdGroupService::Bid", [0, 1]],
      ["proxySiteMaxCpc", "AdWords::V200902::AdGroupService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::CampaignId,
    :schema_type => XSD::QName.new(NsV200902, "CampaignId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["campaignId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "CampaignId.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::ConversionOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV200902, "ConversionOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupBids.Type")], [0, 1]],
      ["targetCpa", "AdWords::V200902::AdGroupService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::ManualCPCAdGroupBids,
    :schema_type => XSD::QName.new(NsV200902, "ManualCPCAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupBids.Type")], [0, 1]],
      ["keywordMaxCpc", "AdWords::V200902::AdGroupService::Bid", [0, 1]],
      ["keywordContentMaxCpc", "AdWords::V200902::AdGroupService::Bid", [0, 1]],
      ["siteMaxCpc", "AdWords::V200902::AdGroupService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::ManualCPMAdGroupBids,
    :schema_type => XSD::QName.new(NsV200902, "ManualCPMAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupBids.Type")], [0, 1]],
      ["maxCpm", "AdWords::V200902::AdGroupService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::AdGroupSelector,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupSelector"),
    :schema_element => [
      ["campaignId", "AdWords::V200902::AdGroupService::CampaignId", [0, 1]],
      ["adGroupIds", "AdWords::V200902::AdGroupService::AdGroupId[]", [0, nil]],
      ["statsSelector", "AdWords::V200902::AdGroupService::StatsSelector", [0, 1]],
      ["paging", "AdWords::V200902::AdGroupService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::ApiException,
    :schema_type => XSD::QName.new(NsV200902, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200902::AdGroupService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200902, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::AdGroup,
    :schema_type => XSD::QName.new(NsV200902, "AdGroup"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupService::AdGroupId", [0, 1]],
      ["campaignId", "AdWords::V200902::AdGroupService::CampaignId", [0, 1]],
      ["campaignName", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdWords::V200902::AdGroupService::AdGroupStatus", [0, 1]],
      ["bids", "AdWords::V200902::AdGroupService::AdGroupBids", [0, 1]],
      ["stats", "AdWords::V200902::AdGroupService::Stats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::AdGroupOperation,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupOperation"),
    :schema_basetype => XSD::QName.new(NsV200902, "Operation"),
    :schema_element => [
      ["operator", "AdWords::V200902::AdGroupService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Operation.Type")], [0, 1]],
      ["operand", "AdWords::V200902::AdGroupService::AdGroup", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::AdGroupPage,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupPage"),
    :schema_basetype => XSD::QName.new(NsV200902, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Page.Type")], [0, 1]],
      ["entries", "AdWords::V200902::AdGroupService::AdGroup[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::AdGroupReturnValue,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupReturnValue"),
    :schema_basetype => XSD::QName.new(NsV200902, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdWords::V200902::AdGroupService::AdGroup[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::ListReturnValue,
    :schema_type => XSD::QName.new(NsV200902, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ListReturnValue.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::AdGroupStatus,
    :schema_type => XSD::QName.new(NsV200902, "AdGroup.Status")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::AdGroupServiceErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupServiceError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::BidEvent,
    :schema_type => XSD::QName.new(NsV200902, "Bid.Event")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "BiddingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "DateError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200902, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NewEntityCreationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200902, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::Operator,
    :schema_type => XSD::QName.new(NsV200902, "Operator")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "OperatorError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::QuotaErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "QuotaError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV200902, "Stats.Network")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::AdGroupServiceError,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupServiceError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::AdGroupServiceErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200902, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::BiddingError,
    :schema_type => XSD::QName.new(NsV200902, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::BiddingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200902, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::Date,
    :schema_type => XSD::QName.new(NsV200902, "Date"),
    :schema_element => [
      ["year", "SOAP::SOAPInt", [0, 1]],
      ["month", "SOAP::SOAPInt", [0, 1]],
      ["day", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::DateError,
    :schema_type => XSD::QName.new(NsV200902, "DateError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::DateErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::DateRange,
    :schema_type => XSD::QName.new(NsV200902, "DateRange"),
    :schema_element => [
      ["min", "AdWords::V200902::AdGroupService::Date", [0, 1]],
      ["max", "AdWords::V200902::AdGroupService::Date", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::DistinctError,
    :schema_type => XSD::QName.new(NsV200902, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200902, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::Money,
    :schema_type => XSD::QName.new(NsV200902, "Money"),
    :schema_element => [
      ["currencyCode", "SOAP::SOAPString", [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV200902, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200902, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200902, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::NullError,
    :schema_type => XSD::QName.new(NsV200902, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV200902, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::OperatorError,
    :schema_type => XSD::QName.new(NsV200902, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::OperatorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::Paging,
    :schema_type => XSD::QName.new(NsV200902, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200902, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::QuotaError,
    :schema_type => XSD::QName.new(NsV200902, "QuotaError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::QuotaErrorReason", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200902, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::RequiredError,
    :schema_type => XSD::QName.new(NsV200902, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::SoapHeader,
    :schema_type => XSD::QName.new(NsV200902, "SoapHeader"),
    :schema_element => [
      ["applicationToken", "SOAP::SOAPString", [0, 1]],
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]],
      ["developerToken", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200902, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["callCost", "SOAP::SOAPLong", [0, 1]],
      ["operationCount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::Stats,
    :schema_type => XSD::QName.new(NsV200902, "Stats"),
    :schema_element => [
      ["startDate", "AdWords::V200902::AdGroupService::Date", [0, 1]],
      ["endDate", "AdWords::V200902::AdGroupService::Date", [0, 1]],
      ["network", "AdWords::V200902::AdGroupService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdWords::V200902::AdGroupService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdWords::V200902::AdGroupService::Money", [0, 1]],
      ["averageCpm", "AdWords::V200902::AdGroupService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdWords::V200902::AdGroupService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdWords::V200902::AdGroupService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV200902, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::StatsSelector,
    :schema_type => XSD::QName.new(NsV200902, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdWords::V200902::AdGroupService::DateRange", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::AdGroupId,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adGroupId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupId.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::Bid,
    :schema_type => XSD::QName.new(NsV200902, "Bid"),
    :schema_element => [
      ["event", "AdWords::V200902::AdGroupService::BidEvent", [0, 1]],
      ["amount", "AdWords::V200902::AdGroupService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::BudgetOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV200902, "BudgetOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupBids.Type")], [0, 1]],
      ["proxyKeywordMaxCpc", "AdWords::V200902::AdGroupService::Bid", [0, 1]],
      ["proxySiteMaxCpc", "AdWords::V200902::AdGroupService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::CampaignId,
    :schema_type => XSD::QName.new(NsV200902, "CampaignId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["campaignId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "CampaignId.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::ConversionOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV200902, "ConversionOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupBids.Type")], [0, 1]],
      ["targetCpa", "AdWords::V200902::AdGroupService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::ManualCPCAdGroupBids,
    :schema_type => XSD::QName.new(NsV200902, "ManualCPCAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupBids.Type")], [0, 1]],
      ["keywordMaxCpc", "AdWords::V200902::AdGroupService::Bid", [0, 1]],
      ["keywordContentMaxCpc", "AdWords::V200902::AdGroupService::Bid", [0, 1]],
      ["siteMaxCpc", "AdWords::V200902::AdGroupService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::ManualCPMAdGroupBids,
    :schema_type => XSD::QName.new(NsV200902, "ManualCPMAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupBids.Type")], [0, 1]],
      ["maxCpm", "AdWords::V200902::AdGroupService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::AdGroupSelector,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupSelector"),
    :schema_element => [
      ["campaignId", "AdWords::V200902::AdGroupService::CampaignId", [0, 1]],
      ["adGroupIds", "AdWords::V200902::AdGroupService::AdGroupId[]", [0, nil]],
      ["statsSelector", "AdWords::V200902::AdGroupService::StatsSelector", [0, 1]],
      ["paging", "AdWords::V200902::AdGroupService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::ApiException,
    :schema_type => XSD::QName.new(NsV200902, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200902::AdGroupService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200902, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::AdGroup,
    :schema_type => XSD::QName.new(NsV200902, "AdGroup"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupService::AdGroupId", [0, 1]],
      ["campaignId", "AdWords::V200902::AdGroupService::CampaignId", [0, 1]],
      ["campaignName", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdWords::V200902::AdGroupService::AdGroupStatus", [0, 1]],
      ["bids", "AdWords::V200902::AdGroupService::AdGroupBids", [0, 1]],
      ["stats", "AdWords::V200902::AdGroupService::Stats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::AdGroupOperation,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupOperation"),
    :schema_basetype => XSD::QName.new(NsV200902, "Operation"),
    :schema_element => [
      ["operator", "AdWords::V200902::AdGroupService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Operation.Type")], [0, 1]],
      ["operand", "AdWords::V200902::AdGroupService::AdGroup", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::AdGroupPage,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupPage"),
    :schema_basetype => XSD::QName.new(NsV200902, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Page.Type")], [0, 1]],
      ["entries", "AdWords::V200902::AdGroupService::AdGroup[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::AdGroupReturnValue,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupReturnValue"),
    :schema_basetype => XSD::QName.new(NsV200902, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdWords::V200902::AdGroupService::AdGroup[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::ListReturnValue,
    :schema_type => XSD::QName.new(NsV200902, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ListReturnValue.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::AdGroupStatus,
    :schema_type => XSD::QName.new(NsV200902, "AdGroup.Status")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::AdGroupServiceErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupServiceError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::BidEvent,
    :schema_type => XSD::QName.new(NsV200902, "Bid.Event")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "BiddingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "DateError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200902, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NewEntityCreationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200902, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::Operator,
    :schema_type => XSD::QName.new(NsV200902, "Operator")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "OperatorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::QuotaErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "QuotaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV200902, "Stats.Network")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::Get,
    :schema_name => XSD::QName.new(NsV200902, "get"),
    :schema_element => [
      ["selector", "AdWords::V200902::AdGroupService::AdGroupSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::GetResponse,
    :schema_name => XSD::QName.new(NsV200902, "getResponse"),
    :schema_element => [
      ["rval", "AdWords::V200902::AdGroupService::AdGroupPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::ApiException,
    :schema_name => XSD::QName.new(NsV200902, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200902::AdGroupService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::Mutate,
    :schema_name => XSD::QName.new(NsV200902, "mutate"),
    :schema_element => [
      ["operations", "AdWords::V200902::AdGroupService::AdGroupOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::MutateResponse,
    :schema_name => XSD::QName.new(NsV200902, "mutateResponse"),
    :schema_element => [
      ["rval", "AdWords::V200902::AdGroupService::AdGroupReturnValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::SoapHeader,
    :schema_name => XSD::QName.new(NsV200902, "RequestHeader"),
    :schema_element => [
      ["applicationToken", "SOAP::SOAPString", [0, 1]],
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]],
      ["developerToken", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupService::SoapResponseHeader,
    :schema_name => XSD::QName.new(NsV200902, "ResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["callCost", "SOAP::SOAPLong", [0, 1]],
      ["operationCount", "SOAP::SOAPLong", [0, 1]]
    ]
  )
end

end; end; end
