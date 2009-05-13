require 'adwords4r/v200902/CampaignService'
require 'soap/mapping'

module AdWords; module V200902; module CampaignService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV200902 = "https://adwords.google.com/api/adwords/cm/v200902"

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200902, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::BiddingError,
    :schema_type => XSD::QName.new(NsV200902, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::BiddingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::BiddingTransitionError,
    :schema_type => XSD::QName.new(NsV200902, "BiddingTransitionError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::BiddingTransitionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::BudgetError,
    :schema_type => XSD::QName.new(NsV200902, "BudgetError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::BudgetErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::CampaignError,
    :schema_type => XSD::QName.new(NsV200902, "CampaignError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::CampaignErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::ConversionOptimizer,
    :schema_type => XSD::QName.new(NsV200902, "ConversionOptimizer"),
    :schema_basetype => XSD::QName.new(NsV200902, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "BiddingStrategy.Type")], [0, 1]],
      ["pricingModel", "AdWords::V200902::CampaignService::PricingModel", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200902, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::Date,
    :schema_type => XSD::QName.new(NsV200902, "Date"),
    :schema_element => [
      ["year", "SOAP::SOAPInt", [0, 1]],
      ["month", "SOAP::SOAPInt", [0, 1]],
      ["day", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::DateRange,
    :schema_type => XSD::QName.new(NsV200902, "DateRange"),
    :schema_element => [
      ["min", "AdWords::V200902::CampaignService::Date", [0, 1]],
      ["max", "AdWords::V200902::CampaignService::Date", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::DerivedBids,
    :schema_type => XSD::QName.new(NsV200902, "DerivedBids"),
    :schema_basetype => XSD::QName.new(NsV200902, "CampaignBidSource"),
    :schema_element => [
      ["campaignBidSource_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "CampaignBidSource.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::DistinctError,
    :schema_type => XSD::QName.new(NsV200902, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::ManualCPC,
    :schema_type => XSD::QName.new(NsV200902, "ManualCPC"),
    :schema_basetype => XSD::QName.new(NsV200902, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::ManualCPM,
    :schema_type => XSD::QName.new(NsV200902, "ManualCPM"),
    :schema_basetype => XSD::QName.new(NsV200902, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::Money,
    :schema_type => XSD::QName.new(NsV200902, "Money"),
    :schema_element => [
      ["currencyCode", "SOAP::SOAPString", [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV200902, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200902, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200902, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::NullError,
    :schema_type => XSD::QName.new(NsV200902, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV200902, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::OperatorError,
    :schema_type => XSD::QName.new(NsV200902, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::OperatorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::Paging,
    :schema_type => XSD::QName.new(NsV200902, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::QuotaError,
    :schema_type => XSD::QName.new(NsV200902, "QuotaError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::QuotaErrorReason", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::C_RangeError,
    :schema_type => XSD::QName.new(NsV200902, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200902, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::RequiredError,
    :schema_type => XSD::QName.new(NsV200902, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::SoapHeader,
    :schema_type => XSD::QName.new(NsV200902, "SoapHeader"),
    :schema_element => [
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200902, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::Stats,
    :schema_type => XSD::QName.new(NsV200902, "Stats"),
    :schema_element => [
      ["startDate", "AdWords::V200902::CampaignService::Date", [0, 1]],
      ["endDate", "AdWords::V200902::CampaignService::Date", [0, 1]],
      ["network", "AdWords::V200902::CampaignService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdWords::V200902::CampaignService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdWords::V200902::CampaignService::Money", [0, 1]],
      ["averageCpm", "AdWords::V200902::CampaignService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdWords::V200902::CampaignService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdWords::V200902::CampaignService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV200902, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::StatsSelector,
    :schema_type => XSD::QName.new(NsV200902, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdWords::V200902::CampaignService::DateRange", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::StringLengthError,
    :schema_type => XSD::QName.new(NsV200902, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::StringLengthErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::Bid,
    :schema_type => XSD::QName.new(NsV200902, "Bid"),
    :schema_element => [
      ["event", "AdWords::V200902::CampaignService::BidEvent", [0, 1]],
      ["amount", "AdWords::V200902::CampaignService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::Budget,
    :schema_type => XSD::QName.new(NsV200902, "Budget"),
    :schema_element => [
      ["period", "AdWords::V200902::CampaignService::BudgetBudgetPeriod", [0, 1]],
      ["amount", "AdWords::V200902::CampaignService::Money", [0, 1]],
      ["deliveryMethod", "AdWords::V200902::CampaignService::BudgetBudgetDeliveryMethod", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::BudgetOptimizer,
    :schema_type => XSD::QName.new(NsV200902, "BudgetOptimizer"),
    :schema_basetype => XSD::QName.new(NsV200902, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "BiddingStrategy.Type")], [0, 1]],
      ["bidCeiling", "AdWords::V200902::CampaignService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::BudgetOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV200902, "BudgetOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupBids.Type")], [0, 1]],
      ["proxyKeywordMaxCpc", "AdWords::V200902::CampaignService::Bid", [0, 1]],
      ["proxySiteMaxCpc", "AdWords::V200902::CampaignService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::CampaignId,
    :schema_type => XSD::QName.new(NsV200902, "CampaignId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["campaignId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "CampaignId.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::ConversionOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV200902, "ConversionOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupBids.Type")], [0, 1]],
      ["targetCpa", "AdWords::V200902::CampaignService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::ManualCPCAdGroupBids,
    :schema_type => XSD::QName.new(NsV200902, "ManualCPCAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupBids.Type")], [0, 1]],
      ["keywordMaxCpc", "AdWords::V200902::CampaignService::Bid", [0, 1]],
      ["keywordContentMaxCpc", "AdWords::V200902::CampaignService::Bid", [0, 1]],
      ["siteMaxCpc", "AdWords::V200902::CampaignService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::ManualCPMAdGroupBids,
    :schema_type => XSD::QName.new(NsV200902, "ManualCPMAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupBids.Type")], [0, 1]],
      ["maxCpm", "AdWords::V200902::CampaignService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::ApiException,
    :schema_type => XSD::QName.new(NsV200902, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200902::CampaignService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200902, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::Campaign,
    :schema_type => XSD::QName.new(NsV200902, "Campaign"),
    :schema_element => [
      ["id", "AdWords::V200902::CampaignService::CampaignId", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdWords::V200902::CampaignService::CampaignStatus", [0, 1]],
      ["servingStatus", "AdWords::V200902::CampaignService::ServingStatus", [0, 1]],
      ["startDate", "AdWords::V200902::CampaignService::Date", [0, 1]],
      ["endDate", "AdWords::V200902::CampaignService::Date", [0, 1]],
      ["budget", "AdWords::V200902::CampaignService::Budget", [0, 1]],
      ["biddingStrategy", "AdWords::V200902::CampaignService::BiddingStrategy", [0, 1]],
      ["autoKeywordMatchingStatus", "AdWords::V200902::CampaignService::AutoKeywordMatchingStatus", [0, 1]],
      ["stats", "AdWords::V200902::CampaignService::Stats", [0, 1]],
      ["campaignType", "AdWords::V200902::CampaignService::CampaignType", [0, 1]],
      ["adServingOptimizationStatus", "AdWords::V200902::CampaignService::AdServingOptimizationStatus", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::CampaignPage,
    :schema_type => XSD::QName.new(NsV200902, "CampaignPage"),
    :schema_basetype => XSD::QName.new(NsV200902, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Page.Type")], [0, 1]],
      ["totalBudget", "AdWords::V200902::CampaignService::Budget", [0, 1]],
      ["entries", "AdWords::V200902::CampaignService::Campaign[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::CampaignReturnValue,
    :schema_type => XSD::QName.new(NsV200902, "CampaignReturnValue"),
    :schema_basetype => XSD::QName.new(NsV200902, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdWords::V200902::CampaignService::Campaign[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::CampaignSelector,
    :schema_type => XSD::QName.new(NsV200902, "CampaignSelector"),
    :schema_element => [
      ["campaignIds", "AdWords::V200902::CampaignService::CampaignId[]", [0, nil]],
      ["statsSelector", "AdWords::V200902::CampaignService::StatsSelector", [0, 1]],
      ["paging", "AdWords::V200902::CampaignService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::ExplicitBids,
    :schema_type => XSD::QName.new(NsV200902, "ExplicitBids"),
    :schema_basetype => XSD::QName.new(NsV200902, "CampaignBidSource"),
    :schema_element => [
      ["campaignBidSource_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "CampaignBidSource.Type")], [0, 1]],
      ["adGroupBids", "AdWords::V200902::CampaignService::AdGroupBids", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::ListReturnValue,
    :schema_type => XSD::QName.new(NsV200902, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ListReturnValue.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::BiddingTransition,
    :schema_type => XSD::QName.new(NsV200902, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdWords::V200902::CampaignService::BiddingStrategy", [0, 1]],
      ["bidSource", "AdWords::V200902::CampaignService::CampaignBidSource", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::CampaignOperation,
    :schema_type => XSD::QName.new(NsV200902, "CampaignOperation"),
    :schema_basetype => XSD::QName.new(NsV200902, "Operation"),
    :schema_element => [
      ["operator", "AdWords::V200902::CampaignService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Operation.Type")], [0, 1]],
      ["biddingTransition", "AdWords::V200902::CampaignService::BiddingTransition", [0, 1]],
      ["operand", "AdWords::V200902::CampaignService::Campaign", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::AdServingOptimizationStatus,
    :schema_type => XSD::QName.new(NsV200902, "AdServingOptimizationStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::AutoKeywordMatchingStatus,
    :schema_type => XSD::QName.new(NsV200902, "AutoKeywordMatchingStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::BidEvent,
    :schema_type => XSD::QName.new(NsV200902, "Bid.Event")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "BiddingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::BiddingTransitionErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "BiddingTransitionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::BudgetBudgetDeliveryMethod,
    :schema_type => XSD::QName.new(NsV200902, "Budget.BudgetDeliveryMethod")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::BudgetBudgetPeriod,
    :schema_type => XSD::QName.new(NsV200902, "Budget.BudgetPeriod")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::BudgetErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "BudgetError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::CampaignErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "CampaignError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV200902, "CampaignStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::CampaignType,
    :schema_type => XSD::QName.new(NsV200902, "CampaignType")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NewEntityCreationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200902, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::Operator,
    :schema_type => XSD::QName.new(NsV200902, "Operator")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "OperatorError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::PricingModel,
    :schema_type => XSD::QName.new(NsV200902, "PricingModel")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::QuotaErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "QuotaError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::ServingStatus,
    :schema_type => XSD::QName.new(NsV200902, "ServingStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV200902, "Stats.Network")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "StatsQueryError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "StringLengthError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200902, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::BiddingError,
    :schema_type => XSD::QName.new(NsV200902, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::BiddingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::BiddingTransitionError,
    :schema_type => XSD::QName.new(NsV200902, "BiddingTransitionError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::BiddingTransitionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::BudgetError,
    :schema_type => XSD::QName.new(NsV200902, "BudgetError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::BudgetErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::CampaignError,
    :schema_type => XSD::QName.new(NsV200902, "CampaignError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::CampaignErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::ConversionOptimizer,
    :schema_type => XSD::QName.new(NsV200902, "ConversionOptimizer"),
    :schema_basetype => XSD::QName.new(NsV200902, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "BiddingStrategy.Type")], [0, 1]],
      ["pricingModel", "AdWords::V200902::CampaignService::PricingModel", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200902, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::Date,
    :schema_type => XSD::QName.new(NsV200902, "Date"),
    :schema_element => [
      ["year", "SOAP::SOAPInt", [0, 1]],
      ["month", "SOAP::SOAPInt", [0, 1]],
      ["day", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::DateRange,
    :schema_type => XSD::QName.new(NsV200902, "DateRange"),
    :schema_element => [
      ["min", "AdWords::V200902::CampaignService::Date", [0, 1]],
      ["max", "AdWords::V200902::CampaignService::Date", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::DerivedBids,
    :schema_type => XSD::QName.new(NsV200902, "DerivedBids"),
    :schema_basetype => XSD::QName.new(NsV200902, "CampaignBidSource"),
    :schema_element => [
      ["campaignBidSource_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "CampaignBidSource.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::DistinctError,
    :schema_type => XSD::QName.new(NsV200902, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::ManualCPC,
    :schema_type => XSD::QName.new(NsV200902, "ManualCPC"),
    :schema_basetype => XSD::QName.new(NsV200902, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::ManualCPM,
    :schema_type => XSD::QName.new(NsV200902, "ManualCPM"),
    :schema_basetype => XSD::QName.new(NsV200902, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::Money,
    :schema_type => XSD::QName.new(NsV200902, "Money"),
    :schema_element => [
      ["currencyCode", "SOAP::SOAPString", [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV200902, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200902, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200902, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::NullError,
    :schema_type => XSD::QName.new(NsV200902, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV200902, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::OperatorError,
    :schema_type => XSD::QName.new(NsV200902, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::OperatorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::Paging,
    :schema_type => XSD::QName.new(NsV200902, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::QuotaError,
    :schema_type => XSD::QName.new(NsV200902, "QuotaError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::QuotaErrorReason", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::C_RangeError,
    :schema_type => XSD::QName.new(NsV200902, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200902, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::RequiredError,
    :schema_type => XSD::QName.new(NsV200902, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::SoapHeader,
    :schema_type => XSD::QName.new(NsV200902, "SoapHeader"),
    :schema_element => [
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200902, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::Stats,
    :schema_type => XSD::QName.new(NsV200902, "Stats"),
    :schema_element => [
      ["startDate", "AdWords::V200902::CampaignService::Date", [0, 1]],
      ["endDate", "AdWords::V200902::CampaignService::Date", [0, 1]],
      ["network", "AdWords::V200902::CampaignService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdWords::V200902::CampaignService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdWords::V200902::CampaignService::Money", [0, 1]],
      ["averageCpm", "AdWords::V200902::CampaignService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdWords::V200902::CampaignService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdWords::V200902::CampaignService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV200902, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::StatsSelector,
    :schema_type => XSD::QName.new(NsV200902, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdWords::V200902::CampaignService::DateRange", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::StringLengthError,
    :schema_type => XSD::QName.new(NsV200902, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignService::StringLengthErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::Bid,
    :schema_type => XSD::QName.new(NsV200902, "Bid"),
    :schema_element => [
      ["event", "AdWords::V200902::CampaignService::BidEvent", [0, 1]],
      ["amount", "AdWords::V200902::CampaignService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::Budget,
    :schema_type => XSD::QName.new(NsV200902, "Budget"),
    :schema_element => [
      ["period", "AdWords::V200902::CampaignService::BudgetBudgetPeriod", [0, 1]],
      ["amount", "AdWords::V200902::CampaignService::Money", [0, 1]],
      ["deliveryMethod", "AdWords::V200902::CampaignService::BudgetBudgetDeliveryMethod", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::BudgetOptimizer,
    :schema_type => XSD::QName.new(NsV200902, "BudgetOptimizer"),
    :schema_basetype => XSD::QName.new(NsV200902, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "BiddingStrategy.Type")], [0, 1]],
      ["bidCeiling", "AdWords::V200902::CampaignService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::BudgetOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV200902, "BudgetOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupBids.Type")], [0, 1]],
      ["proxyKeywordMaxCpc", "AdWords::V200902::CampaignService::Bid", [0, 1]],
      ["proxySiteMaxCpc", "AdWords::V200902::CampaignService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::CampaignId,
    :schema_type => XSD::QName.new(NsV200902, "CampaignId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["campaignId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "CampaignId.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::ConversionOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV200902, "ConversionOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupBids.Type")], [0, 1]],
      ["targetCpa", "AdWords::V200902::CampaignService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::ManualCPCAdGroupBids,
    :schema_type => XSD::QName.new(NsV200902, "ManualCPCAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupBids.Type")], [0, 1]],
      ["keywordMaxCpc", "AdWords::V200902::CampaignService::Bid", [0, 1]],
      ["keywordContentMaxCpc", "AdWords::V200902::CampaignService::Bid", [0, 1]],
      ["siteMaxCpc", "AdWords::V200902::CampaignService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::ManualCPMAdGroupBids,
    :schema_type => XSD::QName.new(NsV200902, "ManualCPMAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupBids.Type")], [0, 1]],
      ["maxCpm", "AdWords::V200902::CampaignService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::ApiException,
    :schema_type => XSD::QName.new(NsV200902, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200902::CampaignService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200902, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::Campaign,
    :schema_type => XSD::QName.new(NsV200902, "Campaign"),
    :schema_element => [
      ["id", "AdWords::V200902::CampaignService::CampaignId", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdWords::V200902::CampaignService::CampaignStatus", [0, 1]],
      ["servingStatus", "AdWords::V200902::CampaignService::ServingStatus", [0, 1]],
      ["startDate", "AdWords::V200902::CampaignService::Date", [0, 1]],
      ["endDate", "AdWords::V200902::CampaignService::Date", [0, 1]],
      ["budget", "AdWords::V200902::CampaignService::Budget", [0, 1]],
      ["biddingStrategy", "AdWords::V200902::CampaignService::BiddingStrategy", [0, 1]],
      ["autoKeywordMatchingStatus", "AdWords::V200902::CampaignService::AutoKeywordMatchingStatus", [0, 1]],
      ["stats", "AdWords::V200902::CampaignService::Stats", [0, 1]],
      ["campaignType", "AdWords::V200902::CampaignService::CampaignType", [0, 1]],
      ["adServingOptimizationStatus", "AdWords::V200902::CampaignService::AdServingOptimizationStatus", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::CampaignPage,
    :schema_type => XSD::QName.new(NsV200902, "CampaignPage"),
    :schema_basetype => XSD::QName.new(NsV200902, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Page.Type")], [0, 1]],
      ["totalBudget", "AdWords::V200902::CampaignService::Budget", [0, 1]],
      ["entries", "AdWords::V200902::CampaignService::Campaign[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::CampaignReturnValue,
    :schema_type => XSD::QName.new(NsV200902, "CampaignReturnValue"),
    :schema_basetype => XSD::QName.new(NsV200902, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdWords::V200902::CampaignService::Campaign[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::CampaignSelector,
    :schema_type => XSD::QName.new(NsV200902, "CampaignSelector"),
    :schema_element => [
      ["campaignIds", "AdWords::V200902::CampaignService::CampaignId[]", [0, nil]],
      ["statsSelector", "AdWords::V200902::CampaignService::StatsSelector", [0, 1]],
      ["paging", "AdWords::V200902::CampaignService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::ExplicitBids,
    :schema_type => XSD::QName.new(NsV200902, "ExplicitBids"),
    :schema_basetype => XSD::QName.new(NsV200902, "CampaignBidSource"),
    :schema_element => [
      ["campaignBidSource_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "CampaignBidSource.Type")], [0, 1]],
      ["adGroupBids", "AdWords::V200902::CampaignService::AdGroupBids", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::ListReturnValue,
    :schema_type => XSD::QName.new(NsV200902, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ListReturnValue.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::BiddingTransition,
    :schema_type => XSD::QName.new(NsV200902, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdWords::V200902::CampaignService::BiddingStrategy", [0, 1]],
      ["bidSource", "AdWords::V200902::CampaignService::CampaignBidSource", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::CampaignOperation,
    :schema_type => XSD::QName.new(NsV200902, "CampaignOperation"),
    :schema_basetype => XSD::QName.new(NsV200902, "Operation"),
    :schema_element => [
      ["operator", "AdWords::V200902::CampaignService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Operation.Type")], [0, 1]],
      ["biddingTransition", "AdWords::V200902::CampaignService::BiddingTransition", [0, 1]],
      ["operand", "AdWords::V200902::CampaignService::Campaign", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::AdServingOptimizationStatus,
    :schema_type => XSD::QName.new(NsV200902, "AdServingOptimizationStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::AutoKeywordMatchingStatus,
    :schema_type => XSD::QName.new(NsV200902, "AutoKeywordMatchingStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::BidEvent,
    :schema_type => XSD::QName.new(NsV200902, "Bid.Event")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "BiddingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::BiddingTransitionErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "BiddingTransitionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::BudgetBudgetDeliveryMethod,
    :schema_type => XSD::QName.new(NsV200902, "Budget.BudgetDeliveryMethod")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::BudgetBudgetPeriod,
    :schema_type => XSD::QName.new(NsV200902, "Budget.BudgetPeriod")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::BudgetErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "BudgetError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::CampaignErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "CampaignError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV200902, "CampaignStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::CampaignType,
    :schema_type => XSD::QName.new(NsV200902, "CampaignType")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NewEntityCreationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200902, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::Operator,
    :schema_type => XSD::QName.new(NsV200902, "Operator")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "OperatorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::PricingModel,
    :schema_type => XSD::QName.new(NsV200902, "PricingModel")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::QuotaErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "QuotaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::ServingStatus,
    :schema_type => XSD::QName.new(NsV200902, "ServingStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV200902, "Stats.Network")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "StringLengthError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::Get,
    :schema_name => XSD::QName.new(NsV200902, "get"),
    :schema_element => [
      ["selector", "AdWords::V200902::CampaignService::CampaignSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::GetResponse,
    :schema_name => XSD::QName.new(NsV200902, "getResponse"),
    :schema_element => [
      ["rval", "AdWords::V200902::CampaignService::CampaignPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::ApiException,
    :schema_name => XSD::QName.new(NsV200902, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200902::CampaignService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::Mutate,
    :schema_name => XSD::QName.new(NsV200902, "mutate"),
    :schema_element => [
      ["operations", "AdWords::V200902::CampaignService::CampaignOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::MutateResponse,
    :schema_name => XSD::QName.new(NsV200902, "mutateResponse"),
    :schema_element => [
      ["rval", "AdWords::V200902::CampaignService::CampaignReturnValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::SoapHeader,
    :schema_name => XSD::QName.new(NsV200902, "RequestHeader"),
    :schema_element => [
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignService::SoapResponseHeader,
    :schema_name => XSD::QName.new(NsV200902, "ResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]]
    ]
  )
end

end; end; end
