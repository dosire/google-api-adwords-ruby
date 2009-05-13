require 'adwords4r/v13/AdService'
require 'soap/mapping'

module AdWords; module V13; module AdService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV13 = "https://adwords.google.com/api/adwords/v13"

  EncodedRegistry.register(
    :class => AdWords::V13::AdService::ApiError,
    :schema_type => XSD::QName.new(NsV13, "ApiError"),
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
    :class => AdWords::V13::AdService::ApiException,
    :schema_type => XSD::QName.new(NsV13, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::V13::AdService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::AdService::Business,
    :schema_type => XSD::QName.new(NsV13, "Business"),
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
    :class => AdWords::V13::AdService::Circle,
    :schema_type => XSD::QName.new(NsV13, "Circle"),
    :schema_element => [
      ["latitudeMicroDegrees", "SOAP::SOAPInt"],
      ["longitudeMicroDegrees", "SOAP::SOAPInt"],
      ["radiusMeters", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::AdService::CityTargets,
    :schema_type => XSD::QName.new(NsV13, "CityTargets"),
    :schema_element => [
      ["cities", "SOAP::SOAPString[]", [0, nil]],
      ["excludedCities", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::AdService::CommerceAd,
    :schema_type => XSD::QName.new(NsV13, "CommerceAd"),
    :schema_basetype => XSD::QName.new(NsV13, "Ad"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong"],
      ["adType", "AdWords::V13::AdService::AdType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "AdWords::V13::AdService::AdStatus", [0, 1]],
      ["description1", "SOAP::SOAPString"],
      ["description2", "SOAP::SOAPString"],
      ["headline", "SOAP::SOAPString"],
      ["postPriceAnnotation", "SOAP::SOAPString", [0, 1]],
      ["prePriceAnnotation", "SOAP::SOAPString", [0, 1]],
      ["priceString", "SOAP::SOAPString"],
      ["productImage", "AdWords::V13::AdService::Image"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::AdService::CountryTargets,
    :schema_type => XSD::QName.new(NsV13, "CountryTargets"),
    :schema_element => [
      ["countries", "SOAP::SOAPString[]", [0, nil]],
      ["excludedCountries", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::AdService::GeoTarget,
    :schema_type => XSD::QName.new(NsV13, "GeoTarget"),
    :schema_element => [
      ["cityTargets", "AdWords::V13::AdService::CityTargets", [0, 1]],
      ["countryTargets", "AdWords::V13::AdService::CountryTargets", [0, 1]],
      ["metroTargets", "AdWords::V13::AdService::MetroTargets", [0, 1]],
      ["proximityTargets", "AdWords::V13::AdService::ProximityTargets", [0, 1]],
      ["regionTargets", "AdWords::V13::AdService::RegionTargets", [0, 1]],
      ["targetAll", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::AdService::Image,
    :schema_type => XSD::QName.new(NsV13, "Image"),
    :schema_element => [
      ["data", "SOAP::SOAPBase64", [0, 1]],
      ["height", "SOAP::SOAPInt", [0, 1]],
      ["imageUrl", "SOAP::SOAPString", [0, 1]],
      ["mimeType", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["shrunkenUrl", "SOAP::SOAPString", [0, 1]],
      ["thumbnailUrl", "SOAP::SOAPString", [0, 1]],
      ["type", "AdWords::V13::AdService::ImageType", [0, 1]],
      ["width", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::AdService::ImageAd,
    :schema_type => XSD::QName.new(NsV13, "ImageAd"),
    :schema_basetype => XSD::QName.new(NsV13, "Ad"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong"],
      ["adType", "AdWords::V13::AdService::AdType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "AdWords::V13::AdService::AdStatus", [0, 1]],
      ["image", "AdWords::V13::AdService::Image", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::AdService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV13, "LanguageTarget"),
    :schema_element => [
      ["languages", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::AdService::LocalBusinessAd,
    :schema_type => XSD::QName.new(NsV13, "LocalBusinessAd"),
    :schema_basetype => XSD::QName.new(NsV13, "Ad"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong"],
      ["adType", "AdWords::V13::AdService::AdType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "AdWords::V13::AdService::AdStatus", [0, 1]],
      ["address", "SOAP::SOAPString", [0, 1]],
      ["businessImage", "AdWords::V13::AdService::Image", [0, 1]],
      ["businessKey", "SOAP::SOAPString", [0, 1]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["city", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString"],
      ["customIcon", "AdWords::V13::AdService::Image", [0, 1]],
      ["customIconId", "SOAP::SOAPLong", [0, 1]],
      ["description1", "SOAP::SOAPString"],
      ["description2", "SOAP::SOAPString"],
      ["fullBusinessName", "SOAP::SOAPString", [0, 1]],
      ["latitude", "SOAP::SOAPInt", [0, 1]],
      ["longitude", "SOAP::SOAPInt", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["postalCode", "SOAP::SOAPString", [0, 1]],
      ["region", "SOAP::SOAPString", [0, 1]],
      ["stockIcon", "AdWords::V13::AdService::StockIcon", [0, 1]],
      ["targetRadiusInKm", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::AdService::MetroTargets,
    :schema_type => XSD::QName.new(NsV13, "MetroTargets"),
    :schema_element => [
      ["excludedMetros", "SOAP::SOAPString[]", [0, nil]],
      ["metros", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::AdService::MobileAd,
    :schema_type => XSD::QName.new(NsV13, "MobileAd"),
    :schema_basetype => XSD::QName.new(NsV13, "Ad"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong"],
      ["adType", "AdWords::V13::AdService::AdType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "AdWords::V13::AdService::AdStatus", [0, 1]],
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
    :class => AdWords::V13::AdService::MobileImageAd,
    :schema_type => XSD::QName.new(NsV13, "MobileImageAd"),
    :schema_basetype => XSD::QName.new(NsV13, "Ad"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong"],
      ["adType", "AdWords::V13::AdService::AdType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "AdWords::V13::AdService::AdStatus", [0, 1]],
      ["image", "AdWords::V13::AdService::Image"],
      ["markupLanguages", "SOAP::SOAPString[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::AdService::ProximityTargets,
    :schema_type => XSD::QName.new(NsV13, "ProximityTargets"),
    :schema_element => [
      ["circles", "AdWords::V13::AdService::Circle[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::AdService::RegionTargets,
    :schema_type => XSD::QName.new(NsV13, "RegionTargets"),
    :schema_element => [
      ["excludedRegions", "SOAP::SOAPString[]", [0, nil]],
      ["regions", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::AdService::StatsRecord,
    :schema_type => XSD::QName.new(NsV13, "StatsRecord"),
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
    :class => AdWords::V13::AdService::TextAd,
    :schema_type => XSD::QName.new(NsV13, "TextAd"),
    :schema_basetype => XSD::QName.new(NsV13, "Ad"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong"],
      ["adType", "AdWords::V13::AdService::AdType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "AdWords::V13::AdService::AdStatus", [0, 1]],
      ["description1", "SOAP::SOAPString"],
      ["description2", "SOAP::SOAPString"],
      ["headline", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::AdService::Video,
    :schema_type => XSD::QName.new(NsV13, "Video"),
    :schema_element => [
      ["duration", "SOAP::SOAPLong", [0, 1]],
      ["filename", "SOAP::SOAPString", [0, 1]],
      ["preview", "SOAP::SOAPString", [0, 1]],
      ["title", "SOAP::SOAPString", [0, 1]],
      ["videoId", "SOAP::SOAPLong"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::AdService::VideoAd,
    :schema_type => XSD::QName.new(NsV13, "VideoAd"),
    :schema_basetype => XSD::QName.new(NsV13, "Ad"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong"],
      ["adType", "AdWords::V13::AdService::AdType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "AdWords::V13::AdService::AdStatus", [0, 1]],
      ["image", "AdWords::V13::AdService::Image"],
      ["name", "SOAP::SOAPString"],
      ["video", "AdWords::V13::AdService::Video"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::V13::AdService::AdStatus,
    :schema_type => XSD::QName.new(NsV13, "AdStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::V13::AdService::AdType,
    :schema_type => XSD::QName.new(NsV13, "AdType")
  )

  EncodedRegistry.register(
    :class => AdWords::V13::AdService::ImageType,
    :schema_type => XSD::QName.new(NsV13, "ImageType")
  )

  EncodedRegistry.register(
    :class => AdWords::V13::AdService::StockIcon,
    :schema_type => XSD::QName.new(NsV13, "StockIcon")
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::ApiError,
    :schema_type => XSD::QName.new(NsV13, "ApiError"),
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
    :class => AdWords::V13::AdService::ApiException,
    :schema_type => XSD::QName.new(NsV13, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::V13::AdService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::Business,
    :schema_type => XSD::QName.new(NsV13, "Business"),
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
    :class => AdWords::V13::AdService::Circle,
    :schema_type => XSD::QName.new(NsV13, "Circle"),
    :schema_element => [
      ["latitudeMicroDegrees", "SOAP::SOAPInt"],
      ["longitudeMicroDegrees", "SOAP::SOAPInt"],
      ["radiusMeters", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::CityTargets,
    :schema_type => XSD::QName.new(NsV13, "CityTargets"),
    :schema_element => [
      ["cities", "SOAP::SOAPString[]", [0, nil]],
      ["excludedCities", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::CommerceAd,
    :schema_type => XSD::QName.new(NsV13, "CommerceAd"),
    :schema_basetype => XSD::QName.new(NsV13, "Ad"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong"],
      ["adType", "AdWords::V13::AdService::AdType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "AdWords::V13::AdService::AdStatus", [0, 1]],
      ["description1", "SOAP::SOAPString"],
      ["description2", "SOAP::SOAPString"],
      ["headline", "SOAP::SOAPString"],
      ["postPriceAnnotation", "SOAP::SOAPString", [0, 1]],
      ["prePriceAnnotation", "SOAP::SOAPString", [0, 1]],
      ["priceString", "SOAP::SOAPString"],
      ["productImage", "AdWords::V13::AdService::Image"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::CountryTargets,
    :schema_type => XSD::QName.new(NsV13, "CountryTargets"),
    :schema_element => [
      ["countries", "SOAP::SOAPString[]", [0, nil]],
      ["excludedCountries", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::GeoTarget,
    :schema_type => XSD::QName.new(NsV13, "GeoTarget"),
    :schema_element => [
      ["cityTargets", "AdWords::V13::AdService::CityTargets", [0, 1]],
      ["countryTargets", "AdWords::V13::AdService::CountryTargets", [0, 1]],
      ["metroTargets", "AdWords::V13::AdService::MetroTargets", [0, 1]],
      ["proximityTargets", "AdWords::V13::AdService::ProximityTargets", [0, 1]],
      ["regionTargets", "AdWords::V13::AdService::RegionTargets", [0, 1]],
      ["targetAll", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::Image,
    :schema_type => XSD::QName.new(NsV13, "Image"),
    :schema_element => [
      ["data", "SOAP::SOAPBase64", [0, 1]],
      ["height", "SOAP::SOAPInt", [0, 1]],
      ["imageUrl", "SOAP::SOAPString", [0, 1]],
      ["mimeType", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["shrunkenUrl", "SOAP::SOAPString", [0, 1]],
      ["thumbnailUrl", "SOAP::SOAPString", [0, 1]],
      ["type", "AdWords::V13::AdService::ImageType", [0, 1]],
      ["width", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::ImageAd,
    :schema_type => XSD::QName.new(NsV13, "ImageAd"),
    :schema_basetype => XSD::QName.new(NsV13, "Ad"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong"],
      ["adType", "AdWords::V13::AdService::AdType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "AdWords::V13::AdService::AdStatus", [0, 1]],
      ["image", "AdWords::V13::AdService::Image", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV13, "LanguageTarget"),
    :schema_element => [
      ["languages", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::LocalBusinessAd,
    :schema_type => XSD::QName.new(NsV13, "LocalBusinessAd"),
    :schema_basetype => XSD::QName.new(NsV13, "Ad"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong"],
      ["adType", "AdWords::V13::AdService::AdType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "AdWords::V13::AdService::AdStatus", [0, 1]],
      ["address", "SOAP::SOAPString", [0, 1]],
      ["businessImage", "AdWords::V13::AdService::Image", [0, 1]],
      ["businessKey", "SOAP::SOAPString", [0, 1]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["city", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString"],
      ["customIcon", "AdWords::V13::AdService::Image", [0, 1]],
      ["customIconId", "SOAP::SOAPLong", [0, 1]],
      ["description1", "SOAP::SOAPString"],
      ["description2", "SOAP::SOAPString"],
      ["fullBusinessName", "SOAP::SOAPString", [0, 1]],
      ["latitude", "SOAP::SOAPInt", [0, 1]],
      ["longitude", "SOAP::SOAPInt", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["postalCode", "SOAP::SOAPString", [0, 1]],
      ["region", "SOAP::SOAPString", [0, 1]],
      ["stockIcon", "AdWords::V13::AdService::StockIcon", [0, 1]],
      ["targetRadiusInKm", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::MetroTargets,
    :schema_type => XSD::QName.new(NsV13, "MetroTargets"),
    :schema_element => [
      ["excludedMetros", "SOAP::SOAPString[]", [0, nil]],
      ["metros", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::MobileAd,
    :schema_type => XSD::QName.new(NsV13, "MobileAd"),
    :schema_basetype => XSD::QName.new(NsV13, "Ad"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong"],
      ["adType", "AdWords::V13::AdService::AdType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "AdWords::V13::AdService::AdStatus", [0, 1]],
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
    :class => AdWords::V13::AdService::MobileImageAd,
    :schema_type => XSD::QName.new(NsV13, "MobileImageAd"),
    :schema_basetype => XSD::QName.new(NsV13, "Ad"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong"],
      ["adType", "AdWords::V13::AdService::AdType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "AdWords::V13::AdService::AdStatus", [0, 1]],
      ["image", "AdWords::V13::AdService::Image"],
      ["markupLanguages", "SOAP::SOAPString[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::ProximityTargets,
    :schema_type => XSD::QName.new(NsV13, "ProximityTargets"),
    :schema_element => [
      ["circles", "AdWords::V13::AdService::Circle[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::RegionTargets,
    :schema_type => XSD::QName.new(NsV13, "RegionTargets"),
    :schema_element => [
      ["excludedRegions", "SOAP::SOAPString[]", [0, nil]],
      ["regions", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::StatsRecord,
    :schema_type => XSD::QName.new(NsV13, "StatsRecord"),
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
    :class => AdWords::V13::AdService::TextAd,
    :schema_type => XSD::QName.new(NsV13, "TextAd"),
    :schema_basetype => XSD::QName.new(NsV13, "Ad"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong"],
      ["adType", "AdWords::V13::AdService::AdType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "AdWords::V13::AdService::AdStatus", [0, 1]],
      ["description1", "SOAP::SOAPString"],
      ["description2", "SOAP::SOAPString"],
      ["headline", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::Video,
    :schema_type => XSD::QName.new(NsV13, "Video"),
    :schema_element => [
      ["duration", "SOAP::SOAPLong", [0, 1]],
      ["filename", "SOAP::SOAPString", [0, 1]],
      ["preview", "SOAP::SOAPString", [0, 1]],
      ["title", "SOAP::SOAPString", [0, 1]],
      ["videoId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::VideoAd,
    :schema_type => XSD::QName.new(NsV13, "VideoAd"),
    :schema_basetype => XSD::QName.new(NsV13, "Ad"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong"],
      ["adType", "AdWords::V13::AdService::AdType", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["disapproved", "SOAP::SOAPBoolean"],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["exemptionRequest", "SOAP::SOAPString", [0, 1]],
      ["id", "SOAP::SOAPLong"],
      ["status", "AdWords::V13::AdService::AdStatus", [0, 1]],
      ["image", "AdWords::V13::AdService::Image"],
      ["name", "SOAP::SOAPString"],
      ["video", "AdWords::V13::AdService::Video"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::AdStatus,
    :schema_type => XSD::QName.new(NsV13, "AdStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::AdType,
    :schema_type => XSD::QName.new(NsV13, "AdType")
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::ImageType,
    :schema_type => XSD::QName.new(NsV13, "ImageType")
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::StockIcon,
    :schema_type => XSD::QName.new(NsV13, "StockIcon")
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::AddAds,
    :schema_name => XSD::QName.new(NsV13, "addAds"),
    :schema_element => [
      ["ads", "AdWords::V13::AdService::Ad[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::AddAdsResponse,
    :schema_name => XSD::QName.new(NsV13, "addAdsResponse"),
    :schema_element => [
      ["addAdsReturn", "AdWords::V13::AdService::Ad[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::CheckAds,
    :schema_name => XSD::QName.new(NsV13, "checkAds"),
    :schema_element => [
      ["ads", "AdWords::V13::AdService::Ad[]", [1, nil]],
      ["languageTarget", "AdWords::V13::AdService::LanguageTarget"],
      ["geoTarget", "AdWords::V13::AdService::GeoTarget"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::CheckAdsResponse,
    :schema_name => XSD::QName.new(NsV13, "checkAdsResponse"),
    :schema_element => [
      ["checkAdsReturn", "AdWords::V13::AdService::ApiError[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::ApiException,
    :schema_name => XSD::QName.new(NsV13, "fault"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::V13::AdService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::FindBusinesses,
    :schema_name => XSD::QName.new(NsV13, "findBusinesses"),
    :schema_element => [
      ["name", "SOAP::SOAPString"],
      ["address", "SOAP::SOAPString"],
      ["countryCode", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::FindBusinessesResponse,
    :schema_name => XSD::QName.new(NsV13, "findBusinessesResponse"),
    :schema_element => [
      ["findBusinessesReturn", "AdWords::V13::AdService::Business[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::GetActiveAds,
    :schema_name => XSD::QName.new(NsV13, "getActiveAds"),
    :schema_element => [
      ["adGroupIds", "SOAP::SOAPLong[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::GetActiveAdsResponse,
    :schema_name => XSD::QName.new(NsV13, "getActiveAdsResponse"),
    :schema_element => [
      ["getActiveAdsReturn", "AdWords::V13::AdService::Ad[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::GetAd,
    :schema_name => XSD::QName.new(NsV13, "getAd"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong"],
      ["adId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::GetAdResponse,
    :schema_name => XSD::QName.new(NsV13, "getAdResponse"),
    :schema_element => [
      ["getAdReturn", "AdWords::V13::AdService::Ad"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::GetAdStats,
    :schema_name => XSD::QName.new(NsV13, "getAdStats"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong"],
      ["adIds", "SOAP::SOAPLong[]", [1, nil]],
      ["startDay", "SOAP::SOAPDate"],
      ["endDay", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::GetAdStatsResponse,
    :schema_name => XSD::QName.new(NsV13, "getAdStatsResponse"),
    :schema_element => [
      ["getAdStatsReturn", "AdWords::V13::AdService::StatsRecord[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::GetAllAds,
    :schema_name => XSD::QName.new(NsV13, "getAllAds"),
    :schema_element => [
      ["adGroupIds", "SOAP::SOAPLong[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::GetAllAdsResponse,
    :schema_name => XSD::QName.new(NsV13, "getAllAdsResponse"),
    :schema_element => [
      ["getAllAdsReturn", "AdWords::V13::AdService::Ad[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::GetMyBusinesses,
    :schema_name => XSD::QName.new(NsV13, "getMyBusinesses"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::GetMyBusinessesResponse,
    :schema_name => XSD::QName.new(NsV13, "getMyBusinessesResponse"),
    :schema_element => [
      ["getMyBusinessesReturn", "AdWords::V13::AdService::Business[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::GetMyVideos,
    :schema_name => XSD::QName.new(NsV13, "getMyVideos"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::GetMyVideosResponse,
    :schema_name => XSD::QName.new(NsV13, "getMyVideosResponse"),
    :schema_element => [
      ["getMyVideosReturn", "AdWords::V13::AdService::Video[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::UpdateAds,
    :schema_name => XSD::QName.new(NsV13, "updateAds"),
    :schema_element => [
      ["ads", "AdWords::V13::AdService::Ad[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::V13::AdService::UpdateAdsResponse,
    :schema_name => XSD::QName.new(NsV13, "updateAdsResponse"),
    :schema_element => []
  )

end

end; end; end
