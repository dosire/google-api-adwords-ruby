require 'adwords4r/v200906/AdGroupAdService'
require 'soap/mapping'

module AdWords; module V200906; module AdGroupAdService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV200906 = "https://adwords.google.com/api/adwords/cm/v200906"

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdError,
    :schema_type => XSD::QName.new(NsV200906, "AdError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::AdErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdExtensionOverrideStats,
    :schema_type => XSD::QName.new(NsV200906, "AdExtensionOverrideStats"),
    :schema_basetype => XSD::QName.new(NsV200906, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdWords::V200906::AdGroupAdService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["averageCpm", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdGroupAdCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupAdCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV200906, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdGroupAdError,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupAdError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::AdGroupAdErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV200906, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdWords::V200906::AdGroupAdService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdWords::V200906::AdGroupAdService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdWords::V200906::AdGroupAdService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdStats,
    :schema_type => XSD::QName.new(NsV200906, "AdStats"),
    :schema_basetype => XSD::QName.new(NsV200906, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdWords::V200906::AdGroupAdService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["averageCpm", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Stats.Type")], [0, 1]],
      ["percentServed", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdStatsSelector,
    :schema_type => XSD::QName.new(NsV200906, "AdStatsSelector"),
    :schema_basetype => XSD::QName.new(NsV200906, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdWords::V200906::AdGroupAdService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "StatsSelector.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::Address,
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
    :class => AdWords::V200906::AdGroupAdService::AgeTarget,
    :schema_type => XSD::QName.new(NsV200906, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdWords::V200906::AdGroupAdService::AgeTargetAge", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV200906, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200906, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::CityTarget,
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
    :class => AdWords::V200906::AdGroupAdService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV200906, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::CountryTarget,
    :schema_type => XSD::QName.new(NsV200906, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200906, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::DateError,
    :schema_type => XSD::QName.new(NsV200906, "DateError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::DateErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::DateRange,
    :schema_type => XSD::QName.new(NsV200906, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::Dimensions,
    :schema_type => XSD::QName.new(NsV200906, "Dimensions"),
    :schema_element => [
      ["width", "SOAP::SOAPInt", [0, 1]],
      ["height", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::DistinctError,
    :schema_type => XSD::QName.new(NsV200906, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::DoubleValue,
    :schema_type => XSD::QName.new(NsV200906, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200906, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::GenderTarget,
    :schema_type => XSD::QName.new(NsV200906, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdWords::V200906::AdGroupAdService::GenderTargetGender", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::GeoPoint,
    :schema_type => XSD::QName.new(NsV200906, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::IdError,
    :schema_type => XSD::QName.new(NsV200906, "IdError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::IdErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::Image,
    :schema_type => XSD::QName.new(NsV200906, "Image"),
    :schema_basetype => XSD::QName.new(NsV200906, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdWords::V200906::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdWords::V200906::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdWords::V200906::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdWords::V200906::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdWords::V200906::AdGroupAdService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdWords::V200906::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Media.Type")], [0, 1]],
      ["data", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::ImageError,
    :schema_type => XSD::QName.new(NsV200906, "ImageError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::ImageErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::InternalApiError,
    :schema_type => XSD::QName.new(NsV200906, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV200906, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::LongValue,
    :schema_type => XSD::QName.new(NsV200906, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::MediaError,
    :schema_type => XSD::QName.new(NsV200906, "MediaError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::MediaErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry,
    :schema_type => XSD::QName.new(NsV200906, "Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry"),
    :schema_element => [
      ["key", "AdWords::V200906::AdGroupAdService::MediaMediaExtendedCapabilityType", [0, 1]],
      ["value", "AdWords::V200906::AdGroupAdService::MediaMediaExtendedCapabilityState", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::Media_Size_DimensionsMapEntry,
    :schema_type => XSD::QName.new(NsV200906, "Media_Size_DimensionsMapEntry"),
    :schema_element => [
      ["key", "AdWords::V200906::AdGroupAdService::MediaSize", [0, 1]],
      ["value", "AdWords::V200906::AdGroupAdService::Dimensions", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::Media_Size_StringMapEntry,
    :schema_type => XSD::QName.new(NsV200906, "Media_Size_StringMapEntry"),
    :schema_element => [
      ["key", "AdWords::V200906::AdGroupAdService::MediaSize", [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::MetroTarget,
    :schema_type => XSD::QName.new(NsV200906, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::MobileAd,
    :schema_type => XSD::QName.new(NsV200906, "MobileAd"),
    :schema_basetype => XSD::QName.new(NsV200906, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V200906::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["markupLanguages", "AdWords::V200906::AdGroupAdService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::Money,
    :schema_type => XSD::QName.new(NsV200906, "Money"),
    :schema_basetype => XSD::QName.new(NsV200906, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV200906, "NetworkTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["networkCoverageType", "AdWords::V200906::AdGroupAdService::NetworkCoverageType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV200906, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200906, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200906, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::NullError,
    :schema_type => XSD::QName.new(NsV200906, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV200906, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::Paging,
    :schema_type => XSD::QName.new(NsV200906, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::PagingError,
    :schema_type => XSD::QName.new(NsV200906, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::PagingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV200906, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["platformType", "AdWords::V200906::AdGroupAdService::PlatformType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV200906, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV200906, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV200906, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdWords::V200906::AdGroupAdService::GeoPoint[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV200906, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV200906, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdWords::V200906::AdGroupAdService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdWords::V200906::AdGroupAdService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdWords::V200906::AdGroupAdService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200906, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::QuotaExceededError,
    :schema_type => XSD::QName.new(NsV200906, "QuotaExceededError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::QuotaExceededErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::C_RangeError,
    :schema_type => XSD::QName.new(NsV200906, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200906, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::RequiredError,
    :schema_type => XSD::QName.new(NsV200906, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV200906, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::SoapHeader,
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
    :class => AdWords::V200906::AdGroupAdService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200906, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV200906, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::StatsSelector,
    :schema_type => XSD::QName.new(NsV200906, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdWords::V200906::AdGroupAdService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "StatsSelector.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::TextAd,
    :schema_type => XSD::QName.new(NsV200906, "TextAd"),
    :schema_basetype => XSD::QName.new(NsV200906, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V200906::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description1", "SOAP::SOAPString", [0, 1]],
      ["description2", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::Video,
    :schema_type => XSD::QName.new(NsV200906, "Video"),
    :schema_basetype => XSD::QName.new(NsV200906, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdWords::V200906::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdWords::V200906::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdWords::V200906::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdWords::V200906::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdWords::V200906::AdGroupAdService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdWords::V200906::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]],
      ["industryStandardCommercialIdentifier", "SOAP::SOAPString", [0, 1]],
      ["advertisingId", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::ExemptionRequest,
    :schema_type => XSD::QName.new(NsV200906, "ExemptionRequest"),
    :schema_element => [
      ["key", "AdWords::V200906::AdGroupAdService::PolicyViolationKey", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::Media,
    :schema_type => XSD::QName.new(NsV200906, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdWords::V200906::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdWords::V200906::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdWords::V200906::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdWords::V200906::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdWords::V200906::AdGroupAdService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdWords::V200906::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Media.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::MobileImageAd,
    :schema_type => XSD::QName.new(NsV200906, "MobileImageAd"),
    :schema_basetype => XSD::QName.new(NsV200906, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V200906::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Ad.Type")], [0, 1]],
      ["markupLanguages", "AdWords::V200906::AdGroupAdService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["image", "AdWords::V200906::AdGroupAdService::Image", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV200906, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["key", "AdWords::V200906::AdGroupAdService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdWords::V200906::AdGroupAdService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::Stats,
    :schema_type => XSD::QName.new(NsV200906, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdWords::V200906::AdGroupAdService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["averageCpm", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::ApiException,
    :schema_type => XSD::QName.new(NsV200906, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200906::AdGroupAdService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200906, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::ImageAd,
    :schema_type => XSD::QName.new(NsV200906, "ImageAd"),
    :schema_basetype => XSD::QName.new(NsV200906, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V200906::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Ad.Type")], [0, 1]],
      ["image", "AdWords::V200906::AdGroupAdService::Image", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::LocalBusinessAd,
    :schema_type => XSD::QName.new(NsV200906, "LocalBusinessAd"),
    :schema_basetype => XSD::QName.new(NsV200906, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V200906::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Ad.Type")], [0, 1]],
      ["fullBusinessName", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["streetAddress", "SOAP::SOAPString", [0, 1]],
      ["city", "SOAP::SOAPString", [0, 1]],
      ["region", "SOAP::SOAPString", [0, 1]],
      ["regionCode", "SOAP::SOAPString", [0, 1]],
      ["postalCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["description1", "SOAP::SOAPString", [0, 1]],
      ["description2", "SOAP::SOAPString", [0, 1]],
      ["target", "AdWords::V200906::AdGroupAdService::ProximityTarget", [0, 1]],
      ["businessImage", "AdWords::V200906::AdGroupAdService::Image", [0, 1]],
      ["icon", "AdWords::V200906::AdGroupAdService::Image", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdGroupAdSelector,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupAdSelector"),
    :schema_element => [
      ["campaignIds", "SOAP::SOAPLong[]", [0, nil]],
      ["adGroupIds", "SOAP::SOAPLong[]", [0, nil]],
      ["adIds", "SOAP::SOAPLong[]", [0, nil]],
      ["statsSelector", "AdWords::V200906::AdGroupAdService::AdStatsSelector", [0, 1]],
      ["paging", "AdWords::V200906::AdGroupAdService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::Ad,
    :schema_type => XSD::QName.new(NsV200906, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V200906::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Ad.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdGroupAd,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupAd"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["ad", "AdWords::V200906::AdGroupAdService::Ad", [0, 1]],
      ["status", "AdWords::V200906::AdGroupAdService::AdGroupAdStatus", [0, 1]],
      ["stats", "AdWords::V200906::AdGroupAdService::AdStats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdGroupAdOperation,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupAdOperation"),
    :schema_basetype => XSD::QName.new(NsV200906, "Operation"),
    :schema_element => [
      ["operator", "AdWords::V200906::AdGroupAdService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Operation.Type")], [0, 1]],
      ["operand", "AdWords::V200906::AdGroupAdService::AdGroupAd", [0, 1]],
      ["exemptionRequests", "AdWords::V200906::AdGroupAdService::ExemptionRequest[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdGroupAdPage,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupAdPage"),
    :schema_basetype => XSD::QName.new(NsV200906, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Page.Type")], [0, 1]],
      ["entries", "AdWords::V200906::AdGroupAdService::AdGroupAd[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdGroupAdReturnValue,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupAdReturnValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdWords::V200906::AdGroupAdService::AdGroupAd[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdApprovalStatus,
    :schema_type => XSD::QName.new(NsV200906, "Ad.ApprovalStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "AdError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdGroupAdStatus,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupAd.Status")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdGroupAdErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupAdError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV200906, "AgeTarget.Age")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "DateError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV200906, "DayOfWeek")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV200906, "EntityCountLimitExceeded.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200906, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV200906, "GenderTarget.Gender")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::IdErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "IdError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::ImageErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "ImageError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::MarkupLanguageType,
    :schema_type => XSD::QName.new(NsV200906, "MarkupLanguageType")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::MediaMediaExtendedCapabilityState,
    :schema_type => XSD::QName.new(NsV200906, "Media.MediaExtendedCapabilityState")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::MediaMediaExtendedCapabilityType,
    :schema_type => XSD::QName.new(NsV200906, "Media.MediaExtendedCapabilityType")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::MediaMediaSubType,
    :schema_type => XSD::QName.new(NsV200906, "Media.MediaSubType")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::MediaMediaType,
    :schema_type => XSD::QName.new(NsV200906, "Media.MediaType")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::MediaMimeType,
    :schema_type => XSD::QName.new(NsV200906, "Media.MimeType")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::MediaSize,
    :schema_type => XSD::QName.new(NsV200906, "Media.Size")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::MediaErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "MediaError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV200906, "MinuteOfHour")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::NetworkCoverageType,
    :schema_type => XSD::QName.new(NsV200906, "NetworkCoverageType")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NewEntityCreationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200906, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::Operator,
    :schema_type => XSD::QName.new(NsV200906, "Operator")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "PagingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::PlatformType,
    :schema_type => XSD::QName.new(NsV200906, "PlatformType")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV200906, "ProximityTarget.DistanceUnits")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::QuotaExceededErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "QuotaExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV200906, "Stats.Network")
  )

  EncodedRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdError,
    :schema_type => XSD::QName.new(NsV200906, "AdError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::AdErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdExtensionOverrideStats,
    :schema_type => XSD::QName.new(NsV200906, "AdExtensionOverrideStats"),
    :schema_basetype => XSD::QName.new(NsV200906, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdWords::V200906::AdGroupAdService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["averageCpm", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdGroupAdCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupAdCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV200906, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdGroupAdError,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupAdError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::AdGroupAdErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV200906, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdWords::V200906::AdGroupAdService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdWords::V200906::AdGroupAdService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdWords::V200906::AdGroupAdService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdStats,
    :schema_type => XSD::QName.new(NsV200906, "AdStats"),
    :schema_basetype => XSD::QName.new(NsV200906, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdWords::V200906::AdGroupAdService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["averageCpm", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Stats.Type")], [0, 1]],
      ["percentServed", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdStatsSelector,
    :schema_type => XSD::QName.new(NsV200906, "AdStatsSelector"),
    :schema_basetype => XSD::QName.new(NsV200906, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdWords::V200906::AdGroupAdService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "StatsSelector.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::Address,
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
    :class => AdWords::V200906::AdGroupAdService::AgeTarget,
    :schema_type => XSD::QName.new(NsV200906, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdWords::V200906::AdGroupAdService::AgeTargetAge", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV200906, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200906, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::CityTarget,
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
    :class => AdWords::V200906::AdGroupAdService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV200906, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::CountryTarget,
    :schema_type => XSD::QName.new(NsV200906, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200906, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::DateError,
    :schema_type => XSD::QName.new(NsV200906, "DateError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::DateErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::DateRange,
    :schema_type => XSD::QName.new(NsV200906, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::Dimensions,
    :schema_type => XSD::QName.new(NsV200906, "Dimensions"),
    :schema_element => [
      ["width", "SOAP::SOAPInt", [0, 1]],
      ["height", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::DistinctError,
    :schema_type => XSD::QName.new(NsV200906, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::DoubleValue,
    :schema_type => XSD::QName.new(NsV200906, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200906, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::GenderTarget,
    :schema_type => XSD::QName.new(NsV200906, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdWords::V200906::AdGroupAdService::GenderTargetGender", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::GeoPoint,
    :schema_type => XSD::QName.new(NsV200906, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::IdError,
    :schema_type => XSD::QName.new(NsV200906, "IdError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::IdErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::Image,
    :schema_type => XSD::QName.new(NsV200906, "Image"),
    :schema_basetype => XSD::QName.new(NsV200906, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdWords::V200906::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdWords::V200906::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdWords::V200906::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdWords::V200906::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdWords::V200906::AdGroupAdService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdWords::V200906::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Media.Type")], [0, 1]],
      ["data", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::ImageError,
    :schema_type => XSD::QName.new(NsV200906, "ImageError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::ImageErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::InternalApiError,
    :schema_type => XSD::QName.new(NsV200906, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV200906, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::LongValue,
    :schema_type => XSD::QName.new(NsV200906, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::MediaError,
    :schema_type => XSD::QName.new(NsV200906, "MediaError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::MediaErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry,
    :schema_type => XSD::QName.new(NsV200906, "Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry"),
    :schema_element => [
      ["key", "AdWords::V200906::AdGroupAdService::MediaMediaExtendedCapabilityType", [0, 1]],
      ["value", "AdWords::V200906::AdGroupAdService::MediaMediaExtendedCapabilityState", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::Media_Size_DimensionsMapEntry,
    :schema_type => XSD::QName.new(NsV200906, "Media_Size_DimensionsMapEntry"),
    :schema_element => [
      ["key", "AdWords::V200906::AdGroupAdService::MediaSize", [0, 1]],
      ["value", "AdWords::V200906::AdGroupAdService::Dimensions", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::Media_Size_StringMapEntry,
    :schema_type => XSD::QName.new(NsV200906, "Media_Size_StringMapEntry"),
    :schema_element => [
      ["key", "AdWords::V200906::AdGroupAdService::MediaSize", [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::MetroTarget,
    :schema_type => XSD::QName.new(NsV200906, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::MobileAd,
    :schema_type => XSD::QName.new(NsV200906, "MobileAd"),
    :schema_basetype => XSD::QName.new(NsV200906, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V200906::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["markupLanguages", "AdWords::V200906::AdGroupAdService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::Money,
    :schema_type => XSD::QName.new(NsV200906, "Money"),
    :schema_basetype => XSD::QName.new(NsV200906, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV200906, "NetworkTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["networkCoverageType", "AdWords::V200906::AdGroupAdService::NetworkCoverageType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV200906, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200906, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200906, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::NullError,
    :schema_type => XSD::QName.new(NsV200906, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV200906, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::Paging,
    :schema_type => XSD::QName.new(NsV200906, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::PagingError,
    :schema_type => XSD::QName.new(NsV200906, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::PagingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV200906, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["platformType", "AdWords::V200906::AdGroupAdService::PlatformType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV200906, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV200906, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV200906, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdWords::V200906::AdGroupAdService::GeoPoint[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV200906, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV200906, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV200906, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdWords::V200906::AdGroupAdService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdWords::V200906::AdGroupAdService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdWords::V200906::AdGroupAdService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200906, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::QuotaExceededError,
    :schema_type => XSD::QName.new(NsV200906, "QuotaExceededError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::QuotaExceededErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::C_RangeError,
    :schema_type => XSD::QName.new(NsV200906, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200906, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::RequiredError,
    :schema_type => XSD::QName.new(NsV200906, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV200906, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::SoapHeader,
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
    :class => AdWords::V200906::AdGroupAdService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200906, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV200906, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200906::AdGroupAdService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::StatsSelector,
    :schema_type => XSD::QName.new(NsV200906, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdWords::V200906::AdGroupAdService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "StatsSelector.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::TextAd,
    :schema_type => XSD::QName.new(NsV200906, "TextAd"),
    :schema_basetype => XSD::QName.new(NsV200906, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V200906::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description1", "SOAP::SOAPString", [0, 1]],
      ["description2", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::Video,
    :schema_type => XSD::QName.new(NsV200906, "Video"),
    :schema_basetype => XSD::QName.new(NsV200906, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdWords::V200906::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdWords::V200906::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdWords::V200906::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdWords::V200906::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdWords::V200906::AdGroupAdService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdWords::V200906::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]],
      ["industryStandardCommercialIdentifier", "SOAP::SOAPString", [0, 1]],
      ["advertisingId", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::ExemptionRequest,
    :schema_type => XSD::QName.new(NsV200906, "ExemptionRequest"),
    :schema_element => [
      ["key", "AdWords::V200906::AdGroupAdService::PolicyViolationKey", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::Media,
    :schema_type => XSD::QName.new(NsV200906, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdWords::V200906::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdWords::V200906::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdWords::V200906::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdWords::V200906::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdWords::V200906::AdGroupAdService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdWords::V200906::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Media.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::MobileImageAd,
    :schema_type => XSD::QName.new(NsV200906, "MobileImageAd"),
    :schema_basetype => XSD::QName.new(NsV200906, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V200906::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Ad.Type")], [0, 1]],
      ["markupLanguages", "AdWords::V200906::AdGroupAdService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["image", "AdWords::V200906::AdGroupAdService::Image", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV200906, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApiError.Type")], [0, 1]],
      ["key", "AdWords::V200906::AdGroupAdService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdWords::V200906::AdGroupAdService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::Stats,
    :schema_type => XSD::QName.new(NsV200906, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdWords::V200906::AdGroupAdService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["averageCpm", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdWords::V200906::AdGroupAdService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::ApiException,
    :schema_type => XSD::QName.new(NsV200906, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200906, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200906::AdGroupAdService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200906, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::ImageAd,
    :schema_type => XSD::QName.new(NsV200906, "ImageAd"),
    :schema_basetype => XSD::QName.new(NsV200906, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V200906::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Ad.Type")], [0, 1]],
      ["image", "AdWords::V200906::AdGroupAdService::Image", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::LocalBusinessAd,
    :schema_type => XSD::QName.new(NsV200906, "LocalBusinessAd"),
    :schema_basetype => XSD::QName.new(NsV200906, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V200906::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Ad.Type")], [0, 1]],
      ["fullBusinessName", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["streetAddress", "SOAP::SOAPString", [0, 1]],
      ["city", "SOAP::SOAPString", [0, 1]],
      ["region", "SOAP::SOAPString", [0, 1]],
      ["regionCode", "SOAP::SOAPString", [0, 1]],
      ["postalCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["description1", "SOAP::SOAPString", [0, 1]],
      ["description2", "SOAP::SOAPString", [0, 1]],
      ["target", "AdWords::V200906::AdGroupAdService::ProximityTarget", [0, 1]],
      ["businessImage", "AdWords::V200906::AdGroupAdService::Image", [0, 1]],
      ["icon", "AdWords::V200906::AdGroupAdService::Image", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdGroupAdSelector,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupAdSelector"),
    :schema_element => [
      ["campaignIds", "SOAP::SOAPLong[]", [0, nil]],
      ["adGroupIds", "SOAP::SOAPLong[]", [0, nil]],
      ["adIds", "SOAP::SOAPLong[]", [0, nil]],
      ["statsSelector", "AdWords::V200906::AdGroupAdService::AdStatsSelector", [0, 1]],
      ["paging", "AdWords::V200906::AdGroupAdService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::Ad,
    :schema_type => XSD::QName.new(NsV200906, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V200906::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Ad.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdGroupAd,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupAd"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["ad", "AdWords::V200906::AdGroupAdService::Ad", [0, 1]],
      ["status", "AdWords::V200906::AdGroupAdService::AdGroupAdStatus", [0, 1]],
      ["stats", "AdWords::V200906::AdGroupAdService::AdStats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdGroupAdOperation,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupAdOperation"),
    :schema_basetype => XSD::QName.new(NsV200906, "Operation"),
    :schema_element => [
      ["operator", "AdWords::V200906::AdGroupAdService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Operation.Type")], [0, 1]],
      ["operand", "AdWords::V200906::AdGroupAdService::AdGroupAd", [0, 1]],
      ["exemptionRequests", "AdWords::V200906::AdGroupAdService::ExemptionRequest[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdGroupAdPage,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupAdPage"),
    :schema_basetype => XSD::QName.new(NsV200906, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "Page.Type")], [0, 1]],
      ["entries", "AdWords::V200906::AdGroupAdService::AdGroupAd[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdGroupAdReturnValue,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupAdReturnValue"),
    :schema_basetype => XSD::QName.new(NsV200906, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdWords::V200906::AdGroupAdService::AdGroupAd[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdApprovalStatus,
    :schema_type => XSD::QName.new(NsV200906, "Ad.ApprovalStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "AdError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdGroupAdStatus,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupAd.Status")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AdGroupAdErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "AdGroupAdError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV200906, "AgeTarget.Age")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "DateError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV200906, "DayOfWeek")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV200906, "EntityCountLimitExceeded.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200906, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV200906, "GenderTarget.Gender")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::IdErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "IdError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::ImageErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "ImageError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::MarkupLanguageType,
    :schema_type => XSD::QName.new(NsV200906, "MarkupLanguageType")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::MediaMediaExtendedCapabilityState,
    :schema_type => XSD::QName.new(NsV200906, "Media.MediaExtendedCapabilityState")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::MediaMediaExtendedCapabilityType,
    :schema_type => XSD::QName.new(NsV200906, "Media.MediaExtendedCapabilityType")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::MediaMediaSubType,
    :schema_type => XSD::QName.new(NsV200906, "Media.MediaSubType")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::MediaMediaType,
    :schema_type => XSD::QName.new(NsV200906, "Media.MediaType")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::MediaMimeType,
    :schema_type => XSD::QName.new(NsV200906, "Media.MimeType")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::MediaSize,
    :schema_type => XSD::QName.new(NsV200906, "Media.Size")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::MediaErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "MediaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV200906, "MinuteOfHour")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::NetworkCoverageType,
    :schema_type => XSD::QName.new(NsV200906, "NetworkCoverageType")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NewEntityCreationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200906, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::Operator,
    :schema_type => XSD::QName.new(NsV200906, "Operator")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "PagingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::PlatformType,
    :schema_type => XSD::QName.new(NsV200906, "PlatformType")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV200906, "ProximityTarget.DistanceUnits")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::QuotaExceededErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "QuotaExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV200906, "Stats.Network")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV200906, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::Get,
    :schema_name => XSD::QName.new(NsV200906, "get"),
    :schema_element => [
      ["selector", "AdWords::V200906::AdGroupAdService::AdGroupAdSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::GetResponse,
    :schema_name => XSD::QName.new(NsV200906, "getResponse"),
    :schema_element => [
      ["rval", "AdWords::V200906::AdGroupAdService::AdGroupAdPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::ApiException,
    :schema_name => XSD::QName.new(NsV200906, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200906, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200906::AdGroupAdService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::Mutate,
    :schema_name => XSD::QName.new(NsV200906, "mutate"),
    :schema_element => [
      ["operations", "AdWords::V200906::AdGroupAdService::AdGroupAdOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::MutateResponse,
    :schema_name => XSD::QName.new(NsV200906, "mutateResponse"),
    :schema_element => [
      ["rval", "AdWords::V200906::AdGroupAdService::AdGroupAdReturnValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200906::AdGroupAdService::SoapHeader,
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
    :class => AdWords::V200906::AdGroupAdService::SoapResponseHeader,
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
