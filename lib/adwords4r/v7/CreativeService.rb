module AdWords
require 'xsd/qname'

# {https://adwords.google.com/api/adwords/v7}getAllCreatives
class GetAllCreatives
  @@schema_type = "getAllCreatives"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["adGroupId", "SOAP::SOAPInt"]]

  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adwords.google.com/api/adwords/v7}getAllCreativesResponse
class GetAllCreativesResponse
  @@schema_type = "getAllCreativesResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["getAllCreativesReturn", "Creative[]"]]

  attr_accessor :getAllCreativesReturn

  def initialize(getAllCreativesReturn = [])
    @getAllCreativesReturn = getAllCreativesReturn
  end
end

# {https://adwords.google.com/api/adwords/v7}getActiveCreatives
class GetActiveCreatives
  @@schema_type = "getActiveCreatives"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["adGroupId", "SOAP::SOAPInt"]]

  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adwords.google.com/api/adwords/v7}getActiveCreativesResponse
class GetActiveCreativesResponse
  @@schema_type = "getActiveCreativesResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["getActiveCreativesReturn", "Creative[]"]]

  attr_accessor :getActiveCreativesReturn

  def initialize(getActiveCreativesReturn = [])
    @getActiveCreativesReturn = getActiveCreativesReturn
  end
end

# {https://adwords.google.com/api/adwords/v7}getCreative
class GetCreative
  @@schema_type = "getCreative"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["adGroupId", "SOAP::SOAPInt"], ["creativeId", "SOAP::SOAPInt"]]

  attr_accessor :adGroupId
  attr_accessor :creativeId

  def initialize(adGroupId = nil, creativeId = nil)
    @adGroupId = adGroupId
    @creativeId = creativeId
  end
end

# {https://adwords.google.com/api/adwords/v7}getCreativeResponse
class GetCreativeResponse
  @@schema_type = "getCreativeResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["getCreativeReturn", "Creative"]]

  attr_accessor :getCreativeReturn

  def initialize(getCreativeReturn = nil)
    @getCreativeReturn = getCreativeReturn
  end
end

# {https://adwords.google.com/api/adwords/v7}addCreative
class AddCreative
  @@schema_type = "addCreative"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["creative", "Creative"]]

  attr_accessor :creative

  def initialize(creative = nil)
    @creative = creative
  end
end

# {https://adwords.google.com/api/adwords/v7}addCreativeResponse
class AddCreativeResponse
  @@schema_type = "addCreativeResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["addCreativeReturn", "Creative"]]

  attr_accessor :addCreativeReturn

  def initialize(addCreativeReturn = nil)
    @addCreativeReturn = addCreativeReturn
  end
end

# {https://adwords.google.com/api/adwords/v7}addCreativeList
class AddCreativeList
  @@schema_type = "addCreativeList"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["creatives", "Creative[]"]]

  attr_accessor :creatives

  def initialize(creatives = [])
    @creatives = creatives
  end
end

# {https://adwords.google.com/api/adwords/v7}addCreativeListResponse
class AddCreativeListResponse
  @@schema_type = "addCreativeListResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["addCreativeListReturn", "Creative[]"]]

  attr_accessor :addCreativeListReturn

  def initialize(addCreativeListReturn = [])
    @addCreativeListReturn = addCreativeListReturn
  end
end

# {https://adwords.google.com/api/adwords/v7}getCreativeStats
class GetCreativeStats
  @@schema_type = "getCreativeStats"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["adGroupId", "SOAP::SOAPInt"], ["creativeIds", "SOAP::SOAPInt[]"], ["startDay", "SOAP::SOAPDate"], ["endDay", "SOAP::SOAPDate"], ["inPST", "SOAP::SOAPBoolean"]]

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

# {https://adwords.google.com/api/adwords/v7}getCreativeStatsResponse
class GetCreativeStatsResponse
  @@schema_type = "getCreativeStatsResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["getCreativeStatsReturn", "StatsRecord[]"]]

  attr_accessor :getCreativeStatsReturn

  def initialize(getCreativeStatsReturn = [])
    @getCreativeStatsReturn = getCreativeStatsReturn
  end
end

# {https://adwords.google.com/api/adwords/v7}updateCreatives
class UpdateCreatives
  @@schema_type = "updateCreatives"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["creative", "Creative[]"]]

  attr_accessor :creative

  def initialize(creative = [])
    @creative = creative
  end
end

# {https://adwords.google.com/api/adwords/v7}updateCreativesResponse
class UpdateCreativesResponse
  @@schema_type = "updateCreativesResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v7}Image
class Image
  @@schema_type = "Image"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
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

# {https://adwords.google.com/api/adwords/v7}Creative
class Creative
  @@schema_type = "Creative"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
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

# {https://adwords.google.com/api/adwords/v7}ApiException
class ApiException
  @@schema_type = "ApiException"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = [["code", "SOAP::SOAPInt"], ["internal", "SOAP::SOAPBoolean"], ["message", "SOAP::SOAPString"], ["trigger", "SOAP::SOAPString"], ["errors", "ApiError[]"]]

  attr_accessor :code
  attr_accessor :internal
  attr_accessor :message
  attr_accessor :trigger
  attr_accessor :errors

  def initialize(code = nil, internal = nil, message = nil, trigger = nil, errors = [])
    @code = code
    @internal = internal
    @message = message
    @trigger = trigger
    @errors = errors
  end
end

# {https://adwords.google.com/api/adwords/v7}ApiError
class ApiError
  @@schema_type = "ApiError"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = [["index", "SOAP::SOAPInt"], ["field", "SOAP::SOAPString"], ["textIndex", "SOAP::SOAPInt"], ["textLength", "SOAP::SOAPInt"], ["trigger", "SOAP::SOAPString"], ["code", "SOAP::SOAPInt"], ["isExemptable", "SOAP::SOAPBoolean"], ["detail", "SOAP::SOAPString"]]

  attr_accessor :index
  attr_accessor :field
  attr_accessor :textIndex
  attr_accessor :textLength
  attr_accessor :trigger
  attr_accessor :code
  attr_accessor :isExemptable
  attr_accessor :detail

  def initialize(index = nil, field = nil, textIndex = nil, textLength = nil, trigger = nil, code = nil, isExemptable = nil, detail = nil)
    @index = index
    @field = field
    @textIndex = textIndex
    @textLength = textLength
    @trigger = trigger
    @code = code
    @isExemptable = isExemptable
    @detail = detail
  end
end

# {https://adwords.google.com/api/adwords/v7}StatsRecord
class StatsRecord
  @@schema_type = "StatsRecord"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
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

# {https://adwords.google.com/api/adwords/v7}ImageType
module ImageType
  DynamicImage = "dynamicImage"
  Flash = "flash"
  Image = "image"
end

# {https://adwords.google.com/api/adwords/v7}AdStatus
module AdStatus
  Disabled = "Disabled"
  Enabled = "Enabled"
  Paused = "Paused"
end
end
