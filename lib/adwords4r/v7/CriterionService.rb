module AdWords
require 'xsd/qname'

# {https://adwords.google.com/api/adwords/v7}getAllCriteria
class GetAllCriteria
  @@schema_type = "getAllCriteria"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["adGroupId", "SOAP::SOAPInt"]]

  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adwords.google.com/api/adwords/v7}getAllCriteriaResponse
class GetAllCriteriaResponse
  @@schema_type = "getAllCriteriaResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["getAllCriteriaReturn", "Criterion[]"]]

  attr_accessor :getAllCriteriaReturn

  def initialize(getAllCriteriaReturn = [])
    @getAllCriteriaReturn = getAllCriteriaReturn
  end
end

# {https://adwords.google.com/api/adwords/v7}getCriteria
class GetCriteria
  @@schema_type = "getCriteria"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["adGroupId", "SOAP::SOAPInt"], ["criterionIds", "SOAP::SOAPLong[]"]]

  attr_accessor :adGroupId
  attr_accessor :criterionIds

  def initialize(adGroupId = nil, criterionIds = [])
    @adGroupId = adGroupId
    @criterionIds = criterionIds
  end
end

# {https://adwords.google.com/api/adwords/v7}getCriteriaResponse
class GetCriteriaResponse
  @@schema_type = "getCriteriaResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["getCriteriaReturn", "Criterion[]"]]

  attr_accessor :getCriteriaReturn

  def initialize(getCriteriaReturn = [])
    @getCriteriaReturn = getCriteriaReturn
  end
end

# {https://adwords.google.com/api/adwords/v7}updateCriteria
class UpdateCriteria
  @@schema_type = "updateCriteria"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["criteria", ["Criterion[]", XSD::QName.new("https://adwords.google.com/api/adwords/v7", "Criteria")]]]

  def Criteria
    @criteria
  end

  def Criteria=(value)
    @criteria = value
  end

  def initialize(criteria = [])
    @criteria = criteria
  end
end

# {https://adwords.google.com/api/adwords/v7}updateCriteriaResponse
class UpdateCriteriaResponse
  @@schema_type = "updateCriteriaResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v7}addCriteria
class AddCriteria
  @@schema_type = "addCriteria"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["newCriteria", "Criterion[]"]]

  attr_accessor :newCriteria

  def initialize(newCriteria = [])
    @newCriteria = newCriteria
  end
end

# {https://adwords.google.com/api/adwords/v7}addCriteriaResponse
class AddCriteriaResponse
  @@schema_type = "addCriteriaResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["addCriteriaReturn", "Criterion[]"]]

  attr_accessor :addCriteriaReturn

  def initialize(addCriteriaReturn = [])
    @addCriteriaReturn = addCriteriaReturn
  end
end

# {https://adwords.google.com/api/adwords/v7}removeCriteria
class RemoveCriteria
  @@schema_type = "removeCriteria"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["adGroupId", "SOAP::SOAPInt"], ["criterionIds", "SOAP::SOAPLong[]"]]

  attr_accessor :adGroupId
  attr_accessor :criterionIds

  def initialize(adGroupId = nil, criterionIds = [])
    @adGroupId = adGroupId
    @criterionIds = criterionIds
  end
end

# {https://adwords.google.com/api/adwords/v7}removeCriteriaResponse
class RemoveCriteriaResponse
  @@schema_type = "removeCriteriaResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v7}getCriterionStats
class GetCriterionStats
  @@schema_type = "getCriterionStats"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["adGroupId", "SOAP::SOAPInt"], ["criterionIds", "SOAP::SOAPLong[]"], ["startDay", "SOAP::SOAPDate"], ["endDay", "SOAP::SOAPDate"], ["inPST", "SOAP::SOAPBoolean"]]

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

# {https://adwords.google.com/api/adwords/v7}getCriterionStatsResponse
class GetCriterionStatsResponse
  @@schema_type = "getCriterionStatsResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["getCriterionStatsReturn", "StatsRecord[]"]]

  attr_accessor :getCriterionStatsReturn

  def initialize(getCriterionStatsReturn = [])
    @getCriterionStatsReturn = getCriterionStatsReturn
  end
end

# {https://adwords.google.com/api/adwords/v7}getCampaignNegativeCriteria
class GetCampaignNegativeCriteria
  @@schema_type = "getCampaignNegativeCriteria"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["campaignId", "SOAP::SOAPInt"]]

  attr_accessor :campaignId

  def initialize(campaignId = nil)
    @campaignId = campaignId
  end
end

# {https://adwords.google.com/api/adwords/v7}getCampaignNegativeCriteriaResponse
class GetCampaignNegativeCriteriaResponse
  @@schema_type = "getCampaignNegativeCriteriaResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["getCampaignNegativeCriteriaReturn", "Criterion[]"]]

  attr_accessor :getCampaignNegativeCriteriaReturn

  def initialize(getCampaignNegativeCriteriaReturn = [])
    @getCampaignNegativeCriteriaReturn = getCampaignNegativeCriteriaReturn
  end
end

# {https://adwords.google.com/api/adwords/v7}setCampaignNegativeCriteria
class SetCampaignNegativeCriteria
  @@schema_type = "setCampaignNegativeCriteria"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["campaignId", "SOAP::SOAPInt"], ["criteria", "Criterion[]"]]

  attr_accessor :campaignId
  attr_accessor :criteria

  def initialize(campaignId = nil, criteria = [])
    @campaignId = campaignId
    @criteria = criteria
  end
end

# {https://adwords.google.com/api/adwords/v7}setCampaignNegativeCriteriaResponse
class SetCampaignNegativeCriteriaResponse
  @@schema_type = "setCampaignNegativeCriteriaResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v7}Criterion
class Criterion
  @@schema_type = "Criterion"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = [["adGroupId", "SOAP::SOAPInt"], ["criterionType", "SOAP::SOAPString"], ["destinationUrl", "SOAP::SOAPString"], ["exemptionRequest", "SOAP::SOAPString"], ["id", "SOAP::SOAPLong"], ["language", "SOAP::SOAPString"], ["negative", "SOAP::SOAPBoolean"], ["paused", "SOAP::SOAPBoolean"], ["status", "SOAP::SOAPString"]]

  attr_accessor :adGroupId
  attr_accessor :criterionType
  attr_accessor :destinationUrl
  attr_accessor :exemptionRequest
  attr_accessor :id
  attr_accessor :language
  attr_accessor :negative
  attr_accessor :paused
  attr_accessor :status

  def initialize(adGroupId = nil, criterionType = nil, destinationUrl = nil, exemptionRequest = nil, id = nil, language = nil, negative = nil, paused = nil, status = nil)
    @adGroupId = adGroupId
    @criterionType = criterionType
    @destinationUrl = destinationUrl
    @exemptionRequest = exemptionRequest
    @id = id
    @language = language
    @negative = negative
    @paused = paused
    @status = status
  end
end

# {https://adwords.google.com/api/adwords/v7}Keyword
class Keyword
  @@schema_type = "Keyword"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v7}Website
class Website
  @@schema_type = "Website"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = []

  def initialize
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

# {https://adwords.google.com/api/adwords/v7}CriterionStatus
module CriterionStatus
  Deleted = "Deleted"
  Disabled = "Disabled"
  Disapproved = "Disapproved"
  InTrial = "InTrial"
  Normal = "Normal"
  OnHold = "OnHold"
end

# {https://adwords.google.com/api/adwords/v7}KeywordType
module KeywordType
  Broad = "Broad"
  Exact = "Exact"
  Phrase = "Phrase"
end
end
