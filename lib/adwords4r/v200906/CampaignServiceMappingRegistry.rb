require 'adwords4r/v200906/CampaignService'
require 'soap/mapping'

module AdWords; module V200906; module CampaignService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV200906 = "https://adwords.google.com/api/adwords/cm/v200906"

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200906, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::BiddingError,
    :schema_type => XSD::QName.new(NsV200906, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::BiddingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::BiddingTransitionError,
    :schema_type => XSD::QName.new(NsV200906, "BiddingTransitionError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::BiddingTransitionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::BudgetError,
    :schema_type => XSD::QName.new(NsV200906, "BudgetError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::BudgetErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::CampaignError,
    :schema_type => XSD::QName.new(NsV200906, "CampaignError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::CampaignErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV200906, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::ConversionOptimizer,
    :schema_type => XSD::QName.new(NsV200906, "ConversionOptimizer"),
    :schema_basetype => XSD::QName.new(NsV200906, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "BiddingStrategy.Type")], [0, 1]],
      ["pricingModel", "AdWords::V200906::CampaignService::PricingModel", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::ConversionOptimizerBiddingTransition,
    :schema_type => XSD::QName.new(NsV200906, "ConversionOptimizerBiddingTransition"),
    :schema_basetype => XSD::QName.new(NsV200906, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdWords::V200906::CampaignService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdWords::V200906::CampaignService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "BiddingTransition.Type")], [0, 1]],
      ["useSavedBids", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200906, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::DateError,
    :schema_type => XSD::QName.new(NsV200906, "DateError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::DateErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::DateRange,
    :schema_type => XSD::QName.new(NsV200906, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::DistinctError,
    :schema_type => XSD::QName.new(NsV200906, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::DoubleValue,
    :schema_type => XSD::QName.new(NsV200906, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200906, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::FrequencyCap,
    :schema_type => XSD::QName.new(NsV200906, "FrequencyCap"),
    :schema_element => [
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["timeUnit", "AdWords::V200906::CampaignService::TimeUnit", [0, 1]],
      ["level", "AdWords::V200906::CampaignService::Level", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::InternalApiError,
    :schema_type => XSD::QName.new(NsV200906, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::LoasAuthenticationError,
    :schema_type => XSD::QName.new(NsV200906, "LoasAuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::LoasAuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::LongValue,
    :schema_type => XSD::QName.new(NsV200906, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::ManualCPC,
    :schema_type => XSD::QName.new(NsV200906, "ManualCPC"),
    :schema_basetype => XSD::QName.new(NsV200906, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::ManualCPM,
    :schema_type => XSD::QName.new(NsV200906, "ManualCPM"),
    :schema_basetype => XSD::QName.new(NsV200906, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::Money,
    :schema_type => XSD::QName.new(NsV200906, "Money"),
    :schema_basetype => XSD::QName.new(NsV200906, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV200906, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200906, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200906, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::NullError,
    :schema_type => XSD::QName.new(NsV200906, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV200906, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::OperatorError,
    :schema_type => XSD::QName.new(NsV200906, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::OperatorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::Paging,
    :schema_type => XSD::QName.new(NsV200906, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200906, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::QuotaError,
    :schema_type => XSD::QName.new(NsV200906, "QuotaError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::QuotaErrorReason", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::C_RangeError,
    :schema_type => XSD::QName.new(NsV200906, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200906, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::RequiredError,
    :schema_type => XSD::QName.new(NsV200906, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV200906, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::SoapHeader,
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
    :class => AdWords::V200906::CampaignService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200906, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV200906, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::StatsSelector,
    :schema_type => XSD::QName.new(NsV200906, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdWords::V200906::CampaignService::DateRange", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::StringLengthError,
    :schema_type => XSD::QName.new(NsV200906, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::StringLengthErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::Stats,
    :schema_type => XSD::QName.new(NsV200906, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdWords::V200906::CampaignService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdWords::V200906::CampaignService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdWords::V200906::CampaignService::Money", [0, 1]],
      ["averageCpm", "AdWords::V200906::CampaignService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdWords::V200906::CampaignService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdWords::V200906::CampaignService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::ApiException,
    :schema_type => XSD::QName.new(NsV200906, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200906::CampaignService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200906, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::Bid,
    :schema_type => XSD::QName.new(NsV200906, "Bid"),
    :schema_element => [
      ["amount", "AdWords::V200906::CampaignService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::Budget,
    :schema_type => XSD::QName.new(NsV200906, "Budget"),
    :schema_element => [
      ["period", "AdWords::V200906::CampaignService::BudgetBudgetPeriod", [0, 1]],
      ["amount", "AdWords::V200906::CampaignService::Money", [0, 1]],
      ["deliveryMethod", "AdWords::V200906::CampaignService::BudgetBudgetDeliveryMethod", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::BudgetOptimizer,
    :schema_type => XSD::QName.new(NsV200906, "BudgetOptimizer"),
    :schema_basetype => XSD::QName.new(NsV200906, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "BiddingStrategy.Type")], [0, 1]],
      ["bidCeiling", "AdWords::V200906::CampaignService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::BudgetOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV200906, "BudgetOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200906, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupBids.Type")], [0, 1]],
      ["proxyKeywordMaxCpc", "AdWords::V200906::CampaignService::Bid", [0, 1]],
      ["proxySiteMaxCpc", "AdWords::V200906::CampaignService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::ConversionOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV200906, "ConversionOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200906, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupBids.Type")], [0, 1]],
      ["targetCpa", "AdWords::V200906::CampaignService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::ManualCPCAdGroupBids,
    :schema_type => XSD::QName.new(NsV200906, "ManualCPCAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200906, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupBids.Type")], [0, 1]],
      ["keywordMaxCpc", "AdWords::V200906::CampaignService::Bid", [0, 1]],
      ["keywordContentMaxCpc", "AdWords::V200906::CampaignService::Bid", [0, 1]],
      ["siteMaxCpc", "AdWords::V200906::CampaignService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::ManualCPMAdGroupBids,
    :schema_type => XSD::QName.new(NsV200906, "ManualCPMAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200906, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupBids.Type")], [0, 1]],
      ["maxCpm", "AdWords::V200906::CampaignService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::BiddingTransition,
    :schema_type => XSD::QName.new(NsV200906, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdWords::V200906::CampaignService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdWords::V200906::CampaignService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "BiddingTransition.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::Campaign,
    :schema_type => XSD::QName.new(NsV200906, "Campaign"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdWords::V200906::CampaignService::CampaignStatus", [0, 1]],
      ["servingStatus", "AdWords::V200906::CampaignService::ServingStatus", [0, 1]],
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["budget", "AdWords::V200906::CampaignService::Budget", [0, 1]],
      ["biddingStrategy", "AdWords::V200906::CampaignService::BiddingStrategy", [0, 1]],
      ["autoKeywordMatchingStatus", "AdWords::V200906::CampaignService::AutoKeywordMatchingStatus", [0, 1]],
      ["stats", "AdWords::V200906::CampaignService::Stats", [0, 1]],
      ["adServingOptimizationStatus", "AdWords::V200906::CampaignService::AdServingOptimizationStatus", [0, 1]],
      ["frequencyCap", "AdWords::V200906::CampaignService::FrequencyCap", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::CampaignOperation,
    :schema_type => XSD::QName.new(NsV200906, "CampaignOperation"),
    :schema_basetype => XSD::QName.new(NsV200906, "Operation"),
    :schema_element => [
      ["operator", "AdWords::V200906::CampaignService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Operation.Type")], [0, 1]],
      ["biddingTransition", "AdWords::V200906::CampaignService::BiddingTransition", [0, 1]],
      ["operand", "AdWords::V200906::CampaignService::Campaign", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::CampaignPage,
    :schema_type => XSD::QName.new(NsV200906, "CampaignPage"),
    :schema_basetype => XSD::QName.new(NsV200906, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Page.Type")], [0, 1]],
      ["totalBudget", "AdWords::V200906::CampaignService::Budget", [0, 1]],
      ["entries", "AdWords::V200906::CampaignService::Campaign[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::CampaignReturnValue,
    :schema_type => XSD::QName.new(NsV200906, "CampaignReturnValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdWords::V200906::CampaignService::Campaign[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::CampaignSelector,
    :schema_type => XSD::QName.new(NsV200906, "CampaignSelector"),
    :schema_element => [
      ["ids", "SOAP::SOAPLong[]", [0, nil]],
      ["campaignStatuses", "AdWords::V200906::CampaignService::CampaignStatus[]", [0, nil]],
      ["statsSelector", "AdWords::V200906::CampaignService::StatsSelector", [0, 1]],
      ["paging", "AdWords::V200906::CampaignService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::AdServingOptimizationStatus,
    :schema_type => XSD::QName.new(NsV200906, "AdServingOptimizationStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::AutoKeywordMatchingStatus,
    :schema_type => XSD::QName.new(NsV200906, "AutoKeywordMatchingStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "BiddingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::BiddingTransitionErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "BiddingTransitionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::BudgetBudgetDeliveryMethod,
    :schema_type => XSD::QName.new(NsV200906, "Budget.BudgetDeliveryMethod")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::BudgetBudgetPeriod,
    :schema_type => XSD::QName.new(NsV200906, "Budget.BudgetPeriod")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::BudgetErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "BudgetError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::CampaignErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "CampaignError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV200906, "CampaignStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "DateError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200906, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::Level,
    :schema_type => XSD::QName.new(NsV200906, "Level")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::LoasAuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "LoasAuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NewEntityCreationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200906, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::Operator,
    :schema_type => XSD::QName.new(NsV200906, "Operator")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "OperatorError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::PricingModel,
    :schema_type => XSD::QName.new(NsV200906, "PricingModel")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::QuotaErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "QuotaError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::ServingStatus,
    :schema_type => XSD::QName.new(NsV200906, "ServingStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV200906, "Stats.Network")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "StatsQueryError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "StringLengthError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignService::TimeUnit,
    :schema_type => XSD::QName.new(NsV200906, "TimeUnit")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200906, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::BiddingError,
    :schema_type => XSD::QName.new(NsV200906, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::BiddingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::BiddingTransitionError,
    :schema_type => XSD::QName.new(NsV200906, "BiddingTransitionError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::BiddingTransitionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::BudgetError,
    :schema_type => XSD::QName.new(NsV200906, "BudgetError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::BudgetErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::CampaignError,
    :schema_type => XSD::QName.new(NsV200906, "CampaignError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::CampaignErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV200906, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::ConversionOptimizer,
    :schema_type => XSD::QName.new(NsV200906, "ConversionOptimizer"),
    :schema_basetype => XSD::QName.new(NsV200906, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "BiddingStrategy.Type")], [0, 1]],
      ["pricingModel", "AdWords::V200906::CampaignService::PricingModel", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::ConversionOptimizerBiddingTransition,
    :schema_type => XSD::QName.new(NsV200906, "ConversionOptimizerBiddingTransition"),
    :schema_basetype => XSD::QName.new(NsV200906, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdWords::V200906::CampaignService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdWords::V200906::CampaignService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "BiddingTransition.Type")], [0, 1]],
      ["useSavedBids", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200906, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::DateError,
    :schema_type => XSD::QName.new(NsV200906, "DateError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::DateErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::DateRange,
    :schema_type => XSD::QName.new(NsV200906, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::DistinctError,
    :schema_type => XSD::QName.new(NsV200906, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::DoubleValue,
    :schema_type => XSD::QName.new(NsV200906, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200906, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::FrequencyCap,
    :schema_type => XSD::QName.new(NsV200906, "FrequencyCap"),
    :schema_element => [
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["timeUnit", "AdWords::V200906::CampaignService::TimeUnit", [0, 1]],
      ["level", "AdWords::V200906::CampaignService::Level", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::InternalApiError,
    :schema_type => XSD::QName.new(NsV200906, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::LoasAuthenticationError,
    :schema_type => XSD::QName.new(NsV200906, "LoasAuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::LoasAuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::LongValue,
    :schema_type => XSD::QName.new(NsV200906, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::ManualCPC,
    :schema_type => XSD::QName.new(NsV200906, "ManualCPC"),
    :schema_basetype => XSD::QName.new(NsV200906, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::ManualCPM,
    :schema_type => XSD::QName.new(NsV200906, "ManualCPM"),
    :schema_basetype => XSD::QName.new(NsV200906, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::Money,
    :schema_type => XSD::QName.new(NsV200906, "Money"),
    :schema_basetype => XSD::QName.new(NsV200906, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV200906, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200906, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200906, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::NullError,
    :schema_type => XSD::QName.new(NsV200906, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV200906, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::OperatorError,
    :schema_type => XSD::QName.new(NsV200906, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::OperatorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::Paging,
    :schema_type => XSD::QName.new(NsV200906, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200906, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::QuotaError,
    :schema_type => XSD::QName.new(NsV200906, "QuotaError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::QuotaErrorReason", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::C_RangeError,
    :schema_type => XSD::QName.new(NsV200906, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200906, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::RequiredError,
    :schema_type => XSD::QName.new(NsV200906, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV200906, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::SoapHeader,
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
    :class => AdWords::V200906::CampaignService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200906, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV200906, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::StatsSelector,
    :schema_type => XSD::QName.new(NsV200906, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdWords::V200906::CampaignService::DateRange", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::StringLengthError,
    :schema_type => XSD::QName.new(NsV200906, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignService::StringLengthErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::Stats,
    :schema_type => XSD::QName.new(NsV200906, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdWords::V200906::CampaignService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdWords::V200906::CampaignService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdWords::V200906::CampaignService::Money", [0, 1]],
      ["averageCpm", "AdWords::V200906::CampaignService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdWords::V200906::CampaignService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdWords::V200906::CampaignService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::ApiException,
    :schema_type => XSD::QName.new(NsV200906, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200906::CampaignService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200906, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::Bid,
    :schema_type => XSD::QName.new(NsV200906, "Bid"),
    :schema_element => [
      ["amount", "AdWords::V200906::CampaignService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::Budget,
    :schema_type => XSD::QName.new(NsV200906, "Budget"),
    :schema_element => [
      ["period", "AdWords::V200906::CampaignService::BudgetBudgetPeriod", [0, 1]],
      ["amount", "AdWords::V200906::CampaignService::Money", [0, 1]],
      ["deliveryMethod", "AdWords::V200906::CampaignService::BudgetBudgetDeliveryMethod", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::BudgetOptimizer,
    :schema_type => XSD::QName.new(NsV200906, "BudgetOptimizer"),
    :schema_basetype => XSD::QName.new(NsV200906, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "BiddingStrategy.Type")], [0, 1]],
      ["bidCeiling", "AdWords::V200906::CampaignService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::BudgetOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV200906, "BudgetOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200906, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupBids.Type")], [0, 1]],
      ["proxyKeywordMaxCpc", "AdWords::V200906::CampaignService::Bid", [0, 1]],
      ["proxySiteMaxCpc", "AdWords::V200906::CampaignService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::ConversionOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV200906, "ConversionOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200906, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupBids.Type")], [0, 1]],
      ["targetCpa", "AdWords::V200906::CampaignService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::ManualCPCAdGroupBids,
    :schema_type => XSD::QName.new(NsV200906, "ManualCPCAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200906, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupBids.Type")], [0, 1]],
      ["keywordMaxCpc", "AdWords::V200906::CampaignService::Bid", [0, 1]],
      ["keywordContentMaxCpc", "AdWords::V200906::CampaignService::Bid", [0, 1]],
      ["siteMaxCpc", "AdWords::V200906::CampaignService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::ManualCPMAdGroupBids,
    :schema_type => XSD::QName.new(NsV200906, "ManualCPMAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200906, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupBids.Type")], [0, 1]],
      ["maxCpm", "AdWords::V200906::CampaignService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::BiddingTransition,
    :schema_type => XSD::QName.new(NsV200906, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdWords::V200906::CampaignService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdWords::V200906::CampaignService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "BiddingTransition.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::Campaign,
    :schema_type => XSD::QName.new(NsV200906, "Campaign"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdWords::V200906::CampaignService::CampaignStatus", [0, 1]],
      ["servingStatus", "AdWords::V200906::CampaignService::ServingStatus", [0, 1]],
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["budget", "AdWords::V200906::CampaignService::Budget", [0, 1]],
      ["biddingStrategy", "AdWords::V200906::CampaignService::BiddingStrategy", [0, 1]],
      ["autoKeywordMatchingStatus", "AdWords::V200906::CampaignService::AutoKeywordMatchingStatus", [0, 1]],
      ["stats", "AdWords::V200906::CampaignService::Stats", [0, 1]],
      ["adServingOptimizationStatus", "AdWords::V200906::CampaignService::AdServingOptimizationStatus", [0, 1]],
      ["frequencyCap", "AdWords::V200906::CampaignService::FrequencyCap", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::CampaignOperation,
    :schema_type => XSD::QName.new(NsV200906, "CampaignOperation"),
    :schema_basetype => XSD::QName.new(NsV200906, "Operation"),
    :schema_element => [
      ["operator", "AdWords::V200906::CampaignService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Operation.Type")], [0, 1]],
      ["biddingTransition", "AdWords::V200906::CampaignService::BiddingTransition", [0, 1]],
      ["operand", "AdWords::V200906::CampaignService::Campaign", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::CampaignPage,
    :schema_type => XSD::QName.new(NsV200906, "CampaignPage"),
    :schema_basetype => XSD::QName.new(NsV200906, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Page.Type")], [0, 1]],
      ["totalBudget", "AdWords::V200906::CampaignService::Budget", [0, 1]],
      ["entries", "AdWords::V200906::CampaignService::Campaign[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::CampaignReturnValue,
    :schema_type => XSD::QName.new(NsV200906, "CampaignReturnValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdWords::V200906::CampaignService::Campaign[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::CampaignSelector,
    :schema_type => XSD::QName.new(NsV200906, "CampaignSelector"),
    :schema_element => [
      ["ids", "SOAP::SOAPLong[]", [0, nil]],
      ["campaignStatuses", "AdWords::V200906::CampaignService::CampaignStatus[]", [0, nil]],
      ["statsSelector", "AdWords::V200906::CampaignService::StatsSelector", [0, 1]],
      ["paging", "AdWords::V200906::CampaignService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::AdServingOptimizationStatus,
    :schema_type => XSD::QName.new(NsV200906, "AdServingOptimizationStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::AutoKeywordMatchingStatus,
    :schema_type => XSD::QName.new(NsV200906, "AutoKeywordMatchingStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "BiddingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::BiddingTransitionErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "BiddingTransitionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::BudgetBudgetDeliveryMethod,
    :schema_type => XSD::QName.new(NsV200906, "Budget.BudgetDeliveryMethod")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::BudgetBudgetPeriod,
    :schema_type => XSD::QName.new(NsV200906, "Budget.BudgetPeriod")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::BudgetErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "BudgetError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::CampaignErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "CampaignError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV200906, "CampaignStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "DateError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200906, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::Level,
    :schema_type => XSD::QName.new(NsV200906, "Level")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::LoasAuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "LoasAuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NewEntityCreationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200906, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::Operator,
    :schema_type => XSD::QName.new(NsV200906, "Operator")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "OperatorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::PricingModel,
    :schema_type => XSD::QName.new(NsV200906, "PricingModel")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::QuotaErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "QuotaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::ServingStatus,
    :schema_type => XSD::QName.new(NsV200906, "ServingStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV200906, "Stats.Network")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "StringLengthError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::TimeUnit,
    :schema_type => XSD::QName.new(NsV200906, "TimeUnit")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::Get,
    :schema_name => XSD::QName.new(NsV200906, "get"),
    :schema_element => [
      ["selector", "AdWords::V200906::CampaignService::CampaignSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::GetResponse,
    :schema_name => XSD::QName.new(NsV200906, "getResponse"),
    :schema_element => [
      ["rval", "AdWords::V200906::CampaignService::CampaignPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::ApiException,
    :schema_name => XSD::QName.new(NsV200906, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200906::CampaignService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::Mutate,
    :schema_name => XSD::QName.new(NsV200906, "mutate"),
    :schema_element => [
      ["operations", "AdWords::V200906::CampaignService::CampaignOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::MutateResponse,
    :schema_name => XSD::QName.new(NsV200906, "mutateResponse"),
    :schema_element => [
      ["rval", "AdWords::V200906::CampaignService::CampaignReturnValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignService::SoapHeader,
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
    :class => AdWords::V200906::CampaignService::SoapResponseHeader,
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
