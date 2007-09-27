require 'adwords4r/v10/AdService'
require 'soap/mapping'

module AdWords; module AdService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new

  EncodedRegistry.register(
    :class => AdWords::AdService::ApiError,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "ApiError",
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
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "ApiException",
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
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "Business",
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
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "Circle",
    :schema_element => [
      ["latitudeMicroDegrees", "SOAP::SOAPInt"],
      ["longitudeMicroDegrees", "SOAP::SOAPInt"],
      ["radiusMeters", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.set(
    AdWords::AdService::CityTargets,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::CommerceAd,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "CommerceAd",
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["adType", "SOAP::SOAPString", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["description1", "SOAP::SOAPString"],
      ["description2", "SOAP::SOAPString"],
      ["headline", "SOAP::SOAPString"],
      ["postPriceAnnotation", "SOAP::SOAPString", [0, 1]],
      ["prePriceAnnotation", "SOAP::SOAPString", [0, 1]],
      ["priceString", "SOAP::SOAPString"],
      ["productImage", "AdWords::AdService::Image"]
    ]
  )

  EncodedRegistry.set(
    AdWords::AdService::CountryTargets,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::GeoTarget,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "GeoTarget",
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
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "Image",
    :schema_element => [
      ["data", "SOAP::SOAPBase64", [0, 1]],
      ["height", "SOAP::SOAPInt", [0, 1]],
      ["imageUrl", "SOAP::SOAPString", [0, 1]],
      ["mimeType", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["thumbnailUrl", "SOAP::SOAPString", [0, 1]],
      ["type", "SOAP::SOAPString", [0, 1]],
      ["width", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::ImageAd,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "ImageAd",
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["adType", "SOAP::SOAPString", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["image", "AdWords::AdService::Image", [0, 1]]
    ]
  )

  EncodedRegistry.set(
    AdWords::AdService::LanguageTarget,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::LocalBusinessAd,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "LocalBusinessAd",
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["adType", "SOAP::SOAPString", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["address", "SOAP::SOAPString"],
      ["businessImage", "AdWords::AdService::Image", [0, 1]],
      ["businessKey", "SOAP::SOAPString", [0, 1]],
      ["businessName", "SOAP::SOAPString"],
      ["city", "SOAP::SOAPString"],
      ["countryCode", "SOAP::SOAPString"],
      ["customIcon", "AdWords::AdService::Image", [0, 1]],
      ["customIconId", "SOAP::SOAPLong", [0, 1]],
      ["description1", "SOAP::SOAPString"],
      ["description2", "SOAP::SOAPString"],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["postalCode", "SOAP::SOAPString", [0, 1]],
      ["region", "SOAP::SOAPString", [0, 1]],
      ["stockIcon", "SOAP::SOAPString", [0, 1]],
      ["targetRadiusInKm", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.set(
    AdWords::AdService::MetroTargets,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::MobileAd,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "MobileAd",
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["adType", "SOAP::SOAPString", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString"],
      ["headline", "SOAP::SOAPString"],
      ["markupLanguages", "SOAP::SOAPString[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [1, nil]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.set(
    AdWords::AdService::ProximityTargets,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("https://adwords.google.com/api/adwords/v10", "Circle") }
  )

  EncodedRegistry.set(
    AdWords::AdService::RegionTargets,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::StatsRecord,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "StatsRecord",
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
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "TextAd",
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["adType", "SOAP::SOAPString", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["description1", "SOAP::SOAPString"],
      ["description2", "SOAP::SOAPString"],
      ["headline", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::Video,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "Video",
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
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "VideoAd",
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["adType", "SOAP::SOAPString", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["image", "AdWords::AdService::Image"],
      ["name", "SOAP::SOAPString"],
      ["video", "AdWords::AdService::Video"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::AdStatus,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "AdStatus"
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::AdType,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "AdType"
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::ImageType,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "ImageType"
  )

  EncodedRegistry.register(
    :class => AdWords::AdService::StockIcon,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "StockIcon"
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::ApiError,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "ApiError",
    :schema_qualified => false,
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
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "ApiException",
    :schema_qualified => false,
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
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "Business",
    :schema_qualified => false,
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
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "Circle",
    :schema_qualified => false,
    :schema_element => [
      ["latitudeMicroDegrees", "SOAP::SOAPInt"],
      ["longitudeMicroDegrees", "SOAP::SOAPInt"],
      ["radiusMeters", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::CityTargets,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "CityTargets",
    :schema_element => [
      ["cities", ["SOAP::SOAPString[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "cities")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::CommerceAd,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "CommerceAd",
    :schema_qualified => false,
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["adType", "SOAP::SOAPString", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "SOAP::SOAPString", [0, 1]],
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
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "CountryTargets",
    :schema_element => [
      ["countries", ["SOAP::SOAPString[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "countries")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::GeoTarget,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "GeoTarget",
    :schema_qualified => false,
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
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "Image",
    :schema_qualified => false,
    :schema_element => [
      ["data", "SOAP::SOAPBase64", [0, 1]],
      ["height", "SOAP::SOAPInt", [0, 1]],
      ["imageUrl", "SOAP::SOAPString", [0, 1]],
      ["mimeType", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["thumbnailUrl", "SOAP::SOAPString", [0, 1]],
      ["type", "SOAP::SOAPString", [0, 1]],
      ["width", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::ImageAd,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "ImageAd",
    :schema_qualified => false,
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["adType", "SOAP::SOAPString", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["image", "AdWords::AdService::Image", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::LanguageTarget,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "LanguageTarget",
    :schema_element => [
      ["languages", ["SOAP::SOAPString[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "languages")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::LocalBusinessAd,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "LocalBusinessAd",
    :schema_qualified => false,
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["adType", "SOAP::SOAPString", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["address", "SOAP::SOAPString"],
      ["businessImage", "AdWords::AdService::Image", [0, 1]],
      ["businessKey", "SOAP::SOAPString", [0, 1]],
      ["businessName", "SOAP::SOAPString"],
      ["city", "SOAP::SOAPString"],
      ["countryCode", "SOAP::SOAPString"],
      ["customIcon", "AdWords::AdService::Image", [0, 1]],
      ["customIconId", "SOAP::SOAPLong", [0, 1]],
      ["description1", "SOAP::SOAPString"],
      ["description2", "SOAP::SOAPString"],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["postalCode", "SOAP::SOAPString", [0, 1]],
      ["region", "SOAP::SOAPString", [0, 1]],
      ["stockIcon", "SOAP::SOAPString", [0, 1]],
      ["targetRadiusInKm", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::MetroTargets,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "MetroTargets",
    :schema_element => [
      ["metros", ["SOAP::SOAPString[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "metros")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::MobileAd,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "MobileAd",
    :schema_qualified => false,
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["adType", "SOAP::SOAPString", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "SOAP::SOAPString", [0, 1]],
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
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "ProximityTargets",
    :schema_element => [
      ["circles", ["AdWords::AdService::Circle[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "circles")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::RegionTargets,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "RegionTargets",
    :schema_element => [
      ["regions", ["SOAP::SOAPString[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "regions")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::StatsRecord,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "StatsRecord",
    :schema_qualified => false,
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
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "TextAd",
    :schema_qualified => false,
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["adType", "SOAP::SOAPString", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["description1", "SOAP::SOAPString"],
      ["description2", "SOAP::SOAPString"],
      ["headline", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::Video,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "Video",
    :schema_qualified => false,
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
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "VideoAd",
    :schema_qualified => false,
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["adType", "SOAP::SOAPString", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["image", "AdWords::AdService::Image"],
      ["name", "SOAP::SOAPString"],
      ["video", "AdWords::AdService::Video"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::AdStatus,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "AdStatus"
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::AdType,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "AdType"
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::ImageType,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "ImageType"
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::StockIcon,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "StockIcon"
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::AddAds,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "addAds",
    :schema_element => [
      ["ads", ["AdWords::AdService::Ad[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "ads")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::AddAdsResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "addAdsResponse",
    :schema_element => [
      ["addAdsReturn", ["AdWords::AdService::Ad[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "addAdsReturn")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::CheckAds,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "checkAds",
    :schema_qualified => true,
    :schema_element => [
      ["ads", "AdWords::AdService::Ad[]", [1, nil]],
      ["languageTarget", "AdWords::AdService::LanguageTarget"],
      ["geoTarget", "AdWords::AdService::GeoTarget"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::CheckAdsResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "checkAdsResponse",
    :schema_element => [
      ["checkAdsReturn", ["AdWords::AdService::ApiError[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "checkAdsReturn")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::ApiException,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "fault",
    :schema_qualified => true,
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
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "findBusinesses",
    :schema_qualified => true,
    :schema_element => [
      ["name", "SOAP::SOAPString"],
      ["address", "SOAP::SOAPString"],
      ["countryCode", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::FindBusinessesResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "findBusinessesResponse",
    :schema_element => [
      ["findBusinessesReturn", ["AdWords::AdService::Business[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "findBusinessesReturn")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::GetActiveAds,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getActiveAds",
    :schema_element => [
      ["adGroupIds", ["SOAP::SOAPInt[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "adGroupIds")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::GetActiveAdsResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getActiveAdsResponse",
    :schema_element => [
      ["getActiveAdsReturn", ["AdWords::AdService::Ad[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "getActiveAdsReturn")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::GetAd,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getAd",
    :schema_qualified => true,
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["adId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::GetAdResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getAdResponse",
    :schema_qualified => true,
    :schema_element => [
      ["getAdReturn", "AdWords::AdService::Ad"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::GetAdStats,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getAdStats",
    :schema_qualified => true,
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"],
      ["adIds", "SOAP::SOAPLong[]", [1, nil]],
      ["startDay", "SOAP::SOAPDate"],
      ["endDay", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::GetAdStatsResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getAdStatsResponse",
    :schema_element => [
      ["getAdStatsReturn", ["AdWords::AdService::StatsRecord[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "getAdStatsReturn")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::GetAllAds,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getAllAds",
    :schema_element => [
      ["adGroupIds", ["SOAP::SOAPInt[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "adGroupIds")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::GetAllAdsResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getAllAdsResponse",
    :schema_element => [
      ["getAllAdsReturn", ["AdWords::AdService::Ad[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "getAllAdsReturn")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::GetMyBusinesses,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getMyBusinesses",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::GetMyBusinessesResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getMyBusinessesResponse",
    :schema_element => [
      ["getMyBusinessesReturn", ["AdWords::AdService::Business[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "getMyBusinessesReturn")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::GetMyVideos,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getMyVideos",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::GetMyVideosResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getMyVideosResponse",
    :schema_element => [
      ["getMyVideosReturn", ["AdWords::AdService::Video[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "getMyVideosReturn")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::UpdateAds,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "updateAds",
    :schema_element => [
      ["ads", ["AdWords::AdService::Ad[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "ads")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdService::UpdateAdsResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "updateAdsResponse",
    :schema_qualified => true,
    :schema_element => []
  )
end

end; end
