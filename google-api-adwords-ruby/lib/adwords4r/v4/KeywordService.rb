module AdWords
require 'xsd/qname'

# {https://adwords.google.com/api/adwords/v4}getAllKeywords
class GetAllKeywords
  @@schema_type = "getAllKeywords"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["adGroupId", "SOAP::SOAPInt"]
  ]

  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adwords.google.com/api/adwords/v4}getAllKeywordsResponse
class GetAllKeywordsResponse < ::Array
  @@schema_element = [
    ["getAllKeywordsReturn", ["Keyword[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "getAllKeywordsReturn")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}getKeywordList
class GetKeywordList
  @@schema_type = "getKeywordList"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["adGroupId", "SOAP::SOAPInt"],
    ["keywordIds", "SOAP::SOAPLong[]"]
  ]

  attr_accessor :adGroupId
  attr_accessor :keywordIds

  def initialize(adGroupId = nil, keywordIds = [])
    @adGroupId = adGroupId
    @keywordIds = keywordIds
  end
end

# {https://adwords.google.com/api/adwords/v4}getKeywordListResponse
class GetKeywordListResponse < ::Array
  @@schema_element = [
    ["getKeywordListReturn", ["Keyword[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "getKeywordListReturn")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}getActiveKeywords
class GetActiveKeywords
  @@schema_type = "getActiveKeywords"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["adGroupId", "SOAP::SOAPInt"]
  ]

  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adwords.google.com/api/adwords/v4}getActiveKeywordsResponse
class GetActiveKeywordsResponse < ::Array
  @@schema_element = [
    ["getActiveKeywordsReturn", ["Keyword[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "getActiveKeywordsReturn")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}setKeywordListMaxCpc
class SetKeywordListMaxCpc
  @@schema_type = "setKeywordListMaxCpc"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["adGroupId", "SOAP::SOAPInt"],
    ["keywordIds", "SOAP::SOAPLong[]"],
    ["maxCpcs", "SOAP::SOAPLong[]"]
  ]

  attr_accessor :adGroupId
  attr_accessor :keywordIds
  attr_accessor :maxCpcs

  def initialize(adGroupId = nil, keywordIds = [], maxCpcs = [])
    @adGroupId = adGroupId
    @keywordIds = keywordIds
    @maxCpcs = maxCpcs
  end
end

# {https://adwords.google.com/api/adwords/v4}setKeywordListMaxCpcResponse
class SetKeywordListMaxCpcResponse
  @@schema_type = "setKeywordListMaxCpcResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}setKeywordListSingleMaxCpc
class SetKeywordListSingleMaxCpc
  @@schema_type = "setKeywordListSingleMaxCpc"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["adGroupId", "SOAP::SOAPInt"],
    ["keywordIds", "SOAP::SOAPLong[]"],
    ["maxCpc", "SOAP::SOAPLong"]
  ]

  attr_accessor :adGroupId
  attr_accessor :keywordIds
  attr_accessor :maxCpc

  def initialize(adGroupId = nil, keywordIds = [], maxCpc = nil)
    @adGroupId = adGroupId
    @keywordIds = keywordIds
    @maxCpc = maxCpc
  end
end

# {https://adwords.google.com/api/adwords/v4}setKeywordListSingleMaxCpcResponse
class SetKeywordListSingleMaxCpcResponse
  @@schema_type = "setKeywordListSingleMaxCpcResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}updateKeyword
class UpdateKeyword
  @@schema_type = "updateKeyword"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["keyword", "Keyword"]
  ]

  attr_accessor :keyword

  def initialize(keyword = nil)
    @keyword = keyword
  end
end

# {https://adwords.google.com/api/adwords/v4}updateKeywordResponse
class UpdateKeywordResponse
  @@schema_type = "updateKeywordResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}updateKeywordList
class UpdateKeywordList < ::Array
  @@schema_element = [
    ["keywords", ["Keyword[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "keywords")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}updateKeywordListResponse
class UpdateKeywordListResponse
  @@schema_type = "updateKeywordListResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}addKeyword
class AddKeyword
  @@schema_type = "addKeyword"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["newKeyword", "Keyword"]
  ]

  attr_accessor :newKeyword

  def initialize(newKeyword = nil)
    @newKeyword = newKeyword
  end
end

# {https://adwords.google.com/api/adwords/v4}addKeywordResponse
class AddKeywordResponse
  @@schema_type = "addKeywordResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["addKeywordReturn", "Keyword"]
  ]

  attr_accessor :addKeywordReturn

  def initialize(addKeywordReturn = nil)
    @addKeywordReturn = addKeywordReturn
  end
end

# {https://adwords.google.com/api/adwords/v4}addKeywordList
class AddKeywordList
  @@schema_type = "addKeywordList"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["adGroupId", "SOAP::SOAPInt"],
    ["newKeywords", "Keyword[]"]
  ]

  attr_accessor :adGroupId
  attr_accessor :newKeywords

  def initialize(adGroupId = nil, newKeywords = [])
    @adGroupId = adGroupId
    @newKeywords = newKeywords
  end
end

# {https://adwords.google.com/api/adwords/v4}addKeywordListResponse
class AddKeywordListResponse < ::Array
  @@schema_element = [
    ["addKeywordListReturn", ["Keyword[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "addKeywordListReturn")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}removeKeywordList
class RemoveKeywordList
  @@schema_type = "removeKeywordList"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["adGroupId", "SOAP::SOAPInt"],
    ["keywordIds", "SOAP::SOAPLong[]"]
  ]

  attr_accessor :adGroupId
  attr_accessor :keywordIds

  def initialize(adGroupId = nil, keywordIds = [])
    @adGroupId = adGroupId
    @keywordIds = keywordIds
  end
end

# {https://adwords.google.com/api/adwords/v4}removeKeywordListResponse
class RemoveKeywordListResponse
  @@schema_type = "removeKeywordListResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}removeKeyword
class RemoveKeyword
  @@schema_type = "removeKeyword"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["adGroupId", "SOAP::SOAPInt"],
    ["keywordId", "SOAP::SOAPLong"]
  ]

  attr_accessor :adGroupId
  attr_accessor :keywordId

  def initialize(adGroupId = nil, keywordId = nil)
    @adGroupId = adGroupId
    @keywordId = keywordId
  end
end

# {https://adwords.google.com/api/adwords/v4}removeKeywordResponse
class RemoveKeywordResponse
  @@schema_type = "removeKeywordResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}getKeywordStats
class GetKeywordStats
  @@schema_type = "getKeywordStats"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["adGroupId", "SOAP::SOAPInt"],
    ["keywordIds", "SOAP::SOAPLong[]"],
    ["start", "SOAP::SOAPDateTime"],
    ["v_end", ["SOAP::SOAPDateTime", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "end")]]
  ]

  attr_accessor :adGroupId
  attr_accessor :keywordIds
  attr_accessor :start

  def end
    @v_end
  end

  def end=(value)
    @v_end = value
  end

  def initialize(adGroupId = nil, keywordIds = [], start = nil, v_end = nil)
    @adGroupId = adGroupId
    @keywordIds = keywordIds
    @start = start
    @v_end = v_end
  end
end

# {https://adwords.google.com/api/adwords/v4}getKeywordStatsResponse
class GetKeywordStatsResponse < ::Array
  @@schema_element = [
    ["getKeywordStatsReturn", ["StatsRecord[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "getKeywordStatsReturn")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}Criterion
class Criterion
  @@schema_type = "Criterion"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["id", "SOAP::SOAPLong"],
    ["adGroupId", "SOAP::SOAPInt"],
    ["exemptionRequest", "SOAP::SOAPString"],
    ["criterionType", "SOAP::SOAPString"],
    ["language", "SOAP::SOAPString"],
    ["status", "SOAP::SOAPString"],
    ["negative", "SOAP::SOAPBoolean"],
    ["destinationUrl", "SOAP::SOAPString"]
  ]

  attr_accessor :id
  attr_accessor :adGroupId
  attr_accessor :exemptionRequest
  attr_accessor :criterionType
  attr_accessor :language
  attr_accessor :status
  attr_accessor :negative
  attr_accessor :destinationUrl

  def initialize(id = nil, adGroupId = nil, exemptionRequest = nil, criterionType = nil, language = nil, status = nil, negative = nil, destinationUrl = nil)
    @id = id
    @adGroupId = adGroupId
    @exemptionRequest = exemptionRequest
    @criterionType = criterionType
    @language = language
    @status = status
    @negative = negative
    @destinationUrl = destinationUrl
  end
end

# {https://adwords.google.com/api/adwords/v4}Keyword
class Keyword
  @@schema_type = "Keyword"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["id", "SOAP::SOAPLong"],
    ["adGroupId", "SOAP::SOAPInt"],
    ["exemptionRequest", "SOAP::SOAPString"],
    ["criterionType", "SOAP::SOAPString"],
    ["language", "SOAP::SOAPString"],
    ["status", "SOAP::SOAPString"],
    ["negative", "SOAP::SOAPBoolean"],
    ["destinationUrl", "SOAP::SOAPString"],
    ["type", "SOAP::SOAPString"],
    ["minCpc", "SOAP::SOAPLong"],
    ["maxCpc", "SOAP::SOAPLong"],
    ["text", "SOAP::SOAPString"]
  ]

  attr_accessor :id
  attr_accessor :adGroupId
  attr_accessor :exemptionRequest
  attr_accessor :criterionType
  attr_accessor :language
  attr_accessor :status
  attr_accessor :negative
  attr_accessor :destinationUrl
  attr_accessor :type
  attr_accessor :minCpc
  attr_accessor :maxCpc
  attr_accessor :text

  def initialize(id = nil, adGroupId = nil, exemptionRequest = nil, criterionType = nil, language = nil, status = nil, negative = nil, destinationUrl = nil, type = nil, minCpc = nil, maxCpc = nil, text = nil)
    @id = id
    @adGroupId = adGroupId
    @exemptionRequest = exemptionRequest
    @criterionType = criterionType
    @language = language
    @status = status
    @negative = negative
    @destinationUrl = destinationUrl
    @type = type
    @minCpc = minCpc
    @maxCpc = maxCpc
    @text = text
  end
end

# {https://adwords.google.com/api/adwords/v4}ApiException
class ApiException
  @@schema_type = "ApiException"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["code", "SOAP::SOAPInt"],
    ["internal", "SOAP::SOAPBoolean"],
    ["message", "SOAP::SOAPString"],
    ["trigger", "SOAP::SOAPString"],
    ["violations", "SOAP::SOAPString"]
  ]

  attr_accessor :code
  attr_accessor :internal
  attr_accessor :message
  attr_accessor :trigger
  attr_accessor :violations

  def initialize(code = nil, internal = nil, message = nil, trigger = nil, violations = nil)
    @code = code
    @internal = internal
    @message = message
    @trigger = trigger
    @violations = violations
  end
end

# {https://adwords.google.com/api/adwords/v4}AdPolicyViolation
class AdPolicyViolation
  @@schema_type = "AdPolicyViolation"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["index", "SOAP::SOAPInt"],
    ["line", "SOAP::SOAPInt"],
    ["textIndex", "SOAP::SOAPInt"],
    ["textLength", "SOAP::SOAPInt"],
    ["trigger", "SOAP::SOAPString"],
    ["detail", "SOAP::SOAPString"],
    ["isExemptable", "SOAP::SOAPBoolean"]
  ]

  attr_accessor :index
  attr_accessor :line
  attr_accessor :textIndex
  attr_accessor :textLength
  attr_accessor :trigger
  attr_accessor :detail
  attr_accessor :isExemptable

  def initialize(index = nil, line = nil, textIndex = nil, textLength = nil, trigger = nil, detail = nil, isExemptable = nil)
    @index = index
    @line = line
    @textIndex = textIndex
    @textLength = textLength
    @trigger = trigger
    @detail = detail
    @isExemptable = isExemptable
  end
end

# {https://adwords.google.com/api/adwords/v4}StatsRecord
class StatsRecord
  @@schema_type = "StatsRecord"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["averagePosition", "SOAP::SOAPDouble"],
    ["clicks", "SOAP::SOAPLong"],
    ["conversionRate", "SOAP::SOAPDouble"],
    ["conversions", "SOAP::SOAPLong"],
    ["cost", "SOAP::SOAPLong"],
    ["id", "SOAP::SOAPLong"],
    ["impressions", "SOAP::SOAPLong"]
  ]

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

# {https://adwords.google.com/api/adwords/v4}CriterionStatus
class CriterionStatus < ::String
  @@schema_type = "CriterionStatus"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"

  Deleted = CriterionStatus.new("Deleted")
  Disabled = CriterionStatus.new("Disabled")
  Disapproved = CriterionStatus.new("Disapproved")
  InTrial = CriterionStatus.new("InTrial")
  Normal = CriterionStatus.new("Normal")
  OnHold = CriterionStatus.new("OnHold")
end

# {https://adwords.google.com/api/adwords/v4}KeywordType
class KeywordType < ::String
  @@schema_type = "KeywordType"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"

  Broad = KeywordType.new("Broad")
  Exact = KeywordType.new("Exact")
  Phrase = KeywordType.new("Phrase")
end
end
