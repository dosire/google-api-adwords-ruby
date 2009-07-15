require 'adwords4r/v200906/CampaignTargetService'
require 'soap/mapping'

module AdWords; module V200906; module CampaignTargetService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV200906 = "https://adwords.google.com/api/adwords/cm/v200906"

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV200906, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdWords::V200906::CampaignTargetService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdWords::V200906::CampaignTargetService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdWords::V200906::CampaignTargetService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::Address,
    :schema_type => XSD::QName.new(NsV200906, "Address"),
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
    :class => AdWords::V200906::CampaignTargetService::AgeTarget,
    :schema_type => XSD::QName.new(NsV200906, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdWords::V200906::CampaignTargetService::AgeTargetAge", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200906, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::BiddingError,
    :schema_type => XSD::QName.new(NsV200906, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::BiddingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::CampaignError,
    :schema_type => XSD::QName.new(NsV200906, "CampaignError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::CampaignErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::CityTarget,
    :schema_type => XSD::QName.new(NsV200906, "CityTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["cityName", "SOAP::SOAPString", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV200906, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::CountryTarget,
    :schema_type => XSD::QName.new(NsV200906, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200906, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::DistinctError,
    :schema_type => XSD::QName.new(NsV200906, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::DoubleValue,
    :schema_type => XSD::QName.new(NsV200906, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200906, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::GenderTarget,
    :schema_type => XSD::QName.new(NsV200906, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdWords::V200906::CampaignTargetService::GenderTargetGender", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::GeoPoint,
    :schema_type => XSD::QName.new(NsV200906, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::InternalApiError,
    :schema_type => XSD::QName.new(NsV200906, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV200906, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::LoasAuthenticationError,
    :schema_type => XSD::QName.new(NsV200906, "LoasAuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::LoasAuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::LongValue,
    :schema_type => XSD::QName.new(NsV200906, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::MetroTarget,
    :schema_type => XSD::QName.new(NsV200906, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::Money,
    :schema_type => XSD::QName.new(NsV200906, "Money"),
    :schema_basetype => XSD::QName.new(NsV200906, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV200906, "NetworkTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["networkCoverageType", "AdWords::V200906::CampaignTargetService::NetworkCoverageType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200906, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200906, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::NullError,
    :schema_type => XSD::QName.new(NsV200906, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV200906, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::OperatorError,
    :schema_type => XSD::QName.new(NsV200906, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::OperatorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV200906, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["platformType", "AdWords::V200906::CampaignTargetService::PlatformType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV200906, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdWords::V200906::CampaignTargetService::GeoPoint[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV200906, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV200906, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdWords::V200906::CampaignTargetService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdWords::V200906::CampaignTargetService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdWords::V200906::CampaignTargetService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200906, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::QuotaError,
    :schema_type => XSD::QName.new(NsV200906, "QuotaError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::QuotaErrorReason", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::C_RangeError,
    :schema_type => XSD::QName.new(NsV200906, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::RegionCodeError,
    :schema_type => XSD::QName.new(NsV200906, "RegionCodeError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::RegionCodeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::RequiredError,
    :schema_type => XSD::QName.new(NsV200906, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV200906, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::SoapHeader,
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
    :class => AdWords::V200906::CampaignTargetService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200906, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::StringLengthError,
    :schema_type => XSD::QName.new(NsV200906, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::StringLengthErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::TargetError,
    :schema_type => XSD::QName.new(NsV200906, "TargetError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::TargetErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::CampaignTargetSelector,
    :schema_type => XSD::QName.new(NsV200906, "CampaignTargetSelector"),
    :schema_element => [
      ["campaignIds", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::AdScheduleTargetList,
    :schema_type => XSD::QName.new(NsV200906, "AdScheduleTargetList"),
    :schema_basetype => XSD::QName.new(NsV200906, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "TargetList.Type")], [0, 1]],
      ["targets", "AdWords::V200906::CampaignTargetService::AdScheduleTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::ApiException,
    :schema_type => XSD::QName.new(NsV200906, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200906::CampaignTargetService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200906, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::DemographicTargetList,
    :schema_type => XSD::QName.new(NsV200906, "DemographicTargetList"),
    :schema_basetype => XSD::QName.new(NsV200906, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "TargetList.Type")], [0, 1]],
      ["targets", "AdWords::V200906::CampaignTargetService::DemographicTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::GeoTargetList,
    :schema_type => XSD::QName.new(NsV200906, "GeoTargetList"),
    :schema_basetype => XSD::QName.new(NsV200906, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "TargetList.Type")], [0, 1]],
      ["targets", "AdWords::V200906::CampaignTargetService::GeoTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::LanguageTargetList,
    :schema_type => XSD::QName.new(NsV200906, "LanguageTargetList"),
    :schema_basetype => XSD::QName.new(NsV200906, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "TargetList.Type")], [0, 1]],
      ["targets", "AdWords::V200906::CampaignTargetService::LanguageTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::NetworkTargetList,
    :schema_type => XSD::QName.new(NsV200906, "NetworkTargetList"),
    :schema_basetype => XSD::QName.new(NsV200906, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "TargetList.Type")], [0, 1]],
      ["targets", "AdWords::V200906::CampaignTargetService::NetworkTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::PlatformTargetList,
    :schema_type => XSD::QName.new(NsV200906, "PlatformTargetList"),
    :schema_basetype => XSD::QName.new(NsV200906, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "TargetList.Type")], [0, 1]],
      ["targets", "AdWords::V200906::CampaignTargetService::PlatformTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::CampaignTargetOperation,
    :schema_type => XSD::QName.new(NsV200906, "CampaignTargetOperation"),
    :schema_basetype => XSD::QName.new(NsV200906, "Operation"),
    :schema_element => [
      ["operator", "AdWords::V200906::CampaignTargetService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Operation.Type")], [0, 1]],
      ["operand", "AdWords::V200906::CampaignTargetService::TargetList", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::CampaignTargetPage,
    :schema_type => XSD::QName.new(NsV200906, "CampaignTargetPage"),
    :schema_basetype => XSD::QName.new(NsV200906, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Page.Type")], [0, 1]],
      ["entries", "AdWords::V200906::CampaignTargetService::TargetList[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::CampaignTargetReturnValue,
    :schema_type => XSD::QName.new(NsV200906, "CampaignTargetReturnValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdWords::V200906::CampaignTargetService::TargetList[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV200906, "AgeTarget.Age")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "BiddingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::CampaignErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "CampaignError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV200906, "DayOfWeek")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200906, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV200906, "GenderTarget.Gender")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::LoasAuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "LoasAuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV200906, "MinuteOfHour")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::NetworkCoverageType,
    :schema_type => XSD::QName.new(NsV200906, "NetworkCoverageType")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200906, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::Operator,
    :schema_type => XSD::QName.new(NsV200906, "Operator")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "OperatorError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::PlatformType,
    :schema_type => XSD::QName.new(NsV200906, "PlatformType")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV200906, "ProximityTarget.DistanceUnits")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::QuotaErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "QuotaError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::RegionCodeErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "RegionCodeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "StringLengthError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::TargetErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "TargetError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV200906, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdWords::V200906::CampaignTargetService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdWords::V200906::CampaignTargetService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdWords::V200906::CampaignTargetService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::Address,
    :schema_type => XSD::QName.new(NsV200906, "Address"),
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
    :class => AdWords::V200906::CampaignTargetService::AgeTarget,
    :schema_type => XSD::QName.new(NsV200906, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdWords::V200906::CampaignTargetService::AgeTargetAge", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200906, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::BiddingError,
    :schema_type => XSD::QName.new(NsV200906, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::BiddingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::CampaignError,
    :schema_type => XSD::QName.new(NsV200906, "CampaignError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::CampaignErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::CityTarget,
    :schema_type => XSD::QName.new(NsV200906, "CityTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["cityName", "SOAP::SOAPString", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV200906, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::CountryTarget,
    :schema_type => XSD::QName.new(NsV200906, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200906, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::DistinctError,
    :schema_type => XSD::QName.new(NsV200906, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::DoubleValue,
    :schema_type => XSD::QName.new(NsV200906, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200906, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::GenderTarget,
    :schema_type => XSD::QName.new(NsV200906, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdWords::V200906::CampaignTargetService::GenderTargetGender", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::GeoPoint,
    :schema_type => XSD::QName.new(NsV200906, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::InternalApiError,
    :schema_type => XSD::QName.new(NsV200906, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV200906, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::LoasAuthenticationError,
    :schema_type => XSD::QName.new(NsV200906, "LoasAuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::LoasAuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::LongValue,
    :schema_type => XSD::QName.new(NsV200906, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::MetroTarget,
    :schema_type => XSD::QName.new(NsV200906, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::Money,
    :schema_type => XSD::QName.new(NsV200906, "Money"),
    :schema_basetype => XSD::QName.new(NsV200906, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV200906, "NetworkTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["networkCoverageType", "AdWords::V200906::CampaignTargetService::NetworkCoverageType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200906, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200906, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::NullError,
    :schema_type => XSD::QName.new(NsV200906, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV200906, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::OperatorError,
    :schema_type => XSD::QName.new(NsV200906, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::OperatorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV200906, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["platformType", "AdWords::V200906::CampaignTargetService::PlatformType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV200906, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdWords::V200906::CampaignTargetService::GeoPoint[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV200906, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV200906, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdWords::V200906::CampaignTargetService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdWords::V200906::CampaignTargetService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdWords::V200906::CampaignTargetService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200906, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::QuotaError,
    :schema_type => XSD::QName.new(NsV200906, "QuotaError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::QuotaErrorReason", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::C_RangeError,
    :schema_type => XSD::QName.new(NsV200906, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::RegionCodeError,
    :schema_type => XSD::QName.new(NsV200906, "RegionCodeError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::RegionCodeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::RequiredError,
    :schema_type => XSD::QName.new(NsV200906, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV200906, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::SoapHeader,
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
    :class => AdWords::V200906::CampaignTargetService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200906, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::StringLengthError,
    :schema_type => XSD::QName.new(NsV200906, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::StringLengthErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::TargetError,
    :schema_type => XSD::QName.new(NsV200906, "TargetError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::CampaignTargetService::TargetErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::CampaignTargetSelector,
    :schema_type => XSD::QName.new(NsV200906, "CampaignTargetSelector"),
    :schema_element => [
      ["campaignIds", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::AdScheduleTargetList,
    :schema_type => XSD::QName.new(NsV200906, "AdScheduleTargetList"),
    :schema_basetype => XSD::QName.new(NsV200906, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "TargetList.Type")], [0, 1]],
      ["targets", "AdWords::V200906::CampaignTargetService::AdScheduleTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::ApiException,
    :schema_type => XSD::QName.new(NsV200906, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200906::CampaignTargetService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200906, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::DemographicTargetList,
    :schema_type => XSD::QName.new(NsV200906, "DemographicTargetList"),
    :schema_basetype => XSD::QName.new(NsV200906, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "TargetList.Type")], [0, 1]],
      ["targets", "AdWords::V200906::CampaignTargetService::DemographicTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::GeoTargetList,
    :schema_type => XSD::QName.new(NsV200906, "GeoTargetList"),
    :schema_basetype => XSD::QName.new(NsV200906, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "TargetList.Type")], [0, 1]],
      ["targets", "AdWords::V200906::CampaignTargetService::GeoTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::LanguageTargetList,
    :schema_type => XSD::QName.new(NsV200906, "LanguageTargetList"),
    :schema_basetype => XSD::QName.new(NsV200906, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "TargetList.Type")], [0, 1]],
      ["targets", "AdWords::V200906::CampaignTargetService::LanguageTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::NetworkTargetList,
    :schema_type => XSD::QName.new(NsV200906, "NetworkTargetList"),
    :schema_basetype => XSD::QName.new(NsV200906, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "TargetList.Type")], [0, 1]],
      ["targets", "AdWords::V200906::CampaignTargetService::NetworkTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::PlatformTargetList,
    :schema_type => XSD::QName.new(NsV200906, "PlatformTargetList"),
    :schema_basetype => XSD::QName.new(NsV200906, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "TargetList.Type")], [0, 1]],
      ["targets", "AdWords::V200906::CampaignTargetService::PlatformTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::CampaignTargetOperation,
    :schema_type => XSD::QName.new(NsV200906, "CampaignTargetOperation"),
    :schema_basetype => XSD::QName.new(NsV200906, "Operation"),
    :schema_element => [
      ["operator", "AdWords::V200906::CampaignTargetService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Operation.Type")], [0, 1]],
      ["operand", "AdWords::V200906::CampaignTargetService::TargetList", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::CampaignTargetPage,
    :schema_type => XSD::QName.new(NsV200906, "CampaignTargetPage"),
    :schema_basetype => XSD::QName.new(NsV200906, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Page.Type")], [0, 1]],
      ["entries", "AdWords::V200906::CampaignTargetService::TargetList[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::CampaignTargetReturnValue,
    :schema_type => XSD::QName.new(NsV200906, "CampaignTargetReturnValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdWords::V200906::CampaignTargetService::TargetList[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV200906, "AgeTarget.Age")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "BiddingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::CampaignErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "CampaignError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV200906, "DayOfWeek")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200906, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV200906, "GenderTarget.Gender")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::LoasAuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "LoasAuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV200906, "MinuteOfHour")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::NetworkCoverageType,
    :schema_type => XSD::QName.new(NsV200906, "NetworkCoverageType")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200906, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::Operator,
    :schema_type => XSD::QName.new(NsV200906, "Operator")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "OperatorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::PlatformType,
    :schema_type => XSD::QName.new(NsV200906, "PlatformType")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV200906, "ProximityTarget.DistanceUnits")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::QuotaErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "QuotaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::RegionCodeErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "RegionCodeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "StringLengthError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::TargetErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "TargetError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::Get,
    :schema_name => XSD::QName.new(NsV200906, "get"),
    :schema_element => [
      ["selector", "AdWords::V200906::CampaignTargetService::CampaignTargetSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::GetResponse,
    :schema_name => XSD::QName.new(NsV200906, "getResponse"),
    :schema_element => [
      ["rval", "AdWords::V200906::CampaignTargetService::CampaignTargetPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::ApiException,
    :schema_name => XSD::QName.new(NsV200906, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200906::CampaignTargetService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::Mutate,
    :schema_name => XSD::QName.new(NsV200906, "mutate"),
    :schema_element => [
      ["operations", "AdWords::V200906::CampaignTargetService::CampaignTargetOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::MutateResponse,
    :schema_name => XSD::QName.new(NsV200906, "mutateResponse"),
    :schema_element => [
      ["rval", "AdWords::V200906::CampaignTargetService::CampaignTargetReturnValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::CampaignTargetService::SoapHeader,
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
    :class => AdWords::V200906::CampaignTargetService::SoapResponseHeader,
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
