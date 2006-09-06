module AdWords
require 'xsd/qname'

# {https://adwords.google.com/api/adwords/v5}getAllCreatives
class GetAllCreatives
  @@schema_type = "getAllCreatives"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["adGroupId", "SOAP::SOAPInt"]
  ]

  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adwords.google.com/api/adwords/v5}getAllCreativesResponse
class GetAllCreativesResponse < ::Array
  @@schema_element = [
    ["getAllCreativesReturn", ["Creative[]", XSD::QName.new("https://adwords.google.com/api/adwords/v5", "getAllCreativesReturn")]]
  ]
end

# {https://adwords.google.com/api/adwords/v5}getActiveCreatives
class GetActiveCreatives
  @@schema_type = "getActiveCreatives"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["adGroupId", "SOAP::SOAPInt"]
  ]

  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adwords.google.com/api/adwords/v5}getActiveCreativesResponse
class GetActiveCreativesResponse < ::Array
  @@schema_element = [
    ["getActiveCreativesReturn", ["Creative[]", XSD::QName.new("https://adwords.google.com/api/adwords/v5", "getActiveCreativesReturn")]]
  ]
end

# {https://adwords.google.com/api/adwords/v5}getCreative
class GetCreative
  @@schema_type = "getCreative"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["adGroupId", "SOAP::SOAPInt"],
    ["creativeId", "SOAP::SOAPInt"]
  ]

  attr_accessor :adGroupId
  attr_accessor :creativeId

  def initialize(adGroupId = nil, creativeId = nil)
    @adGroupId = adGroupId
    @creativeId = creativeId
  end
end

# {https://adwords.google.com/api/adwords/v5}getCreativeResponse
class GetCreativeResponse
  @@schema_type = "getCreativeResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getCreativeReturn", "Creative"]
  ]

  attr_accessor :getCreativeReturn

  def initialize(getCreativeReturn = nil)
    @getCreativeReturn = getCreativeReturn
  end
end

# {https://adwords.google.com/api/adwords/v5}addCreative
class AddCreative
  @@schema_type = "addCreative"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["creative", "Creative"]
  ]

  attr_accessor :creative

  def initialize(creative = nil)
    @creative = creative
  end
end

# {https://adwords.google.com/api/adwords/v5}addCreativeResponse
class AddCreativeResponse
  @@schema_type = "addCreativeResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["addCreativeReturn", "Creative"]
  ]

  attr_accessor :addCreativeReturn

  def initialize(addCreativeReturn = nil)
    @addCreativeReturn = addCreativeReturn
  end
end

# {https://adwords.google.com/api/adwords/v5}addCreativeList
class AddCreativeList < ::Array
  @@schema_element = [
    ["creatives", ["Creative[]", XSD::QName.new("https://adwords.google.com/api/adwords/v5", "creatives")]]
  ]
end

# {https://adwords.google.com/api/adwords/v5}addCreativeListResponse
class AddCreativeListResponse < ::Array
  @@schema_element = [
    ["addCreativeListReturn", ["Creative[]", XSD::QName.new("https://adwords.google.com/api/adwords/v5", "addCreativeListReturn")]]
  ]
end

# {https://adwords.google.com/api/adwords/v5}deleteCreative
class DeleteCreative
  @@schema_type = "deleteCreative"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["adGroupId", "SOAP::SOAPInt"],
    ["creativeId", "SOAP::SOAPInt"]
  ]

  attr_accessor :adGroupId
  attr_accessor :creativeId

  def initialize(adGroupId = nil, creativeId = nil)
    @adGroupId = adGroupId
    @creativeId = creativeId
  end
end

# {https://adwords.google.com/api/adwords/v5}deleteCreativeResponse
class DeleteCreativeResponse
  @@schema_type = "deleteCreativeResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v5}deleteCreativeList
class DeleteCreativeList
  @@schema_type = "deleteCreativeList"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["adGroupIds", "SOAP::SOAPInt[]"],
    ["creativeIds", "SOAP::SOAPInt[]"]
  ]

  attr_accessor :adGroupIds
  attr_accessor :creativeIds

  def initialize(adGroupIds = [], creativeIds = [])
    @adGroupIds = adGroupIds
    @creativeIds = creativeIds
  end
end

# {https://adwords.google.com/api/adwords/v5}deleteCreativeListResponse
class DeleteCreativeListResponse
  @@schema_type = "deleteCreativeListResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v5}activateCreative
class ActivateCreative
  @@schema_type = "activateCreative"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["adGroupId", "SOAP::SOAPInt"],
    ["creativeId", "SOAP::SOAPInt"]
  ]

  attr_accessor :adGroupId
  attr_accessor :creativeId

  def initialize(adGroupId = nil, creativeId = nil)
    @adGroupId = adGroupId
    @creativeId = creativeId
  end
end

# {https://adwords.google.com/api/adwords/v5}activateCreativeResponse
class ActivateCreativeResponse
  @@schema_type = "activateCreativeResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v5}activateCreativeList
class ActivateCreativeList
  @@schema_type = "activateCreativeList"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["adGroupIds", "SOAP::SOAPInt[]"],
    ["creativeIds", "SOAP::SOAPInt[]"]
  ]

  attr_accessor :adGroupIds
  attr_accessor :creativeIds

  def initialize(adGroupIds = [], creativeIds = [])
    @adGroupIds = adGroupIds
    @creativeIds = creativeIds
  end
end

# {https://adwords.google.com/api/adwords/v5}activateCreativeListResponse
class ActivateCreativeListResponse
  @@schema_type = "activateCreativeListResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v5}Image
class Image
  @@schema_type = "Image"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_element = [
    ["data", "SOAP::SOAPBase64"],
    ["height", "SOAP::SOAPInt"],
    ["imageUrl", "SOAP::SOAPString"],
    ["mimeType", "SOAP::SOAPString"],
    ["name", "SOAP::SOAPString"],
    ["thumbnailUrl", "SOAP::SOAPString"],
    ["type", "SOAP::SOAPString"],
    ["width", "SOAP::SOAPInt"]
  ]

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

# {https://adwords.google.com/api/adwords/v5}Creative
class Creative
  @@schema_type = "Creative"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_element = [
    ["adGroupId", "SOAP::SOAPInt"],
    ["deleted", "SOAP::SOAPBoolean"],
    ["description1", "SOAP::SOAPString"],
    ["description2", "SOAP::SOAPString"],
    ["destinationUrl", "SOAP::SOAPString"],
    ["disapproved", "SOAP::SOAPBoolean"],
    ["displayUrl", "SOAP::SOAPString"],
    ["exemptionRequest", "SOAP::SOAPString"],
    ["headline", "SOAP::SOAPString"],
    ["id", "SOAP::SOAPInt"],
    ["image", "Image"]
  ]

  attr_accessor :adGroupId
  attr_accessor :deleted
  attr_accessor :description1
  attr_accessor :description2
  attr_accessor :destinationUrl
  attr_accessor :disapproved
  attr_accessor :displayUrl
  attr_accessor :exemptionRequest
  attr_accessor :headline
  attr_accessor :id
  attr_accessor :image

  def initialize(adGroupId = nil, deleted = nil, description1 = nil, description2 = nil, destinationUrl = nil, disapproved = nil, displayUrl = nil, exemptionRequest = nil, headline = nil, id = nil, image = nil)
    @adGroupId = adGroupId
    @deleted = deleted
    @description1 = description1
    @description2 = description2
    @destinationUrl = destinationUrl
    @disapproved = disapproved
    @displayUrl = displayUrl
    @exemptionRequest = exemptionRequest
    @headline = headline
    @id = id
    @image = image
  end
end

# {https://adwords.google.com/api/adwords/v5}ApiException
class ApiException
  @@schema_type = "ApiException"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_element = [
    ["code", "SOAP::SOAPInt"],
    ["internal", "SOAP::SOAPBoolean"],
    ["message", "SOAP::SOAPString"],
    ["trigger", "SOAP::SOAPString"],
    ["errors", "ApiError[]"]
  ]

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

# {https://adwords.google.com/api/adwords/v5}ApiError
class ApiError
  @@schema_type = "ApiError"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_element = [
    ["index", "SOAP::SOAPInt"],
    ["field", "SOAP::SOAPString"],
    ["textIndex", "SOAP::SOAPInt"],
    ["textLength", "SOAP::SOAPInt"],
    ["trigger", "SOAP::SOAPString"],
    ["code", "SOAP::SOAPInt"],
    ["isExemptable", "SOAP::SOAPBoolean"],
    ["detail", "SOAP::SOAPString"]
  ]

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

# {https://adwords.google.com/api/adwords/v5}ImageType
class ImageType < ::String
  @@schema_type = "ImageType"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"

  DynamicImage = ImageType.new("dynamicImage")
  Flash = ImageType.new("flash")
  Image = ImageType.new("image")
end
end
