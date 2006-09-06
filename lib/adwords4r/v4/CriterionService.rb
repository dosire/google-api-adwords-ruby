module AdWords
require 'xsd/qname'

# {https://adwords.google.com/api/adwords/v4}getAllCriteria
class GetAllCriteria
  @@schema_type = "getAllCriteria"
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

# {https://adwords.google.com/api/adwords/v4}getAllCriteriaResponse
class GetAllCriteriaResponse < ::Array
  @@schema_element = [
    ["getAllCriteriaReturn", ["Criterion[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "getAllCriteriaReturn")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}getCriteria
class GetCriteria
  @@schema_type = "getCriteria"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["adGroupId", "SOAP::SOAPInt"],
    ["criterionIds", "SOAP::SOAPLong[]"]
  ]

  attr_accessor :adGroupId
  attr_accessor :criterionIds

  def initialize(adGroupId = nil, criterionIds = [])
    @adGroupId = adGroupId
    @criterionIds = criterionIds
  end
end

# {https://adwords.google.com/api/adwords/v4}getCriteriaResponse
class GetCriteriaResponse < ::Array
  @@schema_element = [
    ["getCriteriaReturn", ["Criterion[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "getCriteriaReturn")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}updateCriteria
class UpdateCriteria < ::Array
  @@schema_element = [
    ["Criteria", ["Criterion[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "Criteria")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}updateCriteriaResponse
class UpdateCriteriaResponse
  @@schema_type = "updateCriteriaResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}addCriteria
class AddCriteria < ::Array
  @@schema_element = [
    ["newCriteria", ["Criterion[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "newCriteria")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}addCriteriaResponse
class AddCriteriaResponse < ::Array
  @@schema_element = [
    ["addCriteriaReturn", ["Criterion[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "addCriteriaReturn")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}removeCriteria
class RemoveCriteria
  @@schema_type = "removeCriteria"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["adGroupId", "SOAP::SOAPInt"],
    ["criterionIds", "SOAP::SOAPLong[]"]
  ]

  attr_accessor :adGroupId
  attr_accessor :criterionIds

  def initialize(adGroupId = nil, criterionIds = [])
    @adGroupId = adGroupId
    @criterionIds = criterionIds
  end
end

# {https://adwords.google.com/api/adwords/v4}removeCriteriaResponse
class RemoveCriteriaResponse
  @@schema_type = "removeCriteriaResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}getCriterionStats
class GetCriterionStats
  @@schema_type = "getCriterionStats"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["adGroupId", "SOAP::SOAPInt"],
    ["criterionIds", "SOAP::SOAPLong[]"],
    ["startDay", "SOAP::SOAPDate"],
    ["endDay", "SOAP::SOAPDate"],
    ["inPST", "SOAP::SOAPBoolean"]
  ]

  attr_accessor :adGroupId
  attr_accessor :criterionIds
  attr_accessor :startDay
  attr_accessor :endDay
  attr_accessor :inPST

  def initialize(adGroupId = nil, criterionIds = [], startDay = nil, endDay = nil, inPST = nil)
    @adGroupId = adGroupId
    @criterionIds = criterionIds
    @startDay = startDay
    @endDay = endDay
    @inPST = inPST
  end
end

# {https://adwords.google.com/api/adwords/v4}getCriterionStatsResponse
class GetCriterionStatsResponse < ::Array
  @@schema_element = [
    ["getCriterionStatsReturn", ["StatsRecord[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "getCriterionStatsReturn")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}getCampaignNegativeCriteria
class GetCampaignNegativeCriteria
  @@schema_type = "getCampaignNegativeCriteria"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["campaignId", "SOAP::SOAPInt"]
  ]

  attr_accessor :campaignId

  def initialize(campaignId = nil)
    @campaignId = campaignId
  end
end

# {https://adwords.google.com/api/adwords/v4}getCampaignNegativeCriteriaResponse
class GetCampaignNegativeCriteriaResponse < ::Array
  @@schema_element = [
    ["getCampaignNegativeCriteriaReturn", ["Criterion[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "getCampaignNegativeCriteriaReturn")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}setCampaignNegativeCriteria
class SetCampaignNegativeCriteria
  @@schema_type = "setCampaignNegativeCriteria"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["campaignId", "SOAP::SOAPInt"],
    ["criteria", "Criterion[]"]
  ]

  attr_accessor :campaignId
  attr_accessor :criteria

  def initialize(campaignId = nil, criteria = [])
    @campaignId = campaignId
    @criteria = criteria
  end
end

# {https://adwords.google.com/api/adwords/v4}setCampaignNegativeCriteriaResponse
class SetCampaignNegativeCriteriaResponse
  @@schema_type = "setCampaignNegativeCriteriaResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}Criterion
class Criterion
  @@schema_type = "Criterion"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["adGroupId", "SOAP::SOAPInt"],
    ["criterionType", "SOAP::SOAPString"],
    ["destinationUrl", "SOAP::SOAPString"],
    ["exemptionRequest", "SOAP::SOAPString"],
    ["id", "SOAP::SOAPLong"],
    ["language", "SOAP::SOAPString"],
    ["negative", "SOAP::SOAPBoolean"],
    ["status", "SOAP::SOAPString"]
  ]

  attr_accessor :adGroupId
  attr_accessor :criterionType
  attr_accessor :destinationUrl
  attr_accessor :exemptionRequest
  attr_accessor :id
  attr_accessor :language
  attr_accessor :negative
  attr_accessor :status

  def initialize(adGroupId = nil, criterionType = nil, destinationUrl = nil, exemptionRequest = nil, id = nil, language = nil, negative = nil, status = nil)
    @adGroupId = adGroupId
    @criterionType = criterionType
    @destinationUrl = destinationUrl
    @exemptionRequest = exemptionRequest
    @id = id
    @language = language
    @negative = negative
    @status = status
  end
end

# {https://adwords.google.com/api/adwords/v4}Keyword
class Keyword
  @@schema_type = "Keyword"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["adGroupId", "SOAP::SOAPInt"],
    ["criterionType", "SOAP::SOAPString"],
    ["destinationUrl", "SOAP::SOAPString"],
    ["exemptionRequest", "SOAP::SOAPString"],
    ["id", "SOAP::SOAPLong"],
    ["language", "SOAP::SOAPString"],
    ["negative", "SOAP::SOAPBoolean"],
    ["status", "SOAP::SOAPString"],
    ["maxCpc", "SOAP::SOAPLong"],
    ["minCpc", "SOAP::SOAPLong"],
    ["text", "SOAP::SOAPString"],
    ["type", "SOAP::SOAPString"]
  ]

  attr_accessor :adGroupId
  attr_accessor :criterionType
  attr_accessor :destinationUrl
  attr_accessor :exemptionRequest
  attr_accessor :id
  attr_accessor :language
  attr_accessor :negative
  attr_accessor :status
  attr_accessor :maxCpc
  attr_accessor :minCpc
  attr_accessor :text
  attr_accessor :type

  def initialize(adGroupId = nil, criterionType = nil, destinationUrl = nil, exemptionRequest = nil, id = nil, language = nil, negative = nil, status = nil, maxCpc = nil, minCpc = nil, text = nil, type = nil)
    @adGroupId = adGroupId
    @criterionType = criterionType
    @destinationUrl = destinationUrl
    @exemptionRequest = exemptionRequest
    @id = id
    @language = language
    @negative = negative
    @status = status
    @maxCpc = maxCpc
    @minCpc = minCpc
    @text = text
    @type = type
  end
end

# {https://adwords.google.com/api/adwords/v4}Website
class Website
  @@schema_type = "Website"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["adGroupId", "SOAP::SOAPInt"],
    ["criterionType", "SOAP::SOAPString"],
    ["destinationUrl", "SOAP::SOAPString"],
    ["exemptionRequest", "SOAP::SOAPString"],
    ["id", "SOAP::SOAPLong"],
    ["language", "SOAP::SOAPString"],
    ["negative", "SOAP::SOAPBoolean"],
    ["status", "SOAP::SOAPString"],
    ["maxCpm", "SOAP::SOAPLong"],
    ["url", "SOAP::SOAPString"]
  ]

  attr_accessor :adGroupId
  attr_accessor :criterionType
  attr_accessor :destinationUrl
  attr_accessor :exemptionRequest
  attr_accessor :id
  attr_accessor :language
  attr_accessor :negative
  attr_accessor :status
  attr_accessor :maxCpm
  attr_accessor :url

  def initialize(adGroupId = nil, criterionType = nil, destinationUrl = nil, exemptionRequest = nil, id = nil, language = nil, negative = nil, status = nil, maxCpm = nil, url = nil)
    @adGroupId = adGroupId
    @criterionType = criterionType
    @destinationUrl = destinationUrl
    @exemptionRequest = exemptionRequest
    @id = id
    @language = language
    @negative = negative
    @status = status
    @maxCpm = maxCpm
    @url = url
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
