require 'xsd/qname'

module AdWords; module V200902; module CampaignCriterionService


# {https://adwords.google.com/api/adwords/cm/v200902}CriterionId
#   id - SOAP::SOAPLong
class CriterionId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}Paging
#   startIndex - SOAP::SOAPInt
#   numberResults - SOAP::SOAPInt
class Paging
  attr_accessor :startIndex
  attr_accessor :numberResults

  def initialize(startIndex = nil, numberResults = nil)
    @startIndex = startIndex
    @numberResults = numberResults
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}SoapHeader
#   authToken - SOAP::SOAPString
#   clientCustomerId - SOAP::SOAPString
#   clientEmail - SOAP::SOAPString
class SoapHeader
  attr_accessor :authToken
  attr_accessor :clientCustomerId
  attr_accessor :clientEmail

  def initialize(authToken = nil, clientCustomerId = nil, clientEmail = nil)
    @authToken = authToken
    @clientCustomerId = clientCustomerId
    @clientEmail = clientEmail
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}SoapResponseHeader
#   requestId - SOAP::SOAPString
#   operations - SOAP::SOAPLong
#   responseTime - SOAP::SOAPLong
class SoapResponseHeader
  attr_accessor :requestId
  attr_accessor :operations
  attr_accessor :responseTime

  def initialize(requestId = nil, operations = nil, responseTime = nil)
    @requestId = requestId
    @operations = operations
    @responseTime = responseTime
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}CampaignId
#   id - SOAP::SOAPLong
#   campaignId_Type - SOAP::SOAPString
class CampaignId
  attr_accessor :id
  attr_accessor :campaignId_Type

  def initialize(id = nil, campaignId_Type = nil)
    @id = id
    @campaignId_Type = campaignId_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}Criterion
#   id - AdWords::V200902::CampaignCriterionService::CriterionId
#   criterion_Type - SOAP::SOAPString
class Criterion
  attr_accessor :id
  attr_accessor :criterion_Type

  def initialize(id = nil, criterion_Type = nil)
    @id = id
    @criterion_Type = criterion_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}ContentLabel
#   id - AdWords::V200902::CampaignCriterionService::CriterionId
#   criterion_Type - SOAP::SOAPString
#   contentLabelType - AdWords::V200902::CampaignCriterionService::ContentLabelType
class ContentLabel < Criterion
  attr_accessor :id
  attr_accessor :criterion_Type
  attr_accessor :contentLabelType

  def initialize(id = nil, criterion_Type = nil, contentLabelType = nil)
    @id = id
    @criterion_Type = criterion_Type
    @contentLabelType = contentLabelType
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}Keyword
#   id - AdWords::V200902::CampaignCriterionService::CriterionId
#   criterion_Type - SOAP::SOAPString
#   text - SOAP::SOAPString
#   matchType - AdWords::V200902::CampaignCriterionService::KeywordMatchType
class Keyword < Criterion
  attr_accessor :id
  attr_accessor :criterion_Type
  attr_accessor :text
  attr_accessor :matchType

  def initialize(id = nil, criterion_Type = nil, text = nil, matchType = nil)
    @id = id
    @criterion_Type = criterion_Type
    @text = text
    @matchType = matchType
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}Placement
#   id - AdWords::V200902::CampaignCriterionService::CriterionId
#   criterion_Type - SOAP::SOAPString
#   url - SOAP::SOAPString
class Placement < Criterion
  attr_accessor :id
  attr_accessor :criterion_Type
  attr_accessor :url

  def initialize(id = nil, criterion_Type = nil, url = nil)
    @id = id
    @criterion_Type = criterion_Type
    @url = url
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}ApiError
# abstract
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
class ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}AuthorizationError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::CampaignCriterionService::AuthorizationErrorReason
class AuthorizationError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}CampaignCriterionError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::CampaignCriterionService::CampaignCriterionErrorReason
class CampaignCriterionError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}DatabaseError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::CampaignCriterionService::DatabaseErrorReason
class DatabaseError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}DistinctError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::CampaignCriterionService::DistinctErrorReason
class DistinctError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}EntityCountLimitExceeded
# abstract
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::CampaignCriterionService::EntityCountLimitExceededReason
#   enclosingId - SOAP::SOAPString
#   limit - SOAP::SOAPInt
class EntityCountLimitExceeded < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason
  attr_accessor :enclosingId
  attr_accessor :limit

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil, enclosingId = nil, limit = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
    @enclosingId = enclosingId
    @limit = limit
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}CampaignCriterionLimitExceeded
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::CampaignCriterionService::EntityCountLimitExceededReason
#   enclosingId - SOAP::SOAPString
#   limit - SOAP::SOAPInt
#   limitType - AdWords::V200902::CampaignCriterionService::CampaignCriterionLimitExceededCriteriaLimitType
class CampaignCriterionLimitExceeded < EntityCountLimitExceeded
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason
  attr_accessor :enclosingId
  attr_accessor :limit
  attr_accessor :limitType

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil, enclosingId = nil, limit = nil, limitType = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
    @enclosingId = enclosingId
    @limit = limit
    @limitType = limitType
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}NewEntityCreationError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::CampaignCriterionService::NewEntityCreationErrorReason
class NewEntityCreationError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}NotEmptyError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::CampaignCriterionService::NotEmptyErrorReason
class NotEmptyError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}NotWhitelistedError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::CampaignCriterionService::NotWhitelistedErrorReason
class NotWhitelistedError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}NullError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::CampaignCriterionService::NullErrorReason
class NullError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}OperatorError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::CampaignCriterionService::OperatorErrorReason
class OperatorError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}ReadOnlyError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::CampaignCriterionService::ReadOnlyErrorReason
class ReadOnlyError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}RequiredError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::CampaignCriterionService::RequiredErrorReason
class RequiredError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}ApplicationException
#   message - SOAP::SOAPString
#   applicationException_Type - SOAP::SOAPString
class ApplicationException
  attr_accessor :message
  attr_accessor :applicationException_Type

  def initialize(message = nil, applicationException_Type = nil)
    @message = message
    @applicationException_Type = applicationException_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}ApiException
#   message - SOAP::SOAPString
#   applicationException_Type - SOAP::SOAPString
#   errors - AdWords::V200902::CampaignCriterionService::ApiError
class ApiException < ApplicationException
  attr_accessor :message
  attr_accessor :applicationException_Type
  attr_accessor :errors

  def initialize(message = nil, applicationException_Type = nil, errors = [])
    @message = message
    @applicationException_Type = applicationException_Type
    @errors = errors
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}CampaignCriterion
#   campaignId - AdWords::V200902::CampaignCriterionService::CampaignId
#   criterion - AdWords::V200902::CampaignCriterionService::Criterion
#   campaignCriterion_Type - SOAP::SOAPString
class CampaignCriterion
  attr_accessor :campaignId
  attr_accessor :criterion
  attr_accessor :campaignCriterion_Type

  def initialize(campaignId = nil, criterion = nil, campaignCriterion_Type = nil)
    @campaignId = campaignId
    @criterion = criterion
    @campaignCriterion_Type = campaignCriterion_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}NegativeCampaignCriterion
#   campaignId - AdWords::V200902::CampaignCriterionService::CampaignId
#   criterion - AdWords::V200902::CampaignCriterionService::Criterion
#   campaignCriterion_Type - SOAP::SOAPString
class NegativeCampaignCriterion < CampaignCriterion
  attr_accessor :campaignId
  attr_accessor :criterion
  attr_accessor :campaignCriterion_Type

  def initialize(campaignId = nil, criterion = nil, campaignCriterion_Type = nil)
    @campaignId = campaignId
    @criterion = criterion
    @campaignCriterion_Type = campaignCriterion_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}CampaignCriterionIdFilter
#   campaignId - AdWords::V200902::CampaignCriterionService::CampaignId
#   criterionId - AdWords::V200902::CampaignCriterionService::CriterionId
class CampaignCriterionIdFilter
  attr_accessor :campaignId
  attr_accessor :criterionId

  def initialize(campaignId = nil, criterionId = nil)
    @campaignId = campaignId
    @criterionId = criterionId
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}Operation
# abstract
#   operator - AdWords::V200902::CampaignCriterionService::Operator
#   operation_Type - SOAP::SOAPString
class Operation
  attr_accessor :operator
  attr_accessor :operation_Type

  def initialize(operator = nil, operation_Type = nil)
    @operator = operator
    @operation_Type = operation_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}CampaignCriterionOperation
#   operator - AdWords::V200902::CampaignCriterionService::Operator
#   operation_Type - SOAP::SOAPString
#   operand - AdWords::V200902::CampaignCriterionService::CampaignCriterion
class CampaignCriterionOperation < Operation
  attr_accessor :operator
  attr_accessor :operation_Type
  attr_accessor :operand

  def initialize(operator = nil, operation_Type = nil, operand = nil)
    @operator = operator
    @operation_Type = operation_Type
    @operand = operand
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}Page
# abstract
#   totalNumEntries - SOAP::SOAPInt
#   page_Type - SOAP::SOAPString
class Page
  attr_accessor :totalNumEntries
  attr_accessor :page_Type

  def initialize(totalNumEntries = nil, page_Type = nil)
    @totalNumEntries = totalNumEntries
    @page_Type = page_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}CampaignCriterionPage
#   totalNumEntries - SOAP::SOAPInt
#   page_Type - SOAP::SOAPString
#   entries - AdWords::V200902::CampaignCriterionService::CampaignCriterion
class CampaignCriterionPage < Page
  attr_accessor :totalNumEntries
  attr_accessor :page_Type
  attr_accessor :entries

  def initialize(totalNumEntries = nil, page_Type = nil, entries = [])
    @totalNumEntries = totalNumEntries
    @page_Type = page_Type
    @entries = entries
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}ListReturnValue
#   listReturnValue_Type - SOAP::SOAPString
class ListReturnValue
  attr_accessor :listReturnValue_Type

  def initialize(listReturnValue_Type = nil)
    @listReturnValue_Type = listReturnValue_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}CampaignCriterionReturnValue
#   listReturnValue_Type - SOAP::SOAPString
#   value - AdWords::V200902::CampaignCriterionService::CampaignCriterion
class CampaignCriterionReturnValue < ListReturnValue
  attr_accessor :listReturnValue_Type
  attr_accessor :value

  def initialize(listReturnValue_Type = nil, value = [])
    @listReturnValue_Type = listReturnValue_Type
    @value = value
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}CampaignCriterionSelector
#   idFilters - AdWords::V200902::CampaignCriterionService::CampaignCriterionIdFilter
#   paging - AdWords::V200902::CampaignCriterionService::Paging
class CampaignCriterionSelector
  attr_accessor :idFilters
  attr_accessor :paging

  def initialize(idFilters = [], paging = nil)
    @idFilters = idFilters
    @paging = paging
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}AuthorizationError.Reason
class AuthorizationErrorReason < ::String
  EFFECTIVE_USER_PERMISSION_DENIED = AuthorizationErrorReason.new("EFFECTIVE_USER_PERMISSION_DENIED")
  NO_ADWORDS_ACCOUNT_FOR_CUSTOMER = AuthorizationErrorReason.new("NO_ADWORDS_ACCOUNT_FOR_CUSTOMER")
  UNABLE_TO_AUTHORIZE = AuthorizationErrorReason.new("UNABLE_TO_AUTHORIZE")
  USER_PERMISSION_DENIED = AuthorizationErrorReason.new("USER_PERMISSION_DENIED")
end

# {https://adwords.google.com/api/adwords/cm/v200902}CampaignCriterionError.Reason
class CampaignCriterionErrorReason < ::String
  CONCRETE_TYPE_REQUIRED = CampaignCriterionErrorReason.new("CONCRETE_TYPE_REQUIRED")
  CRITERIA_QUOTA_EXCEEDED = CampaignCriterionErrorReason.new("CRITERIA_QUOTA_EXCEEDED")
  INVALID_EXCLUDED_CATEGORY = CampaignCriterionErrorReason.new("INVALID_EXCLUDED_CATEGORY")
  INVALID_KEYWORD_TEXT = CampaignCriterionErrorReason.new("INVALID_KEYWORD_TEXT")
  INVALID_PLACEMENT_URL = CampaignCriterionErrorReason.new("INVALID_PLACEMENT_URL")
  TOO_MANY_OPERTAIONS = CampaignCriterionErrorReason.new("TOO_MANY_OPERTAIONS")
end

# {https://adwords.google.com/api/adwords/cm/v200902}CampaignCriterionLimitExceeded.CriteriaLimitType
class CampaignCriterionLimitExceededCriteriaLimitType < ::String
  CAMPAIGN_NEGATIVE_KEYWORD = CampaignCriterionLimitExceededCriteriaLimitType.new("CAMPAIGN_NEGATIVE_KEYWORD")
  CAMPAIGN_NEGATIVE_WEBSITE = CampaignCriterionLimitExceededCriteriaLimitType.new("CAMPAIGN_NEGATIVE_WEBSITE")
end

# {https://adwords.google.com/api/adwords/cm/v200902}ContentLabelType
class ContentLabelType < ::String
  ADULTISH = ContentLabelType.new("ADULTISH")
  AFE = ContentLabelType.new("AFE")
  CONFLICT = ContentLabelType.new("CONFLICT")
  CONFLICT_TRAGEDY = ContentLabelType.new("CONFLICT_TRAGEDY")
  DP = ContentLabelType.new("DP")
  EDGY = ContentLabelType.new("EDGY")
  EMBEDDED_VIDEO = ContentLabelType.new("EMBEDDED_VIDEO")
  JACKASS = ContentLabelType.new("JACKASS")
  PROFANITY = ContentLabelType.new("PROFANITY")
  SENSITIVE = ContentLabelType.new("SENSITIVE")
  SIRENS = ContentLabelType.new("SIRENS")
  TRAGEDY = ContentLabelType.new("TRAGEDY")
  UGC = ContentLabelType.new("UGC")
  UGC_FORUMS = ContentLabelType.new("UGC_FORUMS")
  UGC_IMAGES = ContentLabelType.new("UGC_IMAGES")
  UGC_SOCIAL = ContentLabelType.new("UGC_SOCIAL")
  UGC_VIDEOS = ContentLabelType.new("UGC_VIDEOS")
  VIDEO = ContentLabelType.new("VIDEO")
end

# {https://adwords.google.com/api/adwords/cm/v200902}DatabaseError.Reason
class DatabaseErrorReason < ::String
  CANNOT_LOAD_AD = DatabaseErrorReason.new("CANNOT_LOAD_AD")
  CANNOT_LOAD_ADGROUP = DatabaseErrorReason.new("CANNOT_LOAD_ADGROUP")
  CANNOT_LOAD_CAMPAIGN = DatabaseErrorReason.new("CANNOT_LOAD_CAMPAIGN")
  CANNOT_LOAD_CRITERION = DatabaseErrorReason.new("CANNOT_LOAD_CRITERION")
  CANNOT_LOAD_MEDIA = DatabaseErrorReason.new("CANNOT_LOAD_MEDIA")
  CONCURRENT_MODIFICATION = DatabaseErrorReason.new("CONCURRENT_MODIFICATION")
  PERMISSION_DENIED = DatabaseErrorReason.new("PERMISSION_DENIED")
end

# {https://adwords.google.com/api/adwords/cm/v200902}DistinctError.Reason
class DistinctErrorReason < ::String
  DUPLICATE_ELEMENT = DistinctErrorReason.new("DUPLICATE_ELEMENT")
end

# {https://adwords.google.com/api/adwords/cm/v200902}EntityCountLimitExceeded.Reason
class EntityCountLimitExceededReason < ::String
  ACCOUNT_LIMIT = EntityCountLimitExceededReason.new("ACCOUNT_LIMIT")
  ADGROUP_LIMIT = EntityCountLimitExceededReason.new("ADGROUP_LIMIT")
  CAMPAIGN_LIMIT = EntityCountLimitExceededReason.new("CAMPAIGN_LIMIT")
end

# {https://adwords.google.com/api/adwords/cm/v200902}KeywordMatchType
class KeywordMatchType < ::String
  BROAD = KeywordMatchType.new("BROAD")
  EXACT = KeywordMatchType.new("EXACT")
  PHRASE = KeywordMatchType.new("PHRASE")
end

# {https://adwords.google.com/api/adwords/cm/v200902}NewEntityCreationError.Reason
class NewEntityCreationErrorReason < ::String
  CANNOT_SET_ID_FOR_ADD = NewEntityCreationErrorReason.new("CANNOT_SET_ID_FOR_ADD")
end

# {https://adwords.google.com/api/adwords/cm/v200902}NotEmptyError.Reason
class NotEmptyErrorReason < ::String
  EMPTY_LIST = NotEmptyErrorReason.new("EMPTY_LIST")
end

# {https://adwords.google.com/api/adwords/cm/v200902}NotWhitelistedError.Reason
class NotWhitelistedErrorReason < ::String
  CUSTOMER_NOT_WHITELISTED_FOR_API = NotWhitelistedErrorReason.new("CUSTOMER_NOT_WHITELISTED_FOR_API")
end

# {https://adwords.google.com/api/adwords/cm/v200902}NullError.Reason
class NullErrorReason < ::String
  NULL_CONTENT = NullErrorReason.new("NULL_CONTENT")
end

# {https://adwords.google.com/api/adwords/cm/v200902}Operator
class Operator < ::String
  ADD = Operator.new("ADD")
  REMOVE = Operator.new("REMOVE")
  SET = Operator.new("SET")
end

# {https://adwords.google.com/api/adwords/cm/v200902}OperatorError.Reason
class OperatorErrorReason < ::String
  OPERATOR_NOT_SUPPORTED = OperatorErrorReason.new("OPERATOR_NOT_SUPPORTED")
end

# {https://adwords.google.com/api/adwords/cm/v200902}ReadOnlyError.Reason
class ReadOnlyErrorReason < ::String
  READ_ONLY = ReadOnlyErrorReason.new("READ_ONLY")
end

# {https://adwords.google.com/api/adwords/cm/v200902}RequiredError.Reason
class RequiredErrorReason < ::String
  REQUIRED = RequiredErrorReason.new("REQUIRED")
end

# {https://adwords.google.com/api/adwords/cm/v200902}get
#   selector - AdWords::V200902::CampaignCriterionService::CampaignCriterionSelector
class Get
  attr_accessor :selector

  def initialize(selector = nil)
    @selector = selector
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}getResponse
#   rval - AdWords::V200902::CampaignCriterionService::CampaignCriterionPage
class GetResponse
  attr_accessor :rval

  def initialize(rval = nil)
    @rval = rval
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}mutate
class Mutate < ::Array
end

# {https://adwords.google.com/api/adwords/cm/v200902}mutateResponse
#   rval - AdWords::V200902::CampaignCriterionService::CampaignCriterionReturnValue
class MutateResponse
  attr_accessor :rval

  def initialize(rval = nil)
    @rval = rval
  end
end


end; end; end
