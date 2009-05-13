require 'adwords4r/v200902/AdGroupCriterionService'
require 'soap/mapping'

module AdWords; module V200902; module AdGroupCriterionService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV200902 = "https://adwords.google.com/api/adwords/cm/v200902"

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::AdGroupCriterionError,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupCriterionError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::AdGroupCriterionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::AdGroupCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV200902, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdWords::V200902::AdGroupCriterionService::AdGroupCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200902, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::BiddingError,
    :schema_type => XSD::QName.new(NsV200902, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::BiddingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::ConversionOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200902, "ConversionOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupCriterionBids.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::CriterionId,
    :schema_type => XSD::QName.new(NsV200902, "CriterionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::CriterionPolicyError,
    :schema_type => XSD::QName.new(NsV200902, "CriterionPolicyError"),
    :schema_basetype => XSD::QName.new(NsV200902, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["key", "AdWords::V200902::AdGroupCriterionService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdWords::V200902::AdGroupCriterionService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200902, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::Date,
    :schema_type => XSD::QName.new(NsV200902, "Date"),
    :schema_element => [
      ["year", "SOAP::SOAPInt", [0, 1]],
      ["month", "SOAP::SOAPInt", [0, 1]],
      ["day", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::DateRange,
    :schema_type => XSD::QName.new(NsV200902, "DateRange"),
    :schema_element => [
      ["min", "AdWords::V200902::AdGroupCriterionService::Date", [0, 1]],
      ["max", "AdWords::V200902::AdGroupCriterionService::Date", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::DistinctError,
    :schema_type => XSD::QName.new(NsV200902, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::EntityAccessDenied,
    :schema_type => XSD::QName.new(NsV200902, "EntityAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::EntityAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200902, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::Keyword,
    :schema_type => XSD::QName.new(NsV200902, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV200902, "Criterion"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupCriterionService::CriterionId", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdWords::V200902::AdGroupCriterionService::KeywordMatchType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::Money,
    :schema_type => XSD::QName.new(NsV200902, "Money"),
    :schema_element => [
      ["currencyCode", "SOAP::SOAPString", [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::NegativeAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV200902, "NegativeAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "AdWords::V200902::AdGroupCriterionService::AdGroupId", [0, 1]],
      ["criterion", "AdWords::V200902::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV200902, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200902, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200902, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::NullError,
    :schema_type => XSD::QName.new(NsV200902, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::Paging,
    :schema_type => XSD::QName.new(NsV200902, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::Placement,
    :schema_type => XSD::QName.new(NsV200902, "Placement"),
    :schema_basetype => XSD::QName.new(NsV200902, "Criterion"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupCriterionService::CriterionId", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV200902, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV200902, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::QualityInfo,
    :schema_type => XSD::QName.new(NsV200902, "QualityInfo"),
    :schema_element => [
      ["isKeywordAdRelevanceAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageQualityAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageLatencyAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["qualityScore", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200902, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::RequiredError,
    :schema_type => XSD::QName.new(NsV200902, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::SoapHeader,
    :schema_type => XSD::QName.new(NsV200902, "SoapHeader"),
    :schema_element => [
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200902, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV200902, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::StatsSelector,
    :schema_type => XSD::QName.new(NsV200902, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdWords::V200902::AdGroupCriterionService::DateRange", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::AdGroupId,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adGroupId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupId.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::Bid,
    :schema_type => XSD::QName.new(NsV200902, "Bid"),
    :schema_element => [
      ["event", "AdWords::V200902::AdGroupCriterionService::BidEvent", [0, 1]],
      ["amount", "AdWords::V200902::AdGroupCriterionService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::BudgetOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200902, "BudgetOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupCriterionBids.Type")], [0, 1]],
      ["proxyBid", "AdWords::V200902::AdGroupCriterionService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::CampaignId,
    :schema_type => XSD::QName.new(NsV200902, "CampaignId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["campaignId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "CampaignId.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::Criterion,
    :schema_type => XSD::QName.new(NsV200902, "Criterion"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupCriterionService::CriterionId", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Criterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::ExemptionRequest,
    :schema_type => XSD::QName.new(NsV200902, "ExemptionRequest"),
    :schema_element => [
      ["key", "AdWords::V200902::AdGroupCriterionService::PolicyViolationKey", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::ManualCPMAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200902, "ManualCPMAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpm", "AdWords::V200902::AdGroupCriterionService::Bid", [0, 1]],
      ["bidSource", "AdWords::V200902::AdGroupCriterionService::BidSource", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV200902, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["key", "AdWords::V200902::AdGroupCriterionService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdWords::V200902::AdGroupCriterionService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::PositionPreferenceAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200902, "PositionPreferenceAdGroupCriterionBids"),
    :schema_element => [
      ["proxyMaxCpc", "AdWords::V200902::AdGroupCriterionService::Bid", [0, 1]],
      ["preferredPosition", "SOAP::SOAPInt", [0, 1]],
      ["bottomPosition", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::AdGroupCriterionIdFilter,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupCriterionIdFilter"),
    :schema_element => [
      ["campaignId", "AdWords::V200902::AdGroupCriterionService::CampaignId", [0, 1]],
      ["adGroupId", "AdWords::V200902::AdGroupCriterionService::AdGroupId", [0, 1]],
      ["criterionId", "AdWords::V200902::AdGroupCriterionService::CriterionId", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::ApiException,
    :schema_type => XSD::QName.new(NsV200902, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200902::AdGroupCriterionService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200902, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::ManualCPCAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200902, "ManualCPCAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpc", "AdWords::V200902::AdGroupCriterionService::Bid", [0, 1]],
      ["bidSource", "AdWords::V200902::AdGroupCriterionService::BidSource", [0, 1]],
      ["positionPreferenceBids", "AdWords::V200902::AdGroupCriterionService::PositionPreferenceAdGroupCriterionBids", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::BiddableAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV200902, "BiddableAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "AdWords::V200902::AdGroupCriterionService::AdGroupId", [0, 1]],
      ["criterion", "AdWords::V200902::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupCriterion.Type")], [0, 1]],
      ["userStatus", "AdWords::V200902::AdGroupCriterionService::UserStatus", [0, 1]],
      ["systemServingStatus", "AdWords::V200902::AdGroupCriterionService::SystemServingStatus", [0, 1]],
      ["approvalStatus", "AdWords::V200902::AdGroupCriterionService::ApprovalStatus", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["bids", "AdWords::V200902::AdGroupCriterionService::AdGroupCriterionBids", [0, 1]],
      ["firstPageCpc", "AdWords::V200902::AdGroupCriterionService::Bid", [0, 1]],
      ["qualityInfo", "AdWords::V200902::AdGroupCriterionService::QualityInfo", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::AdGroupCriterion,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "AdWords::V200902::AdGroupCriterionService::AdGroupId", [0, 1]],
      ["criterion", "AdWords::V200902::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::AdGroupCriterionOperation,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV200902, "Operation"),
    :schema_element => [
      ["operator", "AdWords::V200902::AdGroupCriterionService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Operation.Type")], [0, 1]],
      ["operand", "AdWords::V200902::AdGroupCriterionService::AdGroupCriterion", [0, 1]],
      ["exemptionRequests", "AdWords::V200902::AdGroupCriterionService::ExemptionRequest[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::AdGroupCriterionPage,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupCriterionPage"),
    :schema_basetype => XSD::QName.new(NsV200902, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Page.Type")], [0, 1]],
      ["entries", "AdWords::V200902::AdGroupCriterionService::AdGroupCriterion[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::AdGroupCriterionReturnValue,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupCriterionReturnValue"),
    :schema_basetype => XSD::QName.new(NsV200902, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdWords::V200902::AdGroupCriterionService::AdGroupCriterion[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::AdGroupCriterionSelector,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupCriterionSelector"),
    :schema_element => [
      ["idFilters", "AdWords::V200902::AdGroupCriterionService::AdGroupCriterionIdFilter[]", [0, nil]],
      ["criterionUse", "AdWords::V200902::AdGroupCriterionService::CriterionUse", [0, 1]],
      ["userStatuses", "AdWords::V200902::AdGroupCriterionService::UserStatus[]", [0, nil]],
      ["statsSelector", "AdWords::V200902::AdGroupCriterionService::StatsSelector", [0, 1]],
      ["paging", "AdWords::V200902::AdGroupCriterionService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::ListReturnValue,
    :schema_type => XSD::QName.new(NsV200902, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ListReturnValue.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::AdGroupCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupCriterionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::AdGroupCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupCriterionLimitExceeded.CriteriaLimitType")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::ApprovalStatus,
    :schema_type => XSD::QName.new(NsV200902, "ApprovalStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::BidEvent,
    :schema_type => XSD::QName.new(NsV200902, "Bid.Event")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::BidSource,
    :schema_type => XSD::QName.new(NsV200902, "BidSource")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "BiddingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::CriterionUse,
    :schema_type => XSD::QName.new(NsV200902, "CriterionUse")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::EntityAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200902, "EntityAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV200902, "EntityCountLimitExceeded.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200902, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV200902, "KeywordMatchType")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NewEntityCreationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::Operator,
    :schema_type => XSD::QName.new(NsV200902, "Operator")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "StatsQueryError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::SystemServingStatus,
    :schema_type => XSD::QName.new(NsV200902, "SystemServingStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::UserStatus,
    :schema_type => XSD::QName.new(NsV200902, "UserStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::AdGroupCriterionError,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupCriterionError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::AdGroupCriterionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::AdGroupCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV200902, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdWords::V200902::AdGroupCriterionService::AdGroupCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200902, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::BiddingError,
    :schema_type => XSD::QName.new(NsV200902, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::BiddingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::ConversionOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200902, "ConversionOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupCriterionBids.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::CriterionId,
    :schema_type => XSD::QName.new(NsV200902, "CriterionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::CriterionPolicyError,
    :schema_type => XSD::QName.new(NsV200902, "CriterionPolicyError"),
    :schema_basetype => XSD::QName.new(NsV200902, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["key", "AdWords::V200902::AdGroupCriterionService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdWords::V200902::AdGroupCriterionService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200902, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::Date,
    :schema_type => XSD::QName.new(NsV200902, "Date"),
    :schema_element => [
      ["year", "SOAP::SOAPInt", [0, 1]],
      ["month", "SOAP::SOAPInt", [0, 1]],
      ["day", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::DateRange,
    :schema_type => XSD::QName.new(NsV200902, "DateRange"),
    :schema_element => [
      ["min", "AdWords::V200902::AdGroupCriterionService::Date", [0, 1]],
      ["max", "AdWords::V200902::AdGroupCriterionService::Date", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::DistinctError,
    :schema_type => XSD::QName.new(NsV200902, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::EntityAccessDenied,
    :schema_type => XSD::QName.new(NsV200902, "EntityAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::EntityAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200902, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::Keyword,
    :schema_type => XSD::QName.new(NsV200902, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV200902, "Criterion"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupCriterionService::CriterionId", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdWords::V200902::AdGroupCriterionService::KeywordMatchType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::Money,
    :schema_type => XSD::QName.new(NsV200902, "Money"),
    :schema_element => [
      ["currencyCode", "SOAP::SOAPString", [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::NegativeAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV200902, "NegativeAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "AdWords::V200902::AdGroupCriterionService::AdGroupId", [0, 1]],
      ["criterion", "AdWords::V200902::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV200902, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200902, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200902, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::NullError,
    :schema_type => XSD::QName.new(NsV200902, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::Paging,
    :schema_type => XSD::QName.new(NsV200902, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::Placement,
    :schema_type => XSD::QName.new(NsV200902, "Placement"),
    :schema_basetype => XSD::QName.new(NsV200902, "Criterion"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupCriterionService::CriterionId", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV200902, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV200902, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::QualityInfo,
    :schema_type => XSD::QName.new(NsV200902, "QualityInfo"),
    :schema_element => [
      ["isKeywordAdRelevanceAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageQualityAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageLatencyAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["qualityScore", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200902, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::RequiredError,
    :schema_type => XSD::QName.new(NsV200902, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::SoapHeader,
    :schema_type => XSD::QName.new(NsV200902, "SoapHeader"),
    :schema_element => [
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200902, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV200902, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupCriterionService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::StatsSelector,
    :schema_type => XSD::QName.new(NsV200902, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdWords::V200902::AdGroupCriterionService::DateRange", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::AdGroupId,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adGroupId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupId.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::Bid,
    :schema_type => XSD::QName.new(NsV200902, "Bid"),
    :schema_element => [
      ["event", "AdWords::V200902::AdGroupCriterionService::BidEvent", [0, 1]],
      ["amount", "AdWords::V200902::AdGroupCriterionService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::BudgetOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200902, "BudgetOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupCriterionBids.Type")], [0, 1]],
      ["proxyBid", "AdWords::V200902::AdGroupCriterionService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::CampaignId,
    :schema_type => XSD::QName.new(NsV200902, "CampaignId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["campaignId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "CampaignId.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::Criterion,
    :schema_type => XSD::QName.new(NsV200902, "Criterion"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupCriterionService::CriterionId", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Criterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::ExemptionRequest,
    :schema_type => XSD::QName.new(NsV200902, "ExemptionRequest"),
    :schema_element => [
      ["key", "AdWords::V200902::AdGroupCriterionService::PolicyViolationKey", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::ManualCPMAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200902, "ManualCPMAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpm", "AdWords::V200902::AdGroupCriterionService::Bid", [0, 1]],
      ["bidSource", "AdWords::V200902::AdGroupCriterionService::BidSource", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV200902, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["key", "AdWords::V200902::AdGroupCriterionService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdWords::V200902::AdGroupCriterionService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::PositionPreferenceAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200902, "PositionPreferenceAdGroupCriterionBids"),
    :schema_element => [
      ["proxyMaxCpc", "AdWords::V200902::AdGroupCriterionService::Bid", [0, 1]],
      ["preferredPosition", "SOAP::SOAPInt", [0, 1]],
      ["bottomPosition", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::AdGroupCriterionIdFilter,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupCriterionIdFilter"),
    :schema_element => [
      ["campaignId", "AdWords::V200902::AdGroupCriterionService::CampaignId", [0, 1]],
      ["adGroupId", "AdWords::V200902::AdGroupCriterionService::AdGroupId", [0, 1]],
      ["criterionId", "AdWords::V200902::AdGroupCriterionService::CriterionId", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::ApiException,
    :schema_type => XSD::QName.new(NsV200902, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200902::AdGroupCriterionService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200902, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::ManualCPCAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200902, "ManualCPCAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpc", "AdWords::V200902::AdGroupCriterionService::Bid", [0, 1]],
      ["bidSource", "AdWords::V200902::AdGroupCriterionService::BidSource", [0, 1]],
      ["positionPreferenceBids", "AdWords::V200902::AdGroupCriterionService::PositionPreferenceAdGroupCriterionBids", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::BiddableAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV200902, "BiddableAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "AdWords::V200902::AdGroupCriterionService::AdGroupId", [0, 1]],
      ["criterion", "AdWords::V200902::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupCriterion.Type")], [0, 1]],
      ["userStatus", "AdWords::V200902::AdGroupCriterionService::UserStatus", [0, 1]],
      ["systemServingStatus", "AdWords::V200902::AdGroupCriterionService::SystemServingStatus", [0, 1]],
      ["approvalStatus", "AdWords::V200902::AdGroupCriterionService::ApprovalStatus", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["bids", "AdWords::V200902::AdGroupCriterionService::AdGroupCriterionBids", [0, 1]],
      ["firstPageCpc", "AdWords::V200902::AdGroupCriterionService::Bid", [0, 1]],
      ["qualityInfo", "AdWords::V200902::AdGroupCriterionService::QualityInfo", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::AdGroupCriterion,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "AdWords::V200902::AdGroupCriterionService::AdGroupId", [0, 1]],
      ["criterion", "AdWords::V200902::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::AdGroupCriterionOperation,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV200902, "Operation"),
    :schema_element => [
      ["operator", "AdWords::V200902::AdGroupCriterionService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Operation.Type")], [0, 1]],
      ["operand", "AdWords::V200902::AdGroupCriterionService::AdGroupCriterion", [0, 1]],
      ["exemptionRequests", "AdWords::V200902::AdGroupCriterionService::ExemptionRequest[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::AdGroupCriterionPage,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupCriterionPage"),
    :schema_basetype => XSD::QName.new(NsV200902, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Page.Type")], [0, 1]],
      ["entries", "AdWords::V200902::AdGroupCriterionService::AdGroupCriterion[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::AdGroupCriterionReturnValue,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupCriterionReturnValue"),
    :schema_basetype => XSD::QName.new(NsV200902, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdWords::V200902::AdGroupCriterionService::AdGroupCriterion[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::AdGroupCriterionSelector,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupCriterionSelector"),
    :schema_element => [
      ["idFilters", "AdWords::V200902::AdGroupCriterionService::AdGroupCriterionIdFilter[]", [0, nil]],
      ["criterionUse", "AdWords::V200902::AdGroupCriterionService::CriterionUse", [0, 1]],
      ["userStatuses", "AdWords::V200902::AdGroupCriterionService::UserStatus[]", [0, nil]],
      ["statsSelector", "AdWords::V200902::AdGroupCriterionService::StatsSelector", [0, 1]],
      ["paging", "AdWords::V200902::AdGroupCriterionService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::ListReturnValue,
    :schema_type => XSD::QName.new(NsV200902, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ListReturnValue.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::AdGroupCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupCriterionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::AdGroupCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupCriterionLimitExceeded.CriteriaLimitType")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::ApprovalStatus,
    :schema_type => XSD::QName.new(NsV200902, "ApprovalStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::BidEvent,
    :schema_type => XSD::QName.new(NsV200902, "Bid.Event")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::BidSource,
    :schema_type => XSD::QName.new(NsV200902, "BidSource")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "BiddingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::CriterionUse,
    :schema_type => XSD::QName.new(NsV200902, "CriterionUse")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::EntityAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200902, "EntityAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV200902, "EntityCountLimitExceeded.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200902, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV200902, "KeywordMatchType")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NewEntityCreationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::Operator,
    :schema_type => XSD::QName.new(NsV200902, "Operator")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::SystemServingStatus,
    :schema_type => XSD::QName.new(NsV200902, "SystemServingStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::UserStatus,
    :schema_type => XSD::QName.new(NsV200902, "UserStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::Get,
    :schema_name => XSD::QName.new(NsV200902, "get"),
    :schema_element => [
      ["selector", "AdWords::V200902::AdGroupCriterionService::AdGroupCriterionSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::GetResponse,
    :schema_name => XSD::QName.new(NsV200902, "getResponse"),
    :schema_element => [
      ["rval", "AdWords::V200902::AdGroupCriterionService::AdGroupCriterionPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::ApiException,
    :schema_name => XSD::QName.new(NsV200902, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200902::AdGroupCriterionService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::Mutate,
    :schema_name => XSD::QName.new(NsV200902, "mutate"),
    :schema_element => [
      ["operations", "AdWords::V200902::AdGroupCriterionService::AdGroupCriterionOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::MutateResponse,
    :schema_name => XSD::QName.new(NsV200902, "mutateResponse"),
    :schema_element => [
      ["rval", "AdWords::V200902::AdGroupCriterionService::AdGroupCriterionReturnValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::SoapHeader,
    :schema_name => XSD::QName.new(NsV200902, "RequestHeader"),
    :schema_element => [
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupCriterionService::SoapResponseHeader,
    :schema_name => XSD::QName.new(NsV200902, "ResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]]
    ]
  )
end

end; end; end
