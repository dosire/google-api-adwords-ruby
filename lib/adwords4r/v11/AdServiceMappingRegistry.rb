require 'adwords4r/v11/AdService'
require 'soap/mapping'

module AdWords; module AdService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV11 = "https://adwords.google.com/api/adwords/v11"

  EncodedRegistry.register(
    :class => AdWords::AdService::ApiError,
    :schema_type => XSD::QName.new(NsV11, "ApiError"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["detail", "SOAP::SOAPString"],
      ["field", "SOAP::SOAPString", [0, 1]],
      ["index", "SOAP::SOAPInt"],
      ["isExemptable", "SOAP::SOAPBoolean"],
      ["textIndex", "SOAP::SOAPInt", [0, 1]],
      ["textLength", "SOAP::SOAPInt", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::ApiException,
    :schema_type => XSD::QName.new(NsV11, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::AdService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::Business,
    :schema_type => XSD::QName.new(NsV11, "Business"),
    :schema_element => [
      ["address", "SOAP::SOAPString"],
      ["city", "SOAP::SOAPString"],
      ["countryCode", "SOAP::SOAPString"],
      ["key", "SOAP::SOAPString"],
      ["latitude", "SOAP::SOAPString"],
      ["longitude", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"],
      ["phoneNumber", "SOAP::SOAPString"],
      ["postalCode", "SOAP::SOAPString"],
      ["region", "SOAP::SOAPString"],
      ["timestamp", "SOAP::SOAPLong"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::Circle,
    :schema_type => XSD::QName.new(NsV11, "Circle"),
    :schema_element => [
      ["latitudeMicroDegrees", "SOAP::SOAPInt"],
      ["longitudeMicroDegrees", "SOAP::SOAPInt"],
      ["radiusMeters", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::CityTargets,
    :schema_type => XSD::QName.new(NsV11, "CityTargets"),
    :schema_element => [
      ["cities", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::CommerceAd,
    :schema_type => XSD::QName.new(NsV11, "CommerceAd"),
    :schema_basetype => XSD::QName.new(NsV11, "Ad"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["adType", "AdWords::AdService::AdType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "AdWords::AdService::AdStatus", [0, 1]],
      ["description1", "SOAP::SOAPString"],
      ["description2", "SOAP::SOAPString"],
      ["headline", "SOAP::SOAPString"],
      ["postPriceAnnotation", "SOAP::SOAPString", [0, 1]],
      ["prePriceAnnotation", "SOAP::SOAPString", [0, 1]],
      ["priceString", "SOAP::SOAPString"],
      ["productImage", "AdWords::AdService::Image"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::CountryTargets,
    :schema_type => XSD::QName.new(NsV11, "CountryTargets"),
    :schema_element => [
      ["countries", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::GeoTarget,
    :schema_type => XSD::QName.new(NsV11, "GeoTarget"),
    :schema_element => [
      ["cityTargets", "AdWords::AdService::CityTargets", [0, 1]],
      ["countryTargets", "AdWords::AdService::CountryTargets", [0, 1]],
      ["metroTargets", "AdWords::AdService::MetroTargets", [0, 1]],
      ["proximityTargets", "AdWords::AdService::ProximityTargets", [0, 1]],
      ["regionTargets", "AdWords::AdService::RegionTargets", [0, 1]],
      ["targetAll", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::Image,
    :schema_type => XSD::QName.new(NsV11, "Image"),
    :schema_element => [
      ["data", "SOAP::SOAPBase64", [0, 1]],
      ["height", "SOAP::SOAPInt", [0, 1]],
      ["imageUrl", "SOAP::SOAPString", [0, 1]],
      ["mimeType", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["shrunkenUrl", "SOAP::SOAPString", [0, 1]],
      ["thumbnailUrl", "SOAP::SOAPString", [0, 1]],
      ["type", "AdWords::AdService::ImageType", [0, 1]],
      ["width", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::ImageAd,
    :schema_type => XSD::QName.new(NsV11, "ImageAd"),
    :schema_basetype => XSD::QName.new(NsV11, "Ad"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["adType", "AdWords::AdService::AdType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "AdWords::AdService::AdStatus", [0, 1]],
      ["image", "AdWords::AdService::Image", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV11, "LanguageTarget"),
    :schema_element => [
      ["languages", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::LocalBusinessAd,
    :schema_type => XSD::QName.new(NsV11, "LocalBusinessAd"),
    :schema_basetype => XSD::QName.new(NsV11, "Ad"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["adType", "AdWords::AdService::AdType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "AdWords::AdService::AdStatus", [0, 1]],
      ["address", "SOAP::SOAPString", [0, 1]],
      ["businessImage", "AdWords::AdService::Image", [0, 1]],
      ["businessKey", "SOAP::SOAPString", [0, 1]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["city", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString"],
      ["customIcon", "AdWords::AdService::Image", [0, 1]],
      ["customIconId", "SOAP::SOAPLong", [0, 1]],
      ["description1", "SOAP::SOAPString"],
      ["description2", "SOAP::SOAPString"],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["postalCode", "SOAP::SOAPString", [0, 1]],
      ["region", "SOAP::SOAPString", [0, 1]],
      ["stockIcon", "AdWords::AdService::StockIcon", [0, 1]],
      ["targetRadiusInKm", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::MetroTargets,
    :schema_type => XSD::QName.new(NsV11, "MetroTargets"),
    :schema_element => [
      ["metros", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::MobileAd,
    :schema_type => XSD::QName.new(NsV11, "MobileAd"),
    :schema_basetype => XSD::QName.new(NsV11, "Ad"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["adType", "AdWords::AdService::AdType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "AdWords::AdService::AdStatus", [0, 1]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString"],
      ["headline", "SOAP::SOAPString"],
      ["markupLanguages", "SOAP::SOAPString[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [1, nil]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::ProximityTargets,
    :schema_type => XSD::QName.new(NsV11, "ProximityTargets"),
    :schema_element => [
      ["circles", "AdWords::AdService::Circle[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::RegionTargets,
    :schema_type => XSD::QName.new(NsV11, "RegionTargets"),
    :schema_element => [
      ["regions", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::StatsRecord,
    :schema_type => XSD::QName.new(NsV11, "StatsRecord"),
    :schema_element => [
      ["averagePosition", "SOAP::SOAPDouble"],
      ["clicks", "SOAP::SOAPLong"],
      ["conversionRate", "SOAP::SOAPDouble"],
      ["conversions", "SOAP::SOAPLong"],
      ["cost", "SOAP::SOAPLong"],
      ["id", "SOAP::SOAPLong"],
      ["impressions", "SOAP::SOAPLong"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::TextAd,
    :schema_type => XSD::QName.new(NsV11, "TextAd"),
    :schema_basetype => XSD::QName.new(NsV11, "Ad"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["adType", "AdWords::AdService::AdType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "AdWords::AdService::AdStatus", [0, 1]],
      ["description1", "SOAP::SOAPString"],
      ["description2", "SOAP::SOAPString"],
      ["headline", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::Video,
    :schema_type => XSD::QName.new(NsV11, "Video"),
    :schema_element => [
      ["duration", "SOAP::SOAPLong", [0, 1]],
      ["filename", "SOAP::SOAPString", [0, 1]],
      ["preview", "SOAP::SOAPString", [0, 1]],
      ["title", "SOAP::SOAPString", [0, 1]],
      ["videoId", "SOAP::SOAPLong"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::VideoAd,
    :schema_type => XSD::QName.new(NsV11, "VideoAd"),
    :schema_basetype => XSD::QName.new(NsV11, "Ad"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["adType", "AdWords::AdService::AdType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "AdWords::AdService::AdStatus", [0, 1]],
      ["image", "AdWords::AdService::Image"],
      ["name", "SOAP::SOAPString"],
      ["video", "AdWords::AdService::Video"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::AdStatus,
    :schema_type => XSD::QName.new(NsV11, "AdStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::AdType,
    :schema_type => XSD::QName.new(NsV11, "AdType")
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::ImageType,
    :schema_type => XSD::QName.new(NsV11, "ImageType")
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::StockIcon,
    :schema_type => XSD::QName.new(NsV11, "StockIcon")
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::ApiError,
    :schema_type => XSD::QName.new(NsV11, "ApiError"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["detail", "SOAP::SOAPString"],
      ["field", "SOAP::SOAPString", [0, 1]],
      ["index", "SOAP::SOAPInt"],
      ["isExemptable", "SOAP::SOAPBoolean"],
      ["textIndex", "SOAP::SOAPInt", [0, 1]],
      ["textLength", "SOAP::SOAPInt", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::ApiException,
    :schema_type => XSD::QName.new(NsV11, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::AdService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::Business,
    :schema_type => XSD::QName.new(NsV11, "Business"),
    :schema_element => [
      ["address", "SOAP::SOAPString"],
      ["city", "SOAP::SOAPString"],
      ["countryCode", "SOAP::SOAPString"],
      ["key", "SOAP::SOAPString"],
      ["latitude", "SOAP::SOAPString"],
      ["longitude", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"],
      ["phoneNumber", "SOAP::SOAPString"],
      ["postalCode", "SOAP::SOAPString"],
      ["region", "SOAP::SOAPString"],
      ["timestamp", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::Circle,
    :schema_type => XSD::QName.new(NsV11, "Circle"),
    :schema_element => [
      ["latitudeMicroDegrees", "SOAP::SOAPInt"],
      ["longitudeMicroDegrees", "SOAP::SOAPInt"],
      ["radiusMeters", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::CityTargets,
    :schema_type => XSD::QName.new(NsV11, "CityTargets"),
    :schema_element => [
      ["cities", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::CommerceAd,
    :schema_type => XSD::QName.new(NsV11, "CommerceAd"),
    :schema_basetype => XSD::QName.new(NsV11, "Ad"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["adType", "AdWords::AdService::AdType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "AdWords::AdService::AdStatus", [0, 1]],
      ["description1", "SOAP::SOAPString"],
      ["description2", "SOAP::SOAPString"],
      ["headline", "SOAP::SOAPString"],
      ["postPriceAnnotation", "SOAP::SOAPString", [0, 1]],
      ["prePriceAnnotation", "SOAP::SOAPString", [0, 1]],
      ["priceString", "SOAP::SOAPString"],
      ["productImage", "AdWords::AdService::Image"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::CountryTargets,
    :schema_type => XSD::QName.new(NsV11, "CountryTargets"),
    :schema_element => [
      ["countries", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::GeoTarget,
    :schema_type => XSD::QName.new(NsV11, "GeoTarget"),
    :schema_element => [
      ["cityTargets", "AdWords::AdService::CityTargets", [0, 1]],
      ["countryTargets", "AdWords::AdService::CountryTargets", [0, 1]],
      ["metroTargets", "AdWords::AdService::MetroTargets", [0, 1]],
      ["proximityTargets", "AdWords::AdService::ProximityTargets", [0, 1]],
      ["regionTargets", "AdWords::AdService::RegionTargets", [0, 1]],
      ["targetAll", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::Image,
    :schema_type => XSD::QName.new(NsV11, "Image"),
    :schema_element => [
      ["data", "SOAP::SOAPBase64", [0, 1]],
      ["height", "SOAP::SOAPInt", [0, 1]],
      ["imageUrl", "SOAP::SOAPString", [0, 1]],
      ["mimeType", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["shrunkenUrl", "SOAP::SOAPString", [0, 1]],
      ["thumbnailUrl", "SOAP::SOAPString", [0, 1]],
      ["type", "AdWords::AdService::ImageType", [0, 1]],
      ["width", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::ImageAd,
    :schema_type => XSD::QName.new(NsV11, "ImageAd"),
    :schema_basetype => XSD::QName.new(NsV11, "Ad"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["adType", "AdWords::AdService::AdType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "AdWords::AdService::AdStatus", [0, 1]],
      ["image", "AdWords::AdService::Image", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV11, "LanguageTarget"),
    :schema_element => [
      ["languages", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::LocalBusinessAd,
    :schema_type => XSD::QName.new(NsV11, "LocalBusinessAd"),
    :schema_basetype => XSD::QName.new(NsV11, "Ad"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["adType", "AdWords::AdService::AdType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "AdWords::AdService::AdStatus", [0, 1]],
      ["address", "SOAP::SOAPString", [0, 1]],
      ["businessImage", "AdWords::AdService::Image", [0, 1]],
      ["businessKey", "SOAP::SOAPString", [0, 1]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["city", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString"],
      ["customIcon", "AdWords::AdService::Image", [0, 1]],
      ["customIconId", "SOAP::SOAPLong", [0, 1]],
      ["description1", "SOAP::SOAPString"],
      ["description2", "SOAP::SOAPString"],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["postalCode", "SOAP::SOAPString", [0, 1]],
      ["region", "SOAP::SOAPString", [0, 1]],
      ["stockIcon", "AdWords::AdService::StockIcon", [0, 1]],
      ["targetRadiusInKm", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::MetroTargets,
    :schema_type => XSD::QName.new(NsV11, "MetroTargets"),
    :schema_element => [
      ["metros", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::MobileAd,
    :schema_type => XSD::QName.new(NsV11, "MobileAd"),
    :schema_basetype => XSD::QName.new(NsV11, "Ad"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["adType", "AdWords::AdService::AdType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "AdWords::AdService::AdStatus", [0, 1]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString"],
      ["headline", "SOAP::SOAPString"],
      ["markupLanguages", "SOAP::SOAPString[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [1, nil]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::ProximityTargets,
    :schema_type => XSD::QName.new(NsV11, "ProximityTargets"),
    :schema_element => [
      ["circles", "AdWords::AdService::Circle[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::RegionTargets,
    :schema_type => XSD::QName.new(NsV11, "RegionTargets"),
    :schema_element => [
      ["regions", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::StatsRecord,
    :schema_type => XSD::QName.new(NsV11, "StatsRecord"),
    :schema_element => [
      ["averagePosition", "SOAP::SOAPDouble"],
      ["clicks", "SOAP::SOAPLong"],
      ["conversionRate", "SOAP::SOAPDouble"],
      ["conversions", "SOAP::SOAPLong"],
      ["cost", "SOAP::SOAPLong"],
      ["id", "SOAP::SOAPLong"],
      ["impressions", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::TextAd,
    :schema_type => XSD::QName.new(NsV11, "TextAd"),
    :schema_basetype => XSD::QName.new(NsV11, "Ad"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["adType", "AdWords::AdService::AdType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "AdWords::AdService::AdStatus", [0, 1]],
      ["description1", "SOAP::SOAPString"],
      ["description2", "SOAP::SOAPString"],
      ["headline", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::Video,
    :schema_type => XSD::QName.new(NsV11, "Video"),
    :schema_element => [
      ["duration", "SOAP::SOAPLong", [0, 1]],
      ["filename", "SOAP::SOAPString", [0, 1]],
      ["preview", "SOAP::SOAPString", [0, 1]],
      ["title", "SOAP::SOAPString", [0, 1]],
      ["videoId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::VideoAd,
    :schema_type => XSD::QName.new(NsV11, "VideoAd"),
    :schema_basetype => XSD::QName.new(NsV11, "Ad"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["adType", "AdWords::AdService::AdType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "AdWords::AdService::AdStatus", [0, 1]],
      ["image", "AdWords::AdService::Image"],
      ["name", "SOAP::SOAPString"],
      ["video", "AdWords::AdService::Video"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::AdStatus,
    :schema_type => XSD::QName.new(NsV11, "AdStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::AdType,
    :schema_type => XSD::QName.new(NsV11, "AdType")
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::ImageType,
    :schema_type => XSD::QName.new(NsV11, "ImageType")
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::StockIcon,
    :schema_type => XSD::QName.new(NsV11, "StockIcon")
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::AddAds,
    :schema_name => XSD::QName.new(NsV11, "addAds"),
    :schema_element => [
      ["ads", "AdWords::AdService::Ad[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::AddAdsResponse,
    :schema_name => XSD::QName.new(NsV11, "addAdsResponse"),
    :schema_element => [
      ["addAdsReturn", "AdWords::AdService::Ad[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::CheckAds,
    :schema_name => XSD::QName.new(NsV11, "checkAds"),
    :schema_element => [
      ["ads", "AdWords::AdService::Ad[]", [1, nil]],
      ["languageTarget", "AdWords::AdService::LanguageTarget"],
      ["geoTarget", "AdWords::AdService::GeoTarget"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::CheckAdsResponse,
    :schema_name => XSD::QName.new(NsV11, "checkAdsResponse"),
    :schema_element => [
      ["checkAdsReturn", "AdWords::AdService::ApiError[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::ApiException,
    :schema_name => XSD::QName.new(NsV11, "fault"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::AdService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::FindBusinesses,
    :schema_name => XSD::QName.new(NsV11, "findBusinesses"),
    :schema_element => [
      ["name", "SOAP::SOAPString"],
      ["address", "SOAP::SOAPString"],
      ["countryCode", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::FindBusinessesResponse,
    :schema_name => XSD::QName.new(NsV11, "findBusinessesResponse"),
    :schema_element => [
      ["findBusinessesReturn", "AdWords::AdService::Business[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::GetActiveAds,
    :schema_name => XSD::QName.new(NsV11, "getActiveAds"),
    :schema_element => [
      ["adGroupIds", "SOAP::SOAPInt[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::GetActiveAdsResponse,
    :schema_name => XSD::QName.new(NsV11, "getActiveAdsResponse"),
    :schema_element => [
      ["getActiveAdsReturn", "AdWords::AdService::Ad[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::GetAd,
    :schema_name => XSD::QName.new(NsV11, "getAd"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["adId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::GetAdResponse,
    :schema_name => XSD::QName.new(NsV11, "getAdResponse"),
    :schema_element => [
      ["getAdReturn", "AdWords::AdService::Ad"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::GetAdStats,
    :schema_name => XSD::QName.new(NsV11, "getAdStats"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["adIds", "SOAP::SOAPLong[]", [1, nil]],
      ["startDay", "SOAP::SOAPDate"],
      ["endDay", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::GetAdStatsResponse,
    :schema_name => XSD::QName.new(NsV11, "getAdStatsResponse"),
    :schema_element => [
      ["getAdStatsReturn", "AdWords::AdService::StatsRecord[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::GetAllAds,
    :schema_name => XSD::QName.new(NsV11, "getAllAds"),
    :schema_element => [
      ["adGroupIds", "SOAP::SOAPInt[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::GetAllAdsResponse,
    :schema_name => XSD::QName.new(NsV11, "getAllAdsResponse"),
    :schema_element => [
      ["getAllAdsReturn", "AdWords::AdService::Ad[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::GetMyBusinesses,
    :schema_name => XSD::QName.new(NsV11, "getMyBusinesses"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::GetMyBusinessesResponse,
    :schema_name => XSD::QName.new(NsV11, "getMyBusinessesResponse"),
    :schema_element => [
      ["getMyBusinessesReturn", "AdWords::AdService::Business[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::GetMyVideos,
    :schema_name => XSD::QName.new(NsV11, "getMyVideos"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::GetMyVideosResponse,
    :schema_name => XSD::QName.new(NsV11, "getMyVideosResponse"),
    :schema_element => [
      ["getMyVideosReturn", "AdWords::AdService::Video[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::UpdateAds,
    :schema_name => XSD::QName.new(NsV11, "updateAds"),
    :schema_element => [
      ["ads", "AdWords::AdService::Ad[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::UpdateAdsResponse,
    :schema_name => XSD::QName.new(NsV11, "updateAdsResponse"),
    :schema_element => []
  )

end

end; end
