require 'adwords4r/v200906/AdGroupCriterionService'
require 'soap/mapping'

module AdWords; module V200906; module AdGroupCriterionService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV200906 = "https://adwords.google.com/api/adwords/cm/v200906"

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::AdGroupCriterionError,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupCriterionError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::AdGroupCriterionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::AdGroupCriterionIdFilter,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupCriterionIdFilter"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterionId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::AdGroupCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV200906, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdWords::V200906::AdGroupCriterionService::AdGroupCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV200906, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200906, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::BiddingError,
    :schema_type => XSD::QName.new(NsV200906, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::BiddingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV200906, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::ConversionOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200906, "ConversionOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200906, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupCriterionBids.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::CriterionPolicyError,
    :schema_type => XSD::QName.new(NsV200906, "CriterionPolicyError"),
    :schema_basetype => XSD::QName.new(NsV200906, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["key", "AdWords::V200906::AdGroupCriterionService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdWords::V200906::AdGroupCriterionService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200906, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::DateError,
    :schema_type => XSD::QName.new(NsV200906, "DateError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::DateErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::DateRange,
    :schema_type => XSD::QName.new(NsV200906, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::DistinctError,
    :schema_type => XSD::QName.new(NsV200906, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::DoubleValue,
    :schema_type => XSD::QName.new(NsV200906, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::EntityAccessDenied,
    :schema_type => XSD::QName.new(NsV200906, "EntityAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::EntityAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200906, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::InternalApiError,
    :schema_type => XSD::QName.new(NsV200906, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::Keyword,
    :schema_type => XSD::QName.new(NsV200906, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV200906, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdWords::V200906::AdGroupCriterionService::KeywordMatchType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::LongValue,
    :schema_type => XSD::QName.new(NsV200906, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::Money,
    :schema_type => XSD::QName.new(NsV200906, "Money"),
    :schema_basetype => XSD::QName.new(NsV200906, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::NegativeAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV200906, "NegativeAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV200906, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdWords::V200906::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV200906, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200906, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200906, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::NullError,
    :schema_type => XSD::QName.new(NsV200906, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV200906, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::Paging,
    :schema_type => XSD::QName.new(NsV200906, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::PagingError,
    :schema_type => XSD::QName.new(NsV200906, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::PagingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::Placement,
    :schema_type => XSD::QName.new(NsV200906, "Placement"),
    :schema_basetype => XSD::QName.new(NsV200906, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV200906, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV200906, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::QualityInfo,
    :schema_type => XSD::QName.new(NsV200906, "QualityInfo"),
    :schema_element => [
      ["isKeywordAdRelevanceAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageQualityAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageLatencyAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["qualityScore", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200906, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::QuotaExceededError,
    :schema_type => XSD::QName.new(NsV200906, "QuotaExceededError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::QuotaExceededErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::C_RangeError,
    :schema_type => XSD::QName.new(NsV200906, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200906, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::RequiredError,
    :schema_type => XSD::QName.new(NsV200906, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV200906, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::SoapHeader,
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
    :class => AdWords::V200906::AdGroupCriterionService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200906, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV200906, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::StatsSelector,
    :schema_type => XSD::QName.new(NsV200906, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdWords::V200906::AdGroupCriterionService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "StatsSelector.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::Criterion,
    :schema_type => XSD::QName.new(NsV200906, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Criterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::ExemptionRequest,
    :schema_type => XSD::QName.new(NsV200906, "ExemptionRequest"),
    :schema_element => [
      ["key", "AdWords::V200906::AdGroupCriterionService::PolicyViolationKey", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV200906, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["key", "AdWords::V200906::AdGroupCriterionService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdWords::V200906::AdGroupCriterionService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::Stats,
    :schema_type => XSD::QName.new(NsV200906, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdWords::V200906::AdGroupCriterionService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdWords::V200906::AdGroupCriterionService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdWords::V200906::AdGroupCriterionService::Money", [0, 1]],
      ["averageCpm", "AdWords::V200906::AdGroupCriterionService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdWords::V200906::AdGroupCriterionService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdWords::V200906::AdGroupCriterionService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::ApiException,
    :schema_type => XSD::QName.new(NsV200906, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200906::AdGroupCriterionService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200906, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::Bid,
    :schema_type => XSD::QName.new(NsV200906, "Bid"),
    :schema_element => [
      ["amount", "AdWords::V200906::AdGroupCriterionService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::BudgetOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200906, "BudgetOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200906, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupCriterionBids.Type")], [0, 1]],
      ["proxyBid", "AdWords::V200906::AdGroupCriterionService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::ManualCPMAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200906, "ManualCPMAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200906, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpm", "AdWords::V200906::AdGroupCriterionService::Bid", [0, 1]],
      ["bidSource", "AdWords::V200906::AdGroupCriterionService::BidSource", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::PositionPreferenceAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200906, "PositionPreferenceAdGroupCriterionBids"),
    :schema_element => [
      ["proxyMaxCpc", "AdWords::V200906::AdGroupCriterionService::Bid", [0, 1]],
      ["preferredPosition", "SOAP::SOAPInt", [0, 1]],
      ["bottomPosition", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::ManualCPCAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200906, "ManualCPCAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200906, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpc", "AdWords::V200906::AdGroupCriterionService::Bid", [0, 1]],
      ["bidSource", "AdWords::V200906::AdGroupCriterionService::BidSource", [0, 1]],
      ["positionPreferenceBids", "AdWords::V200906::AdGroupCriterionService::PositionPreferenceAdGroupCriterionBids", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::BiddableAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV200906, "BiddableAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV200906, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdWords::V200906::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupCriterion.Type")], [0, 1]],
      ["userStatus", "AdWords::V200906::AdGroupCriterionService::UserStatus", [0, 1]],
      ["systemServingStatus", "AdWords::V200906::AdGroupCriterionService::SystemServingStatus", [0, 1]],
      ["approvalStatus", "AdWords::V200906::AdGroupCriterionService::ApprovalStatus", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["bids", "AdWords::V200906::AdGroupCriterionService::AdGroupCriterionBids", [0, 1]],
      ["firstPageCpc", "AdWords::V200906::AdGroupCriterionService::Bid", [0, 1]],
      ["qualityInfo", "AdWords::V200906::AdGroupCriterionService::QualityInfo", [0, 1]],
      ["stats", "AdWords::V200906::AdGroupCriterionService::Stats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::AdGroupCriterion,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdWords::V200906::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::AdGroupCriterionOperation,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV200906, "Operation"),
    :schema_element => [
      ["operator", "AdWords::V200906::AdGroupCriterionService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Operation.Type")], [0, 1]],
      ["operand", "AdWords::V200906::AdGroupCriterionService::AdGroupCriterion", [0, 1]],
      ["exemptionRequests", "AdWords::V200906::AdGroupCriterionService::ExemptionRequest[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::AdGroupCriterionPage,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupCriterionPage"),
    :schema_basetype => XSD::QName.new(NsV200906, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Page.Type")], [0, 1]],
      ["entries", "AdWords::V200906::AdGroupCriterionService::AdGroupCriterion[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::AdGroupCriterionReturnValue,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupCriterionReturnValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdWords::V200906::AdGroupCriterionService::AdGroupCriterion[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::AdGroupCriterionSelector,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupCriterionSelector"),
    :schema_element => [
      ["idFilters", "AdWords::V200906::AdGroupCriterionService::AdGroupCriterionIdFilter[]", [0, nil]],
      ["criterionUse", "AdWords::V200906::AdGroupCriterionService::CriterionUse", [0, 1]],
      ["userStatuses", "AdWords::V200906::AdGroupCriterionService::UserStatus[]", [0, nil]],
      ["statsSelector", "AdWords::V200906::AdGroupCriterionService::StatsSelector", [0, 1]],
      ["paging", "AdWords::V200906::AdGroupCriterionService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::AdGroupCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupCriterionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::AdGroupCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupCriterionLimitExceeded.CriteriaLimitType")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::ApprovalStatus,
    :schema_type => XSD::QName.new(NsV200906, "ApprovalStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::BidSource,
    :schema_type => XSD::QName.new(NsV200906, "BidSource")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "BiddingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::CriterionUse,
    :schema_type => XSD::QName.new(NsV200906, "CriterionUse")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "DateError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::EntityAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200906, "EntityAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV200906, "EntityCountLimitExceeded.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200906, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV200906, "KeywordMatchType")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NewEntityCreationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200906, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::Operator,
    :schema_type => XSD::QName.new(NsV200906, "Operator")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "PagingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::QuotaExceededErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "QuotaExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV200906, "Stats.Network")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "StatsQueryError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::SystemServingStatus,
    :schema_type => XSD::QName.new(NsV200906, "SystemServingStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::UserStatus,
    :schema_type => XSD::QName.new(NsV200906, "UserStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::AdGroupCriterionError,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupCriterionError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::AdGroupCriterionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::AdGroupCriterionIdFilter,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupCriterionIdFilter"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterionId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::AdGroupCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV200906, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdWords::V200906::AdGroupCriterionService::AdGroupCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV200906, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200906, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::BiddingError,
    :schema_type => XSD::QName.new(NsV200906, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::BiddingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV200906, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::ConversionOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200906, "ConversionOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200906, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupCriterionBids.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::CriterionPolicyError,
    :schema_type => XSD::QName.new(NsV200906, "CriterionPolicyError"),
    :schema_basetype => XSD::QName.new(NsV200906, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["key", "AdWords::V200906::AdGroupCriterionService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdWords::V200906::AdGroupCriterionService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200906, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::DateError,
    :schema_type => XSD::QName.new(NsV200906, "DateError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::DateErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::DateRange,
    :schema_type => XSD::QName.new(NsV200906, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::DistinctError,
    :schema_type => XSD::QName.new(NsV200906, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::DoubleValue,
    :schema_type => XSD::QName.new(NsV200906, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::EntityAccessDenied,
    :schema_type => XSD::QName.new(NsV200906, "EntityAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::EntityAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200906, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::InternalApiError,
    :schema_type => XSD::QName.new(NsV200906, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::Keyword,
    :schema_type => XSD::QName.new(NsV200906, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV200906, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdWords::V200906::AdGroupCriterionService::KeywordMatchType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::LongValue,
    :schema_type => XSD::QName.new(NsV200906, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::Money,
    :schema_type => XSD::QName.new(NsV200906, "Money"),
    :schema_basetype => XSD::QName.new(NsV200906, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::NegativeAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV200906, "NegativeAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV200906, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdWords::V200906::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV200906, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200906, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200906, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::NullError,
    :schema_type => XSD::QName.new(NsV200906, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV200906, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::Paging,
    :schema_type => XSD::QName.new(NsV200906, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::PagingError,
    :schema_type => XSD::QName.new(NsV200906, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::PagingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::Placement,
    :schema_type => XSD::QName.new(NsV200906, "Placement"),
    :schema_basetype => XSD::QName.new(NsV200906, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV200906, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV200906, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::QualityInfo,
    :schema_type => XSD::QName.new(NsV200906, "QualityInfo"),
    :schema_element => [
      ["isKeywordAdRelevanceAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageQualityAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageLatencyAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["qualityScore", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200906, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::QuotaExceededError,
    :schema_type => XSD::QName.new(NsV200906, "QuotaExceededError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::QuotaExceededErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::C_RangeError,
    :schema_type => XSD::QName.new(NsV200906, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200906, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::RequiredError,
    :schema_type => XSD::QName.new(NsV200906, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV200906, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::SoapHeader,
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
    :class => AdWords::V200906::AdGroupCriterionService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200906, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV200906, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupCriterionService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::StatsSelector,
    :schema_type => XSD::QName.new(NsV200906, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdWords::V200906::AdGroupCriterionService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "StatsSelector.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::Criterion,
    :schema_type => XSD::QName.new(NsV200906, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Criterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::ExemptionRequest,
    :schema_type => XSD::QName.new(NsV200906, "ExemptionRequest"),
    :schema_element => [
      ["key", "AdWords::V200906::AdGroupCriterionService::PolicyViolationKey", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV200906, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["key", "AdWords::V200906::AdGroupCriterionService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdWords::V200906::AdGroupCriterionService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::Stats,
    :schema_type => XSD::QName.new(NsV200906, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdWords::V200906::AdGroupCriterionService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdWords::V200906::AdGroupCriterionService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdWords::V200906::AdGroupCriterionService::Money", [0, 1]],
      ["averageCpm", "AdWords::V200906::AdGroupCriterionService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdWords::V200906::AdGroupCriterionService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdWords::V200906::AdGroupCriterionService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::ApiException,
    :schema_type => XSD::QName.new(NsV200906, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200906::AdGroupCriterionService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200906, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::Bid,
    :schema_type => XSD::QName.new(NsV200906, "Bid"),
    :schema_element => [
      ["amount", "AdWords::V200906::AdGroupCriterionService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::BudgetOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200906, "BudgetOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200906, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupCriterionBids.Type")], [0, 1]],
      ["proxyBid", "AdWords::V200906::AdGroupCriterionService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::ManualCPMAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200906, "ManualCPMAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200906, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpm", "AdWords::V200906::AdGroupCriterionService::Bid", [0, 1]],
      ["bidSource", "AdWords::V200906::AdGroupCriterionService::BidSource", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::PositionPreferenceAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200906, "PositionPreferenceAdGroupCriterionBids"),
    :schema_element => [
      ["proxyMaxCpc", "AdWords::V200906::AdGroupCriterionService::Bid", [0, 1]],
      ["preferredPosition", "SOAP::SOAPInt", [0, 1]],
      ["bottomPosition", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::ManualCPCAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200906, "ManualCPCAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200906, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpc", "AdWords::V200906::AdGroupCriterionService::Bid", [0, 1]],
      ["bidSource", "AdWords::V200906::AdGroupCriterionService::BidSource", [0, 1]],
      ["positionPreferenceBids", "AdWords::V200906::AdGroupCriterionService::PositionPreferenceAdGroupCriterionBids", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::BiddableAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV200906, "BiddableAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV200906, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdWords::V200906::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupCriterion.Type")], [0, 1]],
      ["userStatus", "AdWords::V200906::AdGroupCriterionService::UserStatus", [0, 1]],
      ["systemServingStatus", "AdWords::V200906::AdGroupCriterionService::SystemServingStatus", [0, 1]],
      ["approvalStatus", "AdWords::V200906::AdGroupCriterionService::ApprovalStatus", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["bids", "AdWords::V200906::AdGroupCriterionService::AdGroupCriterionBids", [0, 1]],
      ["firstPageCpc", "AdWords::V200906::AdGroupCriterionService::Bid", [0, 1]],
      ["qualityInfo", "AdWords::V200906::AdGroupCriterionService::QualityInfo", [0, 1]],
      ["stats", "AdWords::V200906::AdGroupCriterionService::Stats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::AdGroupCriterion,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdWords::V200906::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::AdGroupCriterionOperation,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV200906, "Operation"),
    :schema_element => [
      ["operator", "AdWords::V200906::AdGroupCriterionService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Operation.Type")], [0, 1]],
      ["operand", "AdWords::V200906::AdGroupCriterionService::AdGroupCriterion", [0, 1]],
      ["exemptionRequests", "AdWords::V200906::AdGroupCriterionService::ExemptionRequest[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::AdGroupCriterionPage,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupCriterionPage"),
    :schema_basetype => XSD::QName.new(NsV200906, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Page.Type")], [0, 1]],
      ["entries", "AdWords::V200906::AdGroupCriterionService::AdGroupCriterion[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::AdGroupCriterionReturnValue,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupCriterionReturnValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdWords::V200906::AdGroupCriterionService::AdGroupCriterion[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::AdGroupCriterionSelector,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupCriterionSelector"),
    :schema_element => [
      ["idFilters", "AdWords::V200906::AdGroupCriterionService::AdGroupCriterionIdFilter[]", [0, nil]],
      ["criterionUse", "AdWords::V200906::AdGroupCriterionService::CriterionUse", [0, 1]],
      ["userStatuses", "AdWords::V200906::AdGroupCriterionService::UserStatus[]", [0, nil]],
      ["statsSelector", "AdWords::V200906::AdGroupCriterionService::StatsSelector", [0, 1]],
      ["paging", "AdWords::V200906::AdGroupCriterionService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::AdGroupCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupCriterionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::AdGroupCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupCriterionLimitExceeded.CriteriaLimitType")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::ApprovalStatus,
    :schema_type => XSD::QName.new(NsV200906, "ApprovalStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::BidSource,
    :schema_type => XSD::QName.new(NsV200906, "BidSource")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "BiddingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::CriterionUse,
    :schema_type => XSD::QName.new(NsV200906, "CriterionUse")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "DateError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::EntityAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200906, "EntityAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV200906, "EntityCountLimitExceeded.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200906, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV200906, "KeywordMatchType")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NewEntityCreationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200906, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::Operator,
    :schema_type => XSD::QName.new(NsV200906, "Operator")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "PagingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::QuotaExceededErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "QuotaExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV200906, "Stats.Network")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::SystemServingStatus,
    :schema_type => XSD::QName.new(NsV200906, "SystemServingStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::UserStatus,
    :schema_type => XSD::QName.new(NsV200906, "UserStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::Get,
    :schema_name => XSD::QName.new(NsV200906, "get"),
    :schema_element => [
      ["selector", "AdWords::V200906::AdGroupCriterionService::AdGroupCriterionSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::GetResponse,
    :schema_name => XSD::QName.new(NsV200906, "getResponse"),
    :schema_element => [
      ["rval", "AdWords::V200906::AdGroupCriterionService::AdGroupCriterionPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::ApiException,
    :schema_name => XSD::QName.new(NsV200906, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200906::AdGroupCriterionService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::Mutate,
    :schema_name => XSD::QName.new(NsV200906, "mutate"),
    :schema_element => [
      ["operations", "AdWords::V200906::AdGroupCriterionService::AdGroupCriterionOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::MutateResponse,
    :schema_name => XSD::QName.new(NsV200906, "mutateResponse"),
    :schema_element => [
      ["rval", "AdWords::V200906::AdGroupCriterionService::AdGroupCriterionReturnValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupCriterionService::SoapHeader,
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
    :class => AdWords::V200906::AdGroupCriterionService::SoapResponseHeader,
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
