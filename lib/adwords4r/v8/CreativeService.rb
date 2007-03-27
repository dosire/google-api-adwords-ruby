module AdWords
require 'xsd/qname'

# {https://adwords.google.com/api/adwords/v8}addCreative
class AddCreative
  @@schema_type = "addCreative"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["creative", "Creative"]]

  attr_accessor :creative

  def initialize(creative = nil)
    @creative = creative
  end
end

# {https://adwords.google.com/api/adwords/v8}addCreativeList
class AddCreativeList
  @@schema_type = "addCreativeList"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["creatives", "Creative[]"]]

  attr_accessor :creatives

  def initialize(creatives = [])
    @creatives = creatives
  end
end

# {https://adwords.google.com/api/adwords/v8}addCreativeListResponse
class AddCreativeListResponse
  @@schema_type = "addCreativeListResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["addCreativeListReturn", "Creative[]"]]

  attr_accessor :addCreativeListReturn

  def initialize(addCreativeListReturn = [])
    @addCreativeListReturn = addCreativeListReturn
  end
end

# {https://adwords.google.com/api/adwords/v8}addCreativeResponse
class AddCreativeResponse
  @@schema_type = "addCreativeResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["addCreativeReturn", "Creative"]]

  attr_accessor :addCreativeReturn

  def initialize(addCreativeReturn = nil)
    @addCreativeReturn = addCreativeReturn
  end
end

# {https://adwords.google.com/api/adwords/v8}checkCreative
class CheckCreative
  @@schema_type = "checkCreative"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["creative", "Creative"], ["languageTarget", "LanguageTarget"], ["geoTarget", "GeoTarget"]]

  attr_accessor :creative
  attr_accessor :languageTarget
  attr_accessor :geoTarget

  def initialize(creative = nil, languageTarget = nil, geoTarget = nil)
    @creative = creative
    @languageTarget = languageTarget
    @geoTarget = geoTarget
  end
end

# {https://adwords.google.com/api/adwords/v8}checkCreativeList
class CheckCreativeList
  @@schema_type = "checkCreativeList"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["creatives", "Creative[]"], ["languageTarget", "LanguageTarget"], ["geoTarget", "GeoTarget"]]

  attr_accessor :creatives
  attr_accessor :languageTarget
  attr_accessor :geoTarget

  def initialize(creatives = [], languageTarget = nil, geoTarget = nil)
    @creatives = creatives
    @languageTarget = languageTarget
    @geoTarget = geoTarget
  end
end

# {https://adwords.google.com/api/adwords/v8}checkCreativeListResponse
class CheckCreativeListResponse
  @@schema_type = "checkCreativeListResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["checkCreativeListReturn", "ApiError[]"]]

  attr_accessor :checkCreativeListReturn

  def initialize(checkCreativeListReturn = [])
    @checkCreativeListReturn = checkCreativeListReturn
  end
end

# {https://adwords.google.com/api/adwords/v8}checkCreativeResponse
class CheckCreativeResponse
  @@schema_type = "checkCreativeResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["checkCreativeReturn", "ApiError[]"]]

  attr_accessor :checkCreativeReturn

  def initialize(checkCreativeReturn = [])
    @checkCreativeReturn = checkCreativeReturn
  end
end

# {https://adwords.google.com/api/adwords/v8}getActiveCreatives
class GetActiveCreatives
  @@schema_type = "getActiveCreatives"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["adGroupId", "SOAP::SOAPInt"]]

  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adwords.google.com/api/adwords/v8}getActiveCreativesResponse
class GetActiveCreativesResponse
  @@schema_type = "getActiveCreativesResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["getActiveCreativesReturn", "Creative[]"]]

  attr_accessor :getActiveCreativesReturn

  def initialize(getActiveCreativesReturn = [])
    @getActiveCreativesReturn = getActiveCreativesReturn
  end
end

# {https://adwords.google.com/api/adwords/v8}getAllCreatives
class GetAllCreatives
  @@schema_type = "getAllCreatives"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["adGroupId", "SOAP::SOAPInt"]]

  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adwords.google.com/api/adwords/v8}getAllCreativesResponse
class GetAllCreativesResponse
  @@schema_type = "getAllCreativesResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["getAllCreativesReturn", "Creative[]"]]

  attr_accessor :getAllCreativesReturn

  def initialize(getAllCreativesReturn = [])
    @getAllCreativesReturn = getAllCreativesReturn
  end
end

# {https://adwords.google.com/api/adwords/v8}getCreative
class GetCreative
  @@schema_type = "getCreative"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["adGroupId", "SOAP::SOAPInt"], ["creativeId", "SOAP::SOAPInt"]]

  attr_accessor :adGroupId
  attr_accessor :creativeId

  def initialize(adGroupId = nil, creativeId = nil)
    @adGroupId = adGroupId
    @creativeId = creativeId
  end
end

# {https://adwords.google.com/api/adwords/v8}getCreativeResponse
class GetCreativeResponse
  @@schema_type = "getCreativeResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["getCreativeReturn", "Creative"]]

  attr_accessor :getCreativeReturn

  def initialize(getCreativeReturn = nil)
    @getCreativeReturn = getCreativeReturn
  end
end

# {https://adwords.google.com/api/adwords/v8}getCreativeStats
class GetCreativeStats
  @@schema_type = "getCreativeStats"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["adGroupId", "SOAP::SOAPInt"], ["creativeIds", "SOAP::SOAPLong[]"], ["startDay", "SOAP::SOAPDate"], ["endDay", "SOAP::SOAPDate"], ["inPST", "SOAP::SOAPBoolean"]]

  attr_accessor :adGroupId
  attr_accessor :creativeIds
  attr_accessor :startDay
  attr_accessor :endDay
  attr_accessor :inPST

  def initialize(adGroupId = nil, creativeIds = [], startDay = nil, endDay = nil, inPST = nil)
    @adGroupId = adGroupId
    @creativeIds = creativeIds
    @startDay = startDay
    @endDay = endDay
    @inPST = inPST
  end
end

# {https://adwords.google.com/api/adwords/v8}getCreativeStatsResponse
class GetCreativeStatsResponse
  @@schema_type = "getCreativeStatsResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["getCreativeStatsReturn", "StatsRecord[]"]]

  attr_accessor :getCreativeStatsReturn

  def initialize(getCreativeStatsReturn = [])
    @getCreativeStatsReturn = getCreativeStatsReturn
  end
end

# {https://adwords.google.com/api/adwords/v8}updateCreatives
class UpdateCreatives
  @@schema_type = "updateCreatives"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["creatives", "Creative[]"]]

  attr_accessor :creatives

  def initialize(creatives = [])
    @creatives = creatives
  end
end

# {https://adwords.google.com/api/adwords/v8}updateCreativesResponse
class UpdateCreativesResponse
  @@schema_type = "updateCreativesResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v8}ApiError
class ApiError
  @@schema_type = "ApiError"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = [["code", "SOAP::SOAPInt"], ["detail", "SOAP::SOAPString"], ["field", "SOAP::SOAPString"], ["index", "SOAP::SOAPInt"], ["isExemptable", "SOAP::SOAPBoolean"], ["textIndex", "SOAP::SOAPInt"], ["textLength", "SOAP::SOAPInt"], ["trigger", "SOAP::SOAPString"]]

  attr_accessor :code
  attr_accessor :detail
  attr_accessor :field
  attr_accessor :index
  attr_accessor :isExemptable
  attr_accessor :textIndex
  attr_accessor :textLength
  attr_accessor :trigger

  def initialize(code = nil, detail = nil, field = nil, index = nil, isExemptable = nil, textIndex = nil, textLength = nil, trigger = nil)
    @code = code
    @detail = detail
    @field = field
    @index = index
    @isExemptable = isExemptable
    @textIndex = textIndex
    @textLength = textLength
    @trigger = trigger
  end
end

# {https://adwords.google.com/api/adwords/v8}ApiException
class ApiException
  @@schema_type = "ApiException"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = [["code", "SOAP::SOAPInt"], ["errors", "ApiError[]"], ["internal", "SOAP::SOAPBoolean"], ["message", "SOAP::SOAPString"], ["trigger", "SOAP::SOAPString"]]

  attr_accessor :code
  attr_accessor :errors
  attr_accessor :internal
  attr_accessor :message
  attr_accessor :trigger

  def initialize(code = nil, errors = [], internal = nil, message = nil, trigger = nil)
    @code = code
    @errors = errors
    @internal = internal
    @message = message
    @trigger = trigger
  end
end

# {https://adwords.google.com/api/adwords/v8}Creative
class Creative
  @@schema_type = "Creative"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = [["adGroupId", "SOAP::SOAPInt"], ["description1", "SOAP::SOAPString"], ["description2", "SOAP::SOAPString"], ["destinationUrl", "SOAP::SOAPString"], ["disapproved", "SOAP::SOAPBoolean"], ["displayUrl", "SOAP::SOAPString"], ["exemptionRequest", "SOAP::SOAPString"], ["headline", "SOAP::SOAPString"], ["id", "SOAP::SOAPInt"], ["image", "Image"], ["status", "SOAP::SOAPString"]]

  attr_accessor :adGroupId
  attr_accessor :description1
  attr_accessor :description2
  attr_accessor :destinationUrl
  attr_accessor :disapproved
  attr_accessor :displayUrl
  attr_accessor :exemptionRequest
  attr_accessor :headline
  attr_accessor :id
  attr_accessor :image
  attr_accessor :status

  def initialize(adGroupId = nil, description1 = nil, description2 = nil, destinationUrl = nil, disapproved = nil, displayUrl = nil, exemptionRequest = nil, headline = nil, id = nil, image = nil, status = nil)
    @adGroupId = adGroupId
    @description1 = description1
    @description2 = description2
    @destinationUrl = destinationUrl
    @disapproved = disapproved
    @displayUrl = displayUrl
    @exemptionRequest = exemptionRequest
    @headline = headline
    @id = id
    @image = image
    @status = status
  end
end

# {https://adwords.google.com/api/adwords/v8}GeoTarget
class GeoTarget
  @@schema_type = "GeoTarget"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = [["cities", "SOAP::SOAPString[]"], ["countries", "SOAP::SOAPString[]"], ["metros", "SOAP::SOAPString[]"], ["regions", "SOAP::SOAPString[]"]]

  attr_accessor :cities
  attr_accessor :countries
  attr_accessor :metros
  attr_accessor :regions

  def initialize(cities = [], countries = [], metros = [], regions = [])
    @cities = cities
    @countries = countries
    @metros = metros
    @regions = regions
  end
end

# {https://adwords.google.com/api/adwords/v8}Image
class Image
  @@schema_type = "Image"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = [["data", "SOAP::SOAPBase64"], ["height", "SOAP::SOAPInt"], ["imageUrl", "SOAP::SOAPString"], ["mimeType", "SOAP::SOAPString"], ["name", "SOAP::SOAPString"], ["thumbnailUrl", "SOAP::SOAPString"], ["type", "SOAP::SOAPString"], ["width", "SOAP::SOAPInt"]]

  attr_accessor :data
  attr_accessor :height
  attr_accessor :imageUrl
  attr_accessor :mimeType
  attr_accessor :name
  attr_accessor :thumbnailUrl
  attr_accessor :type
  attr_accessor :width

  def initialize(data = nil, height = nil, imageUrl = nil, mimeType = nil, name = nil, thumbnailUrl = nil, type = nil, width = nil)
    @data = data
    @height = height
    @imageUrl = imageUrl
    @mimeType = mimeType
    @name = name
    @thumbnailUrl = thumbnailUrl
    @type = type
    @width = width
  end
end

# {https://adwords.google.com/api/adwords/v8}LanguageTarget
class LanguageTarget < ::Array
  @@schema_type = "string"
  @@schema_ns = "http://www.w3.org/2001/XMLSchema"
  @@schema_element = [["languages", ["SOAP::SOAPString[]", XSD::QName.new("https://adwords.google.com/api/adwords/v8", "languages")]]]
end

# {https://adwords.google.com/api/adwords/v8}StatsRecord
class StatsRecord
  @@schema_type = "StatsRecord"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = [["averagePosition", "SOAP::SOAPDouble"], ["clicks", "SOAP::SOAPLong"], ["conversionRate", "SOAP::SOAPDouble"], ["conversions", "SOAP::SOAPLong"], ["cost", "SOAP::SOAPLong"], ["id", "SOAP::SOAPLong"], ["impressions", "SOAP::SOAPLong"]]

  attr_accessor :averagePosition
  attr_accessor :clicks
  attr_accessor :conversionRate
  attr_accessor :conversions
  attr_accessor :cost
  attr_accessor :id
  attr_accessor :impressions

  def initialize(averagePosition = nil, clicks = nil, conversionRate = nil, conversions = nil, cost = nil, id = nil, impressions = nil)
    @averagePosition = averagePosition
    @clicks = clicks
    @conversionRate = conversionRate
    @conversions = conversions
    @cost = cost
    @id = id
    @impressions = impressions
  end
end

# {https://adwords.google.com/api/adwords/v8}AdStatus
module AdStatus
  Disabled = "Disabled"
  Enabled = "Enabled"
  Paused = "Paused"
end

# {https://adwords.google.com/api/adwords/v8}ImageType
module ImageType
  DynamicImage = "dynamicImage"
  Flash = "flash"
  Image = "image"
end
end
