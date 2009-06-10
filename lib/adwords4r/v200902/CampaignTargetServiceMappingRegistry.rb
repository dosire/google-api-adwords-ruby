require 'adwords4r/v200902/CampaignTargetService'
require 'soap/mapping'

module AdWords; module V200902; module CampaignTargetService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV200902 = "https://adwords.google.com/api/adwords/cm/v200902"

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV200902, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdWords::V200902::CampaignTargetService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdWords::V200902::CampaignTargetService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdWords::V200902::CampaignTargetService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::Address,
    :schema_type => XSD::QName.new(NsV200902, "Address"),
    :schema_element => [
      ["streetAddress", "SOAP::SOAPString", [0, 1]],
      ["streetAddress2", "SOAP::SOAPString", [0, 1]],
      ["cityName", "SOAP::SOAPString", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]],
      ["provinceName", "SOAP::SOAPString", [0, 1]],
      ["postalCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::AgeTarget,
    :schema_type => XSD::QName.new(NsV200902, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdWords::V200902::CampaignTargetService::AgeTargetAge", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200902, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::BiddingError,
    :schema_type => XSD::QName.new(NsV200902, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::BiddingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::CampaignError,
    :schema_type => XSD::QName.new(NsV200902, "CampaignError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::CampaignErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::CityTarget,
    :schema_type => XSD::QName.new(NsV200902, "CityTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["cityName", "SOAP::SOAPString", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::CountryTarget,
    :schema_type => XSD::QName.new(NsV200902, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200902, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::DistinctError,
    :schema_type => XSD::QName.new(NsV200902, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200902, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::GenderTarget,
    :schema_type => XSD::QName.new(NsV200902, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdWords::V200902::CampaignTargetService::GenderTargetGender", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::GeoPoint,
    :schema_type => XSD::QName.new(NsV200902, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV200902, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::MetroTarget,
    :schema_type => XSD::QName.new(NsV200902, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV200902, "NetworkTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["networkCoverageType", "AdWords::V200902::CampaignTargetService::NetworkCoverageType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200902, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200902, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::NullError,
    :schema_type => XSD::QName.new(NsV200902, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV200902, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::OperatorError,
    :schema_type => XSD::QName.new(NsV200902, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::OperatorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV200902, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["platformType", "AdWords::V200902::CampaignTargetService::PlatformType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV200902, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdWords::V200902::CampaignTargetService::GeoPoint[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV200902, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV200902, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdWords::V200902::CampaignTargetService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdWords::V200902::CampaignTargetService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdWords::V200902::CampaignTargetService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200902, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::QuotaError,
    :schema_type => XSD::QName.new(NsV200902, "QuotaError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::QuotaErrorReason", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::C_RangeError,
    :schema_type => XSD::QName.new(NsV200902, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::RegionCodeError,
    :schema_type => XSD::QName.new(NsV200902, "RegionCodeError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::RegionCodeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::RequiredError,
    :schema_type => XSD::QName.new(NsV200902, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::SoapHeader,
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
    :class => AdWords::V200902::CampaignTargetService::SoapResponseHeader,
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
    :class => AdWords::V200902::CampaignTargetService::StringLengthError,
    :schema_type => XSD::QName.new(NsV200902, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::StringLengthErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::TargetError,
    :schema_type => XSD::QName.new(NsV200902, "TargetError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::TargetErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::VoidReturnValue,
    :schema_type => XSD::QName.new(NsV200902, "VoidReturnValue"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::CampaignId,
    :schema_type => XSD::QName.new(NsV200902, "CampaignId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["campaignId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "CampaignId.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::CampaignTargetSelector,
    :schema_type => XSD::QName.new(NsV200902, "CampaignTargetSelector"),
    :schema_element => [
      ["campaignIds", "AdWords::V200902::CampaignTargetService::CampaignId[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::AdScheduleTargetList,
    :schema_type => XSD::QName.new(NsV200902, "AdScheduleTargetList"),
    :schema_basetype => XSD::QName.new(NsV200902, "TargetList"),
    :schema_element => [
      ["campaignId", "AdWords::V200902::CampaignTargetService::CampaignId", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "TargetList.Type")], [0, 1]],
      ["targets", "AdWords::V200902::CampaignTargetService::AdScheduleTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::ApiException,
    :schema_type => XSD::QName.new(NsV200902, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200902::CampaignTargetService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200902, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::DemographicTargetList,
    :schema_type => XSD::QName.new(NsV200902, "DemographicTargetList"),
    :schema_basetype => XSD::QName.new(NsV200902, "TargetList"),
    :schema_element => [
      ["campaignId", "AdWords::V200902::CampaignTargetService::CampaignId", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "TargetList.Type")], [0, 1]],
      ["targets", "AdWords::V200902::CampaignTargetService::DemographicTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::GeoTargetList,
    :schema_type => XSD::QName.new(NsV200902, "GeoTargetList"),
    :schema_basetype => XSD::QName.new(NsV200902, "TargetList"),
    :schema_element => [
      ["campaignId", "AdWords::V200902::CampaignTargetService::CampaignId", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "TargetList.Type")], [0, 1]],
      ["targets", "AdWords::V200902::CampaignTargetService::GeoTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::LanguageTargetList,
    :schema_type => XSD::QName.new(NsV200902, "LanguageTargetList"),
    :schema_basetype => XSD::QName.new(NsV200902, "TargetList"),
    :schema_element => [
      ["campaignId", "AdWords::V200902::CampaignTargetService::CampaignId", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "TargetList.Type")], [0, 1]],
      ["targets", "AdWords::V200902::CampaignTargetService::LanguageTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::NetworkTargetList,
    :schema_type => XSD::QName.new(NsV200902, "NetworkTargetList"),
    :schema_basetype => XSD::QName.new(NsV200902, "TargetList"),
    :schema_element => [
      ["campaignId", "AdWords::V200902::CampaignTargetService::CampaignId", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "TargetList.Type")], [0, 1]],
      ["targets", "AdWords::V200902::CampaignTargetService::NetworkTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::PlatformTargetList,
    :schema_type => XSD::QName.new(NsV200902, "PlatformTargetList"),
    :schema_basetype => XSD::QName.new(NsV200902, "TargetList"),
    :schema_element => [
      ["campaignId", "AdWords::V200902::CampaignTargetService::CampaignId", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "TargetList.Type")], [0, 1]],
      ["targets", "AdWords::V200902::CampaignTargetService::PlatformTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::CampaignTargetOperation,
    :schema_type => XSD::QName.new(NsV200902, "CampaignTargetOperation"),
    :schema_basetype => XSD::QName.new(NsV200902, "Operation"),
    :schema_element => [
      ["operator", "AdWords::V200902::CampaignTargetService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Operation.Type")], [0, 1]],
      ["operand", "AdWords::V200902::CampaignTargetService::TargetList", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV200902, "AgeTarget.Age")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "BiddingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::CampaignErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "CampaignError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV200902, "DayOfWeek")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200902, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV200902, "GenderTarget.Gender")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV200902, "MinuteOfHour")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::NetworkCoverageType,
    :schema_type => XSD::QName.new(NsV200902, "NetworkCoverageType")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200902, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::Operator,
    :schema_type => XSD::QName.new(NsV200902, "Operator")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "OperatorError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::PlatformType,
    :schema_type => XSD::QName.new(NsV200902, "PlatformType")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV200902, "ProximityTarget.DistanceUnits")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::QuotaErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "QuotaError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::RegionCodeErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "RegionCodeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "StringLengthError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::TargetErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "TargetError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV200902, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdWords::V200902::CampaignTargetService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdWords::V200902::CampaignTargetService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdWords::V200902::CampaignTargetService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::Address,
    :schema_type => XSD::QName.new(NsV200902, "Address"),
    :schema_element => [
      ["streetAddress", "SOAP::SOAPString", [0, 1]],
      ["streetAddress2", "SOAP::SOAPString", [0, 1]],
      ["cityName", "SOAP::SOAPString", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]],
      ["provinceName", "SOAP::SOAPString", [0, 1]],
      ["postalCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::AgeTarget,
    :schema_type => XSD::QName.new(NsV200902, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdWords::V200902::CampaignTargetService::AgeTargetAge", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200902, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::BiddingError,
    :schema_type => XSD::QName.new(NsV200902, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::BiddingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::CampaignError,
    :schema_type => XSD::QName.new(NsV200902, "CampaignError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::CampaignErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::CityTarget,
    :schema_type => XSD::QName.new(NsV200902, "CityTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["cityName", "SOAP::SOAPString", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::CountryTarget,
    :schema_type => XSD::QName.new(NsV200902, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200902, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::DistinctError,
    :schema_type => XSD::QName.new(NsV200902, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200902, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::GenderTarget,
    :schema_type => XSD::QName.new(NsV200902, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdWords::V200902::CampaignTargetService::GenderTargetGender", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::GeoPoint,
    :schema_type => XSD::QName.new(NsV200902, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV200902, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::MetroTarget,
    :schema_type => XSD::QName.new(NsV200902, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV200902, "NetworkTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["networkCoverageType", "AdWords::V200902::CampaignTargetService::NetworkCoverageType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200902, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200902, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::NullError,
    :schema_type => XSD::QName.new(NsV200902, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV200902, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::OperatorError,
    :schema_type => XSD::QName.new(NsV200902, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::OperatorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV200902, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["platformType", "AdWords::V200902::CampaignTargetService::PlatformType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV200902, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdWords::V200902::CampaignTargetService::GeoPoint[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV200902, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV200902, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdWords::V200902::CampaignTargetService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdWords::V200902::CampaignTargetService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdWords::V200902::CampaignTargetService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200902, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::QuotaError,
    :schema_type => XSD::QName.new(NsV200902, "QuotaError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::QuotaErrorReason", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::C_RangeError,
    :schema_type => XSD::QName.new(NsV200902, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::RegionCodeError,
    :schema_type => XSD::QName.new(NsV200902, "RegionCodeError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::RegionCodeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::RequiredError,
    :schema_type => XSD::QName.new(NsV200902, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::SoapHeader,
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
    :class => AdWords::V200902::CampaignTargetService::SoapResponseHeader,
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
    :class => AdWords::V200902::CampaignTargetService::StringLengthError,
    :schema_type => XSD::QName.new(NsV200902, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::StringLengthErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::TargetError,
    :schema_type => XSD::QName.new(NsV200902, "TargetError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::CampaignTargetService::TargetErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::VoidReturnValue,
    :schema_type => XSD::QName.new(NsV200902, "VoidReturnValue"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::CampaignId,
    :schema_type => XSD::QName.new(NsV200902, "CampaignId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["campaignId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "CampaignId.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::CampaignTargetSelector,
    :schema_type => XSD::QName.new(NsV200902, "CampaignTargetSelector"),
    :schema_element => [
      ["campaignIds", "AdWords::V200902::CampaignTargetService::CampaignId[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::AdScheduleTargetList,
    :schema_type => XSD::QName.new(NsV200902, "AdScheduleTargetList"),
    :schema_basetype => XSD::QName.new(NsV200902, "TargetList"),
    :schema_element => [
      ["campaignId", "AdWords::V200902::CampaignTargetService::CampaignId", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "TargetList.Type")], [0, 1]],
      ["targets", "AdWords::V200902::CampaignTargetService::AdScheduleTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::ApiException,
    :schema_type => XSD::QName.new(NsV200902, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200902::CampaignTargetService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200902, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::DemographicTargetList,
    :schema_type => XSD::QName.new(NsV200902, "DemographicTargetList"),
    :schema_basetype => XSD::QName.new(NsV200902, "TargetList"),
    :schema_element => [
      ["campaignId", "AdWords::V200902::CampaignTargetService::CampaignId", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "TargetList.Type")], [0, 1]],
      ["targets", "AdWords::V200902::CampaignTargetService::DemographicTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::GeoTargetList,
    :schema_type => XSD::QName.new(NsV200902, "GeoTargetList"),
    :schema_basetype => XSD::QName.new(NsV200902, "TargetList"),
    :schema_element => [
      ["campaignId", "AdWords::V200902::CampaignTargetService::CampaignId", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "TargetList.Type")], [0, 1]],
      ["targets", "AdWords::V200902::CampaignTargetService::GeoTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::LanguageTargetList,
    :schema_type => XSD::QName.new(NsV200902, "LanguageTargetList"),
    :schema_basetype => XSD::QName.new(NsV200902, "TargetList"),
    :schema_element => [
      ["campaignId", "AdWords::V200902::CampaignTargetService::CampaignId", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "TargetList.Type")], [0, 1]],
      ["targets", "AdWords::V200902::CampaignTargetService::LanguageTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::NetworkTargetList,
    :schema_type => XSD::QName.new(NsV200902, "NetworkTargetList"),
    :schema_basetype => XSD::QName.new(NsV200902, "TargetList"),
    :schema_element => [
      ["campaignId", "AdWords::V200902::CampaignTargetService::CampaignId", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "TargetList.Type")], [0, 1]],
      ["targets", "AdWords::V200902::CampaignTargetService::NetworkTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::PlatformTargetList,
    :schema_type => XSD::QName.new(NsV200902, "PlatformTargetList"),
    :schema_basetype => XSD::QName.new(NsV200902, "TargetList"),
    :schema_element => [
      ["campaignId", "AdWords::V200902::CampaignTargetService::CampaignId", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "TargetList.Type")], [0, 1]],
      ["targets", "AdWords::V200902::CampaignTargetService::PlatformTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::CampaignTargetOperation,
    :schema_type => XSD::QName.new(NsV200902, "CampaignTargetOperation"),
    :schema_basetype => XSD::QName.new(NsV200902, "Operation"),
    :schema_element => [
      ["operator", "AdWords::V200902::CampaignTargetService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Operation.Type")], [0, 1]],
      ["operand", "AdWords::V200902::CampaignTargetService::TargetList", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV200902, "AgeTarget.Age")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "BiddingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::CampaignErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "CampaignError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV200902, "DayOfWeek")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200902, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV200902, "GenderTarget.Gender")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV200902, "MinuteOfHour")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::NetworkCoverageType,
    :schema_type => XSD::QName.new(NsV200902, "NetworkCoverageType")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200902, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::Operator,
    :schema_type => XSD::QName.new(NsV200902, "Operator")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "OperatorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::PlatformType,
    :schema_type => XSD::QName.new(NsV200902, "PlatformType")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV200902, "ProximityTarget.DistanceUnits")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::QuotaErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "QuotaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::RegionCodeErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "RegionCodeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "StringLengthError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::TargetErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "TargetError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::Get,
    :schema_name => XSD::QName.new(NsV200902, "get"),
    :schema_element => [
      ["selector", "AdWords::V200902::CampaignTargetService::CampaignTargetSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::GetResponse,
    :schema_name => XSD::QName.new(NsV200902, "getResponse"),
    :schema_element => [
      ["rval", "AdWords::V200902::CampaignTargetService::TargetList[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::ApiException,
    :schema_name => XSD::QName.new(NsV200902, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200902::CampaignTargetService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::Mutate,
    :schema_name => XSD::QName.new(NsV200902, "mutate"),
    :schema_element => [
      ["operations", "AdWords::V200902::CampaignTargetService::CampaignTargetOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::MutateResponse,
    :schema_name => XSD::QName.new(NsV200902, "mutateResponse"),
    :schema_element => [
      ["rval", "AdWords::V200902::CampaignTargetService::VoidReturnValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::CampaignTargetService::SoapHeader,
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
    :class => AdWords::V200902::CampaignTargetService::SoapResponseHeader,
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
