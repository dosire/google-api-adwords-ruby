require 'adwords4r/v200902/AdGroupAdService'
require 'soap/mapping'

module AdWords; module V200902; module AdGroupAdService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV200902 = "https://adwords.google.com/api/adwords/cm/v200902"

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdError,
    :schema_type => XSD::QName.new(NsV200902, "AdError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::AdErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdGroupAdCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupAdCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV200902, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdGroupAdError,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupAdError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::AdGroupAdErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV200902, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdWords::V200902::AdGroupAdService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdWords::V200902::AdGroupAdService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdWords::V200902::AdGroupAdService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdStats,
    :schema_type => XSD::QName.new(NsV200902, "AdStats"),
    :schema_basetype => XSD::QName.new(NsV200902, "Stats"),
    :schema_element => [
      ["startDate", "AdWords::V200902::AdGroupAdService::Date", [0, 1]],
      ["endDate", "AdWords::V200902::AdGroupAdService::Date", [0, 1]],
      ["network", "AdWords::V200902::AdGroupAdService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdWords::V200902::AdGroupAdService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdWords::V200902::AdGroupAdService::Money", [0, 1]],
      ["averageCpm", "AdWords::V200902::AdGroupAdService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdWords::V200902::AdGroupAdService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdWords::V200902::AdGroupAdService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Stats.Type")], [0, 1]],
      ["percentServed", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdStatsSelector,
    :schema_type => XSD::QName.new(NsV200902, "AdStatsSelector"),
    :schema_basetype => XSD::QName.new(NsV200902, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdWords::V200902::AdGroupAdService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "StatsSelector.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::Address,
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
    :class => AdWords::V200902::AdGroupAdService::AgeTarget,
    :schema_type => XSD::QName.new(NsV200902, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdWords::V200902::AdGroupAdService::AgeTargetAge", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200902, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::CityTarget,
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
    :class => AdWords::V200902::AdGroupAdService::CountryTarget,
    :schema_type => XSD::QName.new(NsV200902, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200902, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::Date,
    :schema_type => XSD::QName.new(NsV200902, "Date"),
    :schema_element => [
      ["year", "SOAP::SOAPInt", [0, 1]],
      ["month", "SOAP::SOAPInt", [0, 1]],
      ["day", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::DateError,
    :schema_type => XSD::QName.new(NsV200902, "DateError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::DateErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::DateRange,
    :schema_type => XSD::QName.new(NsV200902, "DateRange"),
    :schema_element => [
      ["min", "AdWords::V200902::AdGroupAdService::Date", [0, 1]],
      ["max", "AdWords::V200902::AdGroupAdService::Date", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::DateTime,
    :schema_type => XSD::QName.new(NsV200902, "DateTime"),
    :schema_element => [
      ["date", "AdWords::V200902::AdGroupAdService::Date", [0, 1]],
      ["hour", "SOAP::SOAPInt", [0, 1]],
      ["minute", "SOAP::SOAPInt", [0, 1]],
      ["second", "SOAP::SOAPInt", [0, 1]],
      ["timeZoneID", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::Dimensions,
    :schema_type => XSD::QName.new(NsV200902, "Dimensions"),
    :schema_element => [
      ["width", "SOAP::SOAPInt", [0, 1]],
      ["height", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::DistinctError,
    :schema_type => XSD::QName.new(NsV200902, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200902, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::GenderTarget,
    :schema_type => XSD::QName.new(NsV200902, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdWords::V200902::AdGroupAdService::GenderTargetGender", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::GeoPoint,
    :schema_type => XSD::QName.new(NsV200902, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::IdError,
    :schema_type => XSD::QName.new(NsV200902, "IdError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::IdErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::Image,
    :schema_type => XSD::QName.new(NsV200902, "Image"),
    :schema_basetype => XSD::QName.new(NsV200902, "Media"),
    :schema_element => [
      ["mediaId", "AdWords::V200902::AdGroupAdService::MediaId", [0, 1]],
      ["mediaTypeDb", "AdWords::V200902::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdWords::V200902::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdWords::V200902::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdWords::V200902::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdWords::V200902::AdGroupAdService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdWords::V200902::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "AdWords::V200902::AdGroupAdService::DateTime", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Media.Type")], [0, 1]],
      ["data", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::ImageError,
    :schema_type => XSD::QName.new(NsV200902, "ImageError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::ImageErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV200902, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MediaError,
    :schema_type => XSD::QName.new(NsV200902, "MediaError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::MediaErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MediaId,
    :schema_type => XSD::QName.new(NsV200902, "MediaId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry,
    :schema_type => XSD::QName.new(NsV200902, "Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry"),
    :schema_element => [
      ["key", "AdWords::V200902::AdGroupAdService::MediaMediaExtendedCapabilityType", [0, 1]],
      ["value", "AdWords::V200902::AdGroupAdService::MediaMediaExtendedCapabilityState", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::Media_Size_DimensionsMapEntry,
    :schema_type => XSD::QName.new(NsV200902, "Media_Size_DimensionsMapEntry"),
    :schema_element => [
      ["key", "AdWords::V200902::AdGroupAdService::MediaSize", [0, 1]],
      ["value", "AdWords::V200902::AdGroupAdService::Dimensions", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::Media_Size_StringMapEntry,
    :schema_type => XSD::QName.new(NsV200902, "Media_Size_StringMapEntry"),
    :schema_element => [
      ["key", "AdWords::V200902::AdGroupAdService::MediaSize", [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MetroTarget,
    :schema_type => XSD::QName.new(NsV200902, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MobileAd,
    :schema_type => XSD::QName.new(NsV200902, "MobileAd"),
    :schema_basetype => XSD::QName.new(NsV200902, "Ad"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupAdService::AdId", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V200902::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["markupLanguages", "AdWords::V200902::AdGroupAdService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MobileExtension,
    :schema_type => XSD::QName.new(NsV200902, "MobileExtension"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdExtension"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupAdService::AdExtensionId", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdExtension.Type")], [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::Money,
    :schema_type => XSD::QName.new(NsV200902, "Money"),
    :schema_element => [
      ["currencyCode", "SOAP::SOAPString", [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV200902, "NetworkTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["networkCoverageType", "AdWords::V200902::AdGroupAdService::NetworkCoverageType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV200902, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200902, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200902, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::NullError,
    :schema_type => XSD::QName.new(NsV200902, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV200902, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::Paging,
    :schema_type => XSD::QName.new(NsV200902, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV200902, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["platformType", "AdWords::V200902::AdGroupAdService::PlatformType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV200902, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV200902, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV200902, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdWords::V200902::AdGroupAdService::GeoPoint[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::ProductExtension,
    :schema_type => XSD::QName.new(NsV200902, "ProductExtension"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdExtension"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupAdService::AdExtensionId", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdExtension.Type")], [0, 1]],
      ["googleBaseCustomerId", "SOAP::SOAPInt", [0, 1]],
      ["advertiserName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV200902, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV200902, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdWords::V200902::AdGroupAdService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdWords::V200902::AdGroupAdService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdWords::V200902::AdGroupAdService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200902, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200902, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::RequiredError,
    :schema_type => XSD::QName.new(NsV200902, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::SoapHeader,
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
    :class => AdWords::V200902::AdGroupAdService::SoapResponseHeader,
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
    :class => AdWords::V200902::AdGroupAdService::Stats,
    :schema_type => XSD::QName.new(NsV200902, "Stats"),
    :schema_element => [
      ["startDate", "AdWords::V200902::AdGroupAdService::Date", [0, 1]],
      ["endDate", "AdWords::V200902::AdGroupAdService::Date", [0, 1]],
      ["network", "AdWords::V200902::AdGroupAdService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdWords::V200902::AdGroupAdService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdWords::V200902::AdGroupAdService::Money", [0, 1]],
      ["averageCpm", "AdWords::V200902::AdGroupAdService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdWords::V200902::AdGroupAdService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdWords::V200902::AdGroupAdService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV200902, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::StatsSelector,
    :schema_type => XSD::QName.new(NsV200902, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdWords::V200902::AdGroupAdService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "StatsSelector.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::StoreLocatorExtension,
    :schema_type => XSD::QName.new(NsV200902, "StoreLocatorExtension"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdExtension"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupAdService::AdExtensionId", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdExtension.Type")], [0, 1]],
      ["localSearchClusterId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::TextAd,
    :schema_type => XSD::QName.new(NsV200902, "TextAd"),
    :schema_basetype => XSD::QName.new(NsV200902, "Ad"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupAdService::AdId", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V200902::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description1", "SOAP::SOAPString", [0, 1]],
      ["description2", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdExtensionId,
    :schema_type => XSD::QName.new(NsV200902, "AdExtensionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtensionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdExtensionId.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdGroupId,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adGroupId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupId.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdId,
    :schema_type => XSD::QName.new(NsV200902, "AdId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdId.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::CampaignId,
    :schema_type => XSD::QName.new(NsV200902, "CampaignId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["campaignId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "CampaignId.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::ExemptionRequest,
    :schema_type => XSD::QName.new(NsV200902, "ExemptionRequest"),
    :schema_element => [
      ["key", "AdWords::V200902::AdGroupAdService::PolicyViolationKey", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::LocationExtension,
    :schema_type => XSD::QName.new(NsV200902, "LocationExtension"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdExtension"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupAdService::AdExtensionId", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdExtension.Type")], [0, 1]],
      ["address", "AdWords::V200902::AdGroupAdService::Address", [0, 1]],
      ["geoPoint", "AdWords::V200902::AdGroupAdService::GeoPoint", [0, 1]],
      ["companyName", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["iconMediaId", "AdWords::V200902::AdGroupAdService::MediaId", [0, 1]],
      ["imageMediaId", "AdWords::V200902::AdGroupAdService::MediaId", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::LocationSyncExtension,
    :schema_type => XSD::QName.new(NsV200902, "LocationSyncExtension"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdExtension"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupAdService::AdExtensionId", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdExtension.Type")], [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["iconMediaId", "AdWords::V200902::AdGroupAdService::MediaId", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::Media,
    :schema_type => XSD::QName.new(NsV200902, "Media"),
    :schema_element => [
      ["mediaId", "AdWords::V200902::AdGroupAdService::MediaId", [0, 1]],
      ["mediaTypeDb", "AdWords::V200902::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdWords::V200902::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdWords::V200902::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdWords::V200902::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdWords::V200902::AdGroupAdService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdWords::V200902::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "AdWords::V200902::AdGroupAdService::DateTime", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Media.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MobileImageAd,
    :schema_type => XSD::QName.new(NsV200902, "MobileImageAd"),
    :schema_basetype => XSD::QName.new(NsV200902, "Ad"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupAdService::AdId", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V200902::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Ad.Type")], [0, 1]],
      ["markupLanguages", "AdWords::V200902::AdGroupAdService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["image", "AdWords::V200902::AdGroupAdService::Image", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV200902, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["key", "AdWords::V200902::AdGroupAdService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdWords::V200902::AdGroupAdService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdExtension,
    :schema_type => XSD::QName.new(NsV200902, "AdExtension"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupAdService::AdExtensionId", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdExtension.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdGroupAdIdFilter,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupAdIdFilter"),
    :schema_element => [
      ["campaignId", "AdWords::V200902::AdGroupAdService::CampaignId", [0, 1]],
      ["adGroupId", "AdWords::V200902::AdGroupAdService::AdGroupId", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdGroupAdSelector,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupAdSelector"),
    :schema_element => [
      ["adGroupAdIdFilters", "AdWords::V200902::AdGroupAdService::AdGroupAdIdFilter[]", [0, nil]],
      ["statsSelector", "AdWords::V200902::AdGroupAdService::AdStatsSelector", [0, 1]],
      ["paging", "AdWords::V200902::AdGroupAdService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::ApiException,
    :schema_type => XSD::QName.new(NsV200902, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200902::AdGroupAdService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200902, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::ImageAd,
    :schema_type => XSD::QName.new(NsV200902, "ImageAd"),
    :schema_basetype => XSD::QName.new(NsV200902, "Ad"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupAdService::AdId", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V200902::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Ad.Type")], [0, 1]],
      ["image", "AdWords::V200902::AdGroupAdService::Image", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::LocalBusinessAd,
    :schema_type => XSD::QName.new(NsV200902, "LocalBusinessAd"),
    :schema_basetype => XSD::QName.new(NsV200902, "Ad"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupAdService::AdId", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V200902::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Ad.Type")], [0, 1]],
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
      ["target", "AdWords::V200902::AdGroupAdService::ProximityTarget", [0, 1]],
      ["businessImage", "AdWords::V200902::AdGroupAdService::Image", [0, 1]],
      ["icon", "AdWords::V200902::AdGroupAdService::Image", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::Ad,
    :schema_type => XSD::QName.new(NsV200902, "Ad"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupAdService::AdId", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V200902::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Ad.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdGroupAd,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupAd"),
    :schema_element => [
      ["adGroupId", "AdWords::V200902::AdGroupAdService::AdGroupId", [0, 1]],
      ["ad", "AdWords::V200902::AdGroupAdService::Ad", [0, 1]],
      ["status", "AdWords::V200902::AdGroupAdService::AdGroupAdStatus", [0, 1]],
      ["stats", "AdWords::V200902::AdGroupAdService::AdStats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdGroupAdOperation,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupAdOperation"),
    :schema_basetype => XSD::QName.new(NsV200902, "Operation"),
    :schema_element => [
      ["operator", "AdWords::V200902::AdGroupAdService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Operation.Type")], [0, 1]],
      ["operand", "AdWords::V200902::AdGroupAdService::AdGroupAd", [0, 1]],
      ["exemptionRequests", "AdWords::V200902::AdGroupAdService::ExemptionRequest[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdGroupAdPage,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupAdPage"),
    :schema_basetype => XSD::QName.new(NsV200902, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Page.Type")], [0, 1]],
      ["entries", "AdWords::V200902::AdGroupAdService::AdGroupAd[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdGroupAdReturnValue,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupAdReturnValue"),
    :schema_basetype => XSD::QName.new(NsV200902, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdWords::V200902::AdGroupAdService::AdGroupAd[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::ListReturnValue,
    :schema_type => XSD::QName.new(NsV200902, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ListReturnValue.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdApprovalStatus,
    :schema_type => XSD::QName.new(NsV200902, "Ad.ApprovalStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "AdError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdGroupAdStatus,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupAd.Status")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdGroupAdErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupAdError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV200902, "AgeTarget.Age")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "DateError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV200902, "DayOfWeek")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV200902, "EntityCountLimitExceeded.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200902, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV200902, "GenderTarget.Gender")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::IdErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "IdError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::ImageErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "ImageError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MarkupLanguageType,
    :schema_type => XSD::QName.new(NsV200902, "MarkupLanguageType")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MediaMediaExtendedCapabilityState,
    :schema_type => XSD::QName.new(NsV200902, "Media.MediaExtendedCapabilityState")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MediaMediaExtendedCapabilityType,
    :schema_type => XSD::QName.new(NsV200902, "Media.MediaExtendedCapabilityType")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MediaMediaSubType,
    :schema_type => XSD::QName.new(NsV200902, "Media.MediaSubType")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MediaMediaType,
    :schema_type => XSD::QName.new(NsV200902, "Media.MediaType")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MediaMimeType,
    :schema_type => XSD::QName.new(NsV200902, "Media.MimeType")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MediaSize,
    :schema_type => XSD::QName.new(NsV200902, "Media.Size")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MediaErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "MediaError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV200902, "MinuteOfHour")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::NetworkCoverageType,
    :schema_type => XSD::QName.new(NsV200902, "NetworkCoverageType")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NewEntityCreationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200902, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::Operator,
    :schema_type => XSD::QName.new(NsV200902, "Operator")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::PlatformType,
    :schema_type => XSD::QName.new(NsV200902, "PlatformType")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV200902, "ProximityTarget.DistanceUnits")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV200902, "Stats.Network")
  )

  EncodedRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdError,
    :schema_type => XSD::QName.new(NsV200902, "AdError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::AdErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdGroupAdCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupAdCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV200902, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdGroupAdError,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupAdError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::AdGroupAdErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV200902, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdWords::V200902::AdGroupAdService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdWords::V200902::AdGroupAdService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdWords::V200902::AdGroupAdService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdStats,
    :schema_type => XSD::QName.new(NsV200902, "AdStats"),
    :schema_basetype => XSD::QName.new(NsV200902, "Stats"),
    :schema_element => [
      ["startDate", "AdWords::V200902::AdGroupAdService::Date", [0, 1]],
      ["endDate", "AdWords::V200902::AdGroupAdService::Date", [0, 1]],
      ["network", "AdWords::V200902::AdGroupAdService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdWords::V200902::AdGroupAdService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdWords::V200902::AdGroupAdService::Money", [0, 1]],
      ["averageCpm", "AdWords::V200902::AdGroupAdService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdWords::V200902::AdGroupAdService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdWords::V200902::AdGroupAdService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Stats.Type")], [0, 1]],
      ["percentServed", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdStatsSelector,
    :schema_type => XSD::QName.new(NsV200902, "AdStatsSelector"),
    :schema_basetype => XSD::QName.new(NsV200902, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdWords::V200902::AdGroupAdService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "StatsSelector.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::Address,
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
    :class => AdWords::V200902::AdGroupAdService::AgeTarget,
    :schema_type => XSD::QName.new(NsV200902, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdWords::V200902::AdGroupAdService::AgeTargetAge", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200902, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::CityTarget,
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
    :class => AdWords::V200902::AdGroupAdService::CountryTarget,
    :schema_type => XSD::QName.new(NsV200902, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200902, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::Date,
    :schema_type => XSD::QName.new(NsV200902, "Date"),
    :schema_element => [
      ["year", "SOAP::SOAPInt", [0, 1]],
      ["month", "SOAP::SOAPInt", [0, 1]],
      ["day", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::DateError,
    :schema_type => XSD::QName.new(NsV200902, "DateError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::DateErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::DateRange,
    :schema_type => XSD::QName.new(NsV200902, "DateRange"),
    :schema_element => [
      ["min", "AdWords::V200902::AdGroupAdService::Date", [0, 1]],
      ["max", "AdWords::V200902::AdGroupAdService::Date", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::DateTime,
    :schema_type => XSD::QName.new(NsV200902, "DateTime"),
    :schema_element => [
      ["date", "AdWords::V200902::AdGroupAdService::Date", [0, 1]],
      ["hour", "SOAP::SOAPInt", [0, 1]],
      ["minute", "SOAP::SOAPInt", [0, 1]],
      ["second", "SOAP::SOAPInt", [0, 1]],
      ["timeZoneID", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::Dimensions,
    :schema_type => XSD::QName.new(NsV200902, "Dimensions"),
    :schema_element => [
      ["width", "SOAP::SOAPInt", [0, 1]],
      ["height", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::DistinctError,
    :schema_type => XSD::QName.new(NsV200902, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200902, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::GenderTarget,
    :schema_type => XSD::QName.new(NsV200902, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdWords::V200902::AdGroupAdService::GenderTargetGender", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::GeoPoint,
    :schema_type => XSD::QName.new(NsV200902, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::IdError,
    :schema_type => XSD::QName.new(NsV200902, "IdError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::IdErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::Image,
    :schema_type => XSD::QName.new(NsV200902, "Image"),
    :schema_basetype => XSD::QName.new(NsV200902, "Media"),
    :schema_element => [
      ["mediaId", "AdWords::V200902::AdGroupAdService::MediaId", [0, 1]],
      ["mediaTypeDb", "AdWords::V200902::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdWords::V200902::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdWords::V200902::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdWords::V200902::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdWords::V200902::AdGroupAdService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdWords::V200902::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "AdWords::V200902::AdGroupAdService::DateTime", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Media.Type")], [0, 1]],
      ["data", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::ImageError,
    :schema_type => XSD::QName.new(NsV200902, "ImageError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::ImageErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV200902, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MediaError,
    :schema_type => XSD::QName.new(NsV200902, "MediaError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::MediaErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MediaId,
    :schema_type => XSD::QName.new(NsV200902, "MediaId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry,
    :schema_type => XSD::QName.new(NsV200902, "Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry"),
    :schema_element => [
      ["key", "AdWords::V200902::AdGroupAdService::MediaMediaExtendedCapabilityType", [0, 1]],
      ["value", "AdWords::V200902::AdGroupAdService::MediaMediaExtendedCapabilityState", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::Media_Size_DimensionsMapEntry,
    :schema_type => XSD::QName.new(NsV200902, "Media_Size_DimensionsMapEntry"),
    :schema_element => [
      ["key", "AdWords::V200902::AdGroupAdService::MediaSize", [0, 1]],
      ["value", "AdWords::V200902::AdGroupAdService::Dimensions", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::Media_Size_StringMapEntry,
    :schema_type => XSD::QName.new(NsV200902, "Media_Size_StringMapEntry"),
    :schema_element => [
      ["key", "AdWords::V200902::AdGroupAdService::MediaSize", [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MetroTarget,
    :schema_type => XSD::QName.new(NsV200902, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MobileAd,
    :schema_type => XSD::QName.new(NsV200902, "MobileAd"),
    :schema_basetype => XSD::QName.new(NsV200902, "Ad"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupAdService::AdId", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V200902::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["markupLanguages", "AdWords::V200902::AdGroupAdService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MobileExtension,
    :schema_type => XSD::QName.new(NsV200902, "MobileExtension"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdExtension"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupAdService::AdExtensionId", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdExtension.Type")], [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::Money,
    :schema_type => XSD::QName.new(NsV200902, "Money"),
    :schema_element => [
      ["currencyCode", "SOAP::SOAPString", [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV200902, "NetworkTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["networkCoverageType", "AdWords::V200902::AdGroupAdService::NetworkCoverageType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV200902, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200902, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200902, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::NullError,
    :schema_type => XSD::QName.new(NsV200902, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV200902, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::Paging,
    :schema_type => XSD::QName.new(NsV200902, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV200902, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["platformType", "AdWords::V200902::AdGroupAdService::PlatformType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV200902, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV200902, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV200902, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdWords::V200902::AdGroupAdService::GeoPoint[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::ProductExtension,
    :schema_type => XSD::QName.new(NsV200902, "ProductExtension"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdExtension"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupAdService::AdExtensionId", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdExtension.Type")], [0, 1]],
      ["googleBaseCustomerId", "SOAP::SOAPInt", [0, 1]],
      ["advertiserName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV200902, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV200902, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV200902, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdWords::V200902::AdGroupAdService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdWords::V200902::AdGroupAdService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdWords::V200902::AdGroupAdService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200902, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200902, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::RequiredError,
    :schema_type => XSD::QName.new(NsV200902, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::SoapHeader,
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
    :class => AdWords::V200902::AdGroupAdService::SoapResponseHeader,
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
    :class => AdWords::V200902::AdGroupAdService::Stats,
    :schema_type => XSD::QName.new(NsV200902, "Stats"),
    :schema_element => [
      ["startDate", "AdWords::V200902::AdGroupAdService::Date", [0, 1]],
      ["endDate", "AdWords::V200902::AdGroupAdService::Date", [0, 1]],
      ["network", "AdWords::V200902::AdGroupAdService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdWords::V200902::AdGroupAdService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdWords::V200902::AdGroupAdService::Money", [0, 1]],
      ["averageCpm", "AdWords::V200902::AdGroupAdService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdWords::V200902::AdGroupAdService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdWords::V200902::AdGroupAdService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV200902, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["reason", "AdWords::V200902::AdGroupAdService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::StatsSelector,
    :schema_type => XSD::QName.new(NsV200902, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdWords::V200902::AdGroupAdService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "StatsSelector.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::StoreLocatorExtension,
    :schema_type => XSD::QName.new(NsV200902, "StoreLocatorExtension"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdExtension"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupAdService::AdExtensionId", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdExtension.Type")], [0, 1]],
      ["localSearchClusterId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::TextAd,
    :schema_type => XSD::QName.new(NsV200902, "TextAd"),
    :schema_basetype => XSD::QName.new(NsV200902, "Ad"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupAdService::AdId", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V200902::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description1", "SOAP::SOAPString", [0, 1]],
      ["description2", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdExtensionId,
    :schema_type => XSD::QName.new(NsV200902, "AdExtensionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtensionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdExtensionId.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdGroupId,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adGroupId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdGroupId.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdId,
    :schema_type => XSD::QName.new(NsV200902, "AdId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdId.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::CampaignId,
    :schema_type => XSD::QName.new(NsV200902, "CampaignId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["campaignId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "CampaignId.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::ExemptionRequest,
    :schema_type => XSD::QName.new(NsV200902, "ExemptionRequest"),
    :schema_element => [
      ["key", "AdWords::V200902::AdGroupAdService::PolicyViolationKey", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::LocationExtension,
    :schema_type => XSD::QName.new(NsV200902, "LocationExtension"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdExtension"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupAdService::AdExtensionId", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdExtension.Type")], [0, 1]],
      ["address", "AdWords::V200902::AdGroupAdService::Address", [0, 1]],
      ["geoPoint", "AdWords::V200902::AdGroupAdService::GeoPoint", [0, 1]],
      ["companyName", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["iconMediaId", "AdWords::V200902::AdGroupAdService::MediaId", [0, 1]],
      ["imageMediaId", "AdWords::V200902::AdGroupAdService::MediaId", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::LocationSyncExtension,
    :schema_type => XSD::QName.new(NsV200902, "LocationSyncExtension"),
    :schema_basetype => XSD::QName.new(NsV200902, "AdExtension"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupAdService::AdExtensionId", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdExtension.Type")], [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["iconMediaId", "AdWords::V200902::AdGroupAdService::MediaId", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::Media,
    :schema_type => XSD::QName.new(NsV200902, "Media"),
    :schema_element => [
      ["mediaId", "AdWords::V200902::AdGroupAdService::MediaId", [0, 1]],
      ["mediaTypeDb", "AdWords::V200902::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdWords::V200902::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdWords::V200902::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdWords::V200902::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdWords::V200902::AdGroupAdService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdWords::V200902::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "AdWords::V200902::AdGroupAdService::DateTime", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Media.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MobileImageAd,
    :schema_type => XSD::QName.new(NsV200902, "MobileImageAd"),
    :schema_basetype => XSD::QName.new(NsV200902, "Ad"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupAdService::AdId", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V200902::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Ad.Type")], [0, 1]],
      ["markupLanguages", "AdWords::V200902::AdGroupAdService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["image", "AdWords::V200902::AdGroupAdService::Image", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV200902, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApiError.Type")], [0, 1]],
      ["key", "AdWords::V200902::AdGroupAdService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdWords::V200902::AdGroupAdService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdExtension,
    :schema_type => XSD::QName.new(NsV200902, "AdExtension"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupAdService::AdExtensionId", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "AdExtension.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdGroupAdIdFilter,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupAdIdFilter"),
    :schema_element => [
      ["campaignId", "AdWords::V200902::AdGroupAdService::CampaignId", [0, 1]],
      ["adGroupId", "AdWords::V200902::AdGroupAdService::AdGroupId", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdGroupAdSelector,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupAdSelector"),
    :schema_element => [
      ["adGroupAdIdFilters", "AdWords::V200902::AdGroupAdService::AdGroupAdIdFilter[]", [0, nil]],
      ["statsSelector", "AdWords::V200902::AdGroupAdService::AdStatsSelector", [0, 1]],
      ["paging", "AdWords::V200902::AdGroupAdService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::ApiException,
    :schema_type => XSD::QName.new(NsV200902, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200902, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200902::AdGroupAdService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200902, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::ImageAd,
    :schema_type => XSD::QName.new(NsV200902, "ImageAd"),
    :schema_basetype => XSD::QName.new(NsV200902, "Ad"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupAdService::AdId", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V200902::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Ad.Type")], [0, 1]],
      ["image", "AdWords::V200902::AdGroupAdService::Image", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::LocalBusinessAd,
    :schema_type => XSD::QName.new(NsV200902, "LocalBusinessAd"),
    :schema_basetype => XSD::QName.new(NsV200902, "Ad"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupAdService::AdId", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V200902::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Ad.Type")], [0, 1]],
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
      ["target", "AdWords::V200902::AdGroupAdService::ProximityTarget", [0, 1]],
      ["businessImage", "AdWords::V200902::AdGroupAdService::Image", [0, 1]],
      ["icon", "AdWords::V200902::AdGroupAdService::Image", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::Ad,
    :schema_type => XSD::QName.new(NsV200902, "Ad"),
    :schema_element => [
      ["id", "AdWords::V200902::AdGroupAdService::AdId", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdWords::V200902::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Ad.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdGroupAd,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupAd"),
    :schema_element => [
      ["adGroupId", "AdWords::V200902::AdGroupAdService::AdGroupId", [0, 1]],
      ["ad", "AdWords::V200902::AdGroupAdService::Ad", [0, 1]],
      ["status", "AdWords::V200902::AdGroupAdService::AdGroupAdStatus", [0, 1]],
      ["stats", "AdWords::V200902::AdGroupAdService::AdStats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdGroupAdOperation,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupAdOperation"),
    :schema_basetype => XSD::QName.new(NsV200902, "Operation"),
    :schema_element => [
      ["operator", "AdWords::V200902::AdGroupAdService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Operation.Type")], [0, 1]],
      ["operand", "AdWords::V200902::AdGroupAdService::AdGroupAd", [0, 1]],
      ["exemptionRequests", "AdWords::V200902::AdGroupAdService::ExemptionRequest[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdGroupAdPage,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupAdPage"),
    :schema_basetype => XSD::QName.new(NsV200902, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "Page.Type")], [0, 1]],
      ["entries", "AdWords::V200902::AdGroupAdService::AdGroupAd[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdGroupAdReturnValue,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupAdReturnValue"),
    :schema_basetype => XSD::QName.new(NsV200902, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdWords::V200902::AdGroupAdService::AdGroupAd[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::ListReturnValue,
    :schema_type => XSD::QName.new(NsV200902, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ListReturnValue.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdApprovalStatus,
    :schema_type => XSD::QName.new(NsV200902, "Ad.ApprovalStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "AdError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdGroupAdStatus,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupAd.Status")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AdGroupAdErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "AdGroupAdError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV200902, "AgeTarget.Age")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "DateError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV200902, "DayOfWeek")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV200902, "EntityCountLimitExceeded.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200902, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV200902, "GenderTarget.Gender")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::IdErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "IdError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::ImageErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "ImageError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MarkupLanguageType,
    :schema_type => XSD::QName.new(NsV200902, "MarkupLanguageType")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MediaMediaExtendedCapabilityState,
    :schema_type => XSD::QName.new(NsV200902, "Media.MediaExtendedCapabilityState")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MediaMediaExtendedCapabilityType,
    :schema_type => XSD::QName.new(NsV200902, "Media.MediaExtendedCapabilityType")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MediaMediaSubType,
    :schema_type => XSD::QName.new(NsV200902, "Media.MediaSubType")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MediaMediaType,
    :schema_type => XSD::QName.new(NsV200902, "Media.MediaType")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MediaMimeType,
    :schema_type => XSD::QName.new(NsV200902, "Media.MimeType")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MediaSize,
    :schema_type => XSD::QName.new(NsV200902, "Media.Size")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MediaErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "MediaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV200902, "MinuteOfHour")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::NetworkCoverageType,
    :schema_type => XSD::QName.new(NsV200902, "NetworkCoverageType")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NewEntityCreationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200902, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::Operator,
    :schema_type => XSD::QName.new(NsV200902, "Operator")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::PlatformType,
    :schema_type => XSD::QName.new(NsV200902, "PlatformType")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV200902, "ProximityTarget.DistanceUnits")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV200902, "Stats.Network")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV200902, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::Get,
    :schema_name => XSD::QName.new(NsV200902, "get"),
    :schema_element => [
      ["selector", "AdWords::V200902::AdGroupAdService::AdGroupAdSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::GetResponse,
    :schema_name => XSD::QName.new(NsV200902, "getResponse"),
    :schema_element => [
      ["rval", "AdWords::V200902::AdGroupAdService::AdGroupAdPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::ApiException,
    :schema_name => XSD::QName.new(NsV200902, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200902, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdWords::V200902::AdGroupAdService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::Mutate,
    :schema_name => XSD::QName.new(NsV200902, "mutate"),
    :schema_element => [
      ["operations", "AdWords::V200902::AdGroupAdService::AdGroupAdOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::MutateResponse,
    :schema_name => XSD::QName.new(NsV200902, "mutateResponse"),
    :schema_element => [
      ["rval", "AdWords::V200902::AdGroupAdService::AdGroupAdReturnValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V200902::AdGroupAdService::SoapHeader,
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
    :class => AdWords::V200902::AdGroupAdService::SoapResponseHeader,
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
