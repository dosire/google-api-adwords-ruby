require 'xsd/qname'

module AdWords; module V200902; module AdGroupCriterionService


# {https://adwords.google.com/api/adwords/cm/v200902}CriterionId
#   id - SOAP::SOAPLong
class CriterionId
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}Date
#   year - SOAP::SOAPInt
#   month - SOAP::SOAPInt
#   day - SOAP::SOAPInt
class Date
  attr_accessor :year
  attr_accessor :month
  attr_accessor :day

  def initialize(year = nil, month = nil, day = nil)
    @year = year
    @month = month
    @day = day
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}DateRange
#   min - AdWords::V200902::AdGroupCriterionService::Date
#   max - AdWords::V200902::AdGroupCriterionService::Date
class DateRange
  attr_accessor :min
  attr_accessor :max

  def initialize(min = nil, max = nil)
    @min = min
    @max = max
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}Money
#   currencyCode - SOAP::SOAPString
#   microAmount - SOAP::SOAPLong
class Money
  attr_accessor :currencyCode
  attr_accessor :microAmount

  def initialize(currencyCode = nil, microAmount = nil)
    @currencyCode = currencyCode
    @microAmount = microAmount
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

# {https://adwords.google.com/api/adwords/cm/v200902}PolicyViolationError.Part
#   index - SOAP::SOAPInt
#   length - SOAP::SOAPInt
class PolicyViolationErrorPart
  attr_accessor :index
  attr_accessor :length

  def initialize(index = nil, length = nil)
    @index = index
    @length = length
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}PolicyViolationKey
#   policyName - SOAP::SOAPString
#   violatingText - SOAP::SOAPString
class PolicyViolationKey
  attr_accessor :policyName
  attr_accessor :violatingText

  def initialize(policyName = nil, violatingText = nil)
    @policyName = policyName
    @violatingText = violatingText
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}QualityInfo
#   isKeywordAdRelevanceAcceptable - SOAP::SOAPBoolean
#   isLandingPageQualityAcceptable - SOAP::SOAPBoolean
#   isLandingPageLatencyAcceptable - SOAP::SOAPBoolean
#   qualityScore - SOAP::SOAPInt
class QualityInfo
  attr_accessor :isKeywordAdRelevanceAcceptable
  attr_accessor :isLandingPageQualityAcceptable
  attr_accessor :isLandingPageLatencyAcceptable
  attr_accessor :qualityScore

  def initialize(isKeywordAdRelevanceAcceptable = nil, isLandingPageQualityAcceptable = nil, isLandingPageLatencyAcceptable = nil, qualityScore = nil)
    @isKeywordAdRelevanceAcceptable = isKeywordAdRelevanceAcceptable
    @isLandingPageQualityAcceptable = isLandingPageQualityAcceptable
    @isLandingPageLatencyAcceptable = isLandingPageLatencyAcceptable
    @qualityScore = qualityScore
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

# {https://adwords.google.com/api/adwords/cm/v200902}StatsSelector
#   dateRange - AdWords::V200902::AdGroupCriterionService::DateRange
class StatsSelector
  attr_accessor :dateRange

  def initialize(dateRange = nil)
    @dateRange = dateRange
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupId
#   id - SOAP::SOAPLong
#   adGroupId_Type - SOAP::SOAPString
class AdGroupId
  attr_accessor :id
  attr_accessor :adGroupId_Type

  def initialize(id = nil, adGroupId_Type = nil)
    @id = id
    @adGroupId_Type = adGroupId_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}Bid
#   event - AdWords::V200902::AdGroupCriterionService::BidEvent
#   amount - AdWords::V200902::AdGroupCriterionService::Money
class Bid
  attr_accessor :event
  attr_accessor :amount

  def initialize(event = nil, amount = nil)
    @event = event
    @amount = amount
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
#   id - AdWords::V200902::AdGroupCriterionService::CriterionId
#   criterion_Type - SOAP::SOAPString
class Criterion
  attr_accessor :id
  attr_accessor :criterion_Type

  def initialize(id = nil, criterion_Type = nil)
    @id = id
    @criterion_Type = criterion_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}Keyword
#   id - AdWords::V200902::AdGroupCriterionService::CriterionId
#   criterion_Type - SOAP::SOAPString
#   text - SOAP::SOAPString
#   matchType - AdWords::V200902::AdGroupCriterionService::KeywordMatchType
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
#   id - AdWords::V200902::AdGroupCriterionService::CriterionId
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

# {https://adwords.google.com/api/adwords/cm/v200902}ExemptionRequest
#   key - AdWords::V200902::AdGroupCriterionService::PolicyViolationKey
class ExemptionRequest
  attr_accessor :key

  def initialize(key = nil)
    @key = key
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}PositionPreferenceAdGroupCriterionBids
#   proxyMaxCpc - AdWords::V200902::AdGroupCriterionService::Bid
#   preferredPosition - SOAP::SOAPInt
#   bottomPosition - SOAP::SOAPInt
class PositionPreferenceAdGroupCriterionBids
  attr_accessor :proxyMaxCpc
  attr_accessor :preferredPosition
  attr_accessor :bottomPosition

  def initialize(proxyMaxCpc = nil, preferredPosition = nil, bottomPosition = nil)
    @proxyMaxCpc = proxyMaxCpc
    @preferredPosition = preferredPosition
    @bottomPosition = bottomPosition
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupCriterionIdFilter
#   campaignId - AdWords::V200902::AdGroupCriterionService::CampaignId
#   adGroupId - AdWords::V200902::AdGroupCriterionService::AdGroupId
#   criterionId - AdWords::V200902::AdGroupCriterionService::CriterionId
class AdGroupCriterionIdFilter
  attr_accessor :campaignId
  attr_accessor :adGroupId
  attr_accessor :criterionId

  def initialize(campaignId = nil, adGroupId = nil, criterionId = nil)
    @campaignId = campaignId
    @adGroupId = adGroupId
    @criterionId = criterionId
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

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupCriterionError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupCriterionService::AdGroupCriterionErrorReason
class AdGroupCriterionError < ApiError
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

# {https://adwords.google.com/api/adwords/cm/v200902}AuthorizationError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupCriterionService::AuthorizationErrorReason
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

# {https://adwords.google.com/api/adwords/cm/v200902}BiddingError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupCriterionService::BiddingErrorReason
class BiddingError < ApiError
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
#   reason - AdWords::V200902::AdGroupCriterionService::DatabaseErrorReason
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
#   reason - AdWords::V200902::AdGroupCriterionService::DistinctErrorReason
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

# {https://adwords.google.com/api/adwords/cm/v200902}EntityAccessDenied
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupCriterionService::EntityAccessDeniedReason
class EntityAccessDenied < ApiError
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
#   reason - AdWords::V200902::AdGroupCriterionService::EntityCountLimitExceededReason
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

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupCriterionLimitExceeded
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupCriterionService::EntityCountLimitExceededReason
#   enclosingId - SOAP::SOAPString
#   limit - SOAP::SOAPInt
#   limitType - AdWords::V200902::AdGroupCriterionService::AdGroupCriterionLimitExceededCriteriaLimitType
class AdGroupCriterionLimitExceeded < EntityCountLimitExceeded
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

# {https://adwords.google.com/api/adwords/cm/v200902}EntityNotFound
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupCriterionService::EntityNotFoundReason
class EntityNotFound < ApiError
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

# {https://adwords.google.com/api/adwords/cm/v200902}NewEntityCreationError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupCriterionService::NewEntityCreationErrorReason
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
#   reason - AdWords::V200902::AdGroupCriterionService::NotEmptyErrorReason
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
#   reason - AdWords::V200902::AdGroupCriterionService::NotWhitelistedErrorReason
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
#   reason - AdWords::V200902::AdGroupCriterionService::NullErrorReason
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

# {https://adwords.google.com/api/adwords/cm/v200902}ReadOnlyError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupCriterionService::ReadOnlyErrorReason
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
#   reason - AdWords::V200902::AdGroupCriterionService::RequiredErrorReason
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

# {https://adwords.google.com/api/adwords/cm/v200902}StatsQueryError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupCriterionService::StatsQueryErrorReason
class StatsQueryError < ApiError
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

# {https://adwords.google.com/api/adwords/cm/v200902}PolicyViolationError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   key - AdWords::V200902::AdGroupCriterionService::PolicyViolationKey
#   externalPolicyName - SOAP::SOAPString
#   externalPolicyUrl - SOAP::SOAPString
#   externalPolicyDescription - SOAP::SOAPString
#   isExemptable - SOAP::SOAPBoolean
#   violatingParts - AdWords::V200902::AdGroupCriterionService::PolicyViolationErrorPart
class PolicyViolationError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :key
  attr_accessor :externalPolicyName
  attr_accessor :externalPolicyUrl
  attr_accessor :externalPolicyDescription
  attr_accessor :isExemptable
  attr_accessor :violatingParts

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, key = nil, externalPolicyName = nil, externalPolicyUrl = nil, externalPolicyDescription = nil, isExemptable = nil, violatingParts = [])
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @key = key
    @externalPolicyName = externalPolicyName
    @externalPolicyUrl = externalPolicyUrl
    @externalPolicyDescription = externalPolicyDescription
    @isExemptable = isExemptable
    @violatingParts = violatingParts
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}CriterionPolicyError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   key - AdWords::V200902::AdGroupCriterionService::PolicyViolationKey
#   externalPolicyName - SOAP::SOAPString
#   externalPolicyUrl - SOAP::SOAPString
#   externalPolicyDescription - SOAP::SOAPString
#   isExemptable - SOAP::SOAPBoolean
#   violatingParts - AdWords::V200902::AdGroupCriterionService::PolicyViolationErrorPart
class CriterionPolicyError < PolicyViolationError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :key
  attr_accessor :externalPolicyName
  attr_accessor :externalPolicyUrl
  attr_accessor :externalPolicyDescription
  attr_accessor :isExemptable
  attr_accessor :violatingParts

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, key = nil, externalPolicyName = nil, externalPolicyUrl = nil, externalPolicyDescription = nil, isExemptable = nil, violatingParts = [])
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @key = key
    @externalPolicyName = externalPolicyName
    @externalPolicyUrl = externalPolicyUrl
    @externalPolicyDescription = externalPolicyDescription
    @isExemptable = isExemptable
    @violatingParts = violatingParts
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
#   errors - AdWords::V200902::AdGroupCriterionService::ApiError
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

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupCriterionBids
# abstract
#   adGroupCriterionBids_Type - SOAP::SOAPString
class AdGroupCriterionBids
  attr_accessor :adGroupCriterionBids_Type

  def initialize(adGroupCriterionBids_Type = nil)
    @adGroupCriterionBids_Type = adGroupCriterionBids_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}ConversionOptimizerAdGroupCriterionBids
#   adGroupCriterionBids_Type - SOAP::SOAPString
class ConversionOptimizerAdGroupCriterionBids < AdGroupCriterionBids
  attr_accessor :adGroupCriterionBids_Type

  def initialize(adGroupCriterionBids_Type = nil)
    @adGroupCriterionBids_Type = adGroupCriterionBids_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}BudgetOptimizerAdGroupCriterionBids
#   adGroupCriterionBids_Type - SOAP::SOAPString
#   proxyBid - AdWords::V200902::AdGroupCriterionService::Bid
class BudgetOptimizerAdGroupCriterionBids < AdGroupCriterionBids
  attr_accessor :adGroupCriterionBids_Type
  attr_accessor :proxyBid

  def initialize(adGroupCriterionBids_Type = nil, proxyBid = nil)
    @adGroupCriterionBids_Type = adGroupCriterionBids_Type
    @proxyBid = proxyBid
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}ManualCPMAdGroupCriterionBids
#   adGroupCriterionBids_Type - SOAP::SOAPString
#   maxCpm - AdWords::V200902::AdGroupCriterionService::Bid
#   bidSource - AdWords::V200902::AdGroupCriterionService::BidSource
class ManualCPMAdGroupCriterionBids < AdGroupCriterionBids
  attr_accessor :adGroupCriterionBids_Type
  attr_accessor :maxCpm
  attr_accessor :bidSource

  def initialize(adGroupCriterionBids_Type = nil, maxCpm = nil, bidSource = nil)
    @adGroupCriterionBids_Type = adGroupCriterionBids_Type
    @maxCpm = maxCpm
    @bidSource = bidSource
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}ManualCPCAdGroupCriterionBids
#   adGroupCriterionBids_Type - SOAP::SOAPString
#   maxCpc - AdWords::V200902::AdGroupCriterionService::Bid
#   bidSource - AdWords::V200902::AdGroupCriterionService::BidSource
#   positionPreferenceBids - AdWords::V200902::AdGroupCriterionService::PositionPreferenceAdGroupCriterionBids
class ManualCPCAdGroupCriterionBids < AdGroupCriterionBids
  attr_accessor :adGroupCriterionBids_Type
  attr_accessor :maxCpc
  attr_accessor :bidSource
  attr_accessor :positionPreferenceBids

  def initialize(adGroupCriterionBids_Type = nil, maxCpc = nil, bidSource = nil, positionPreferenceBids = nil)
    @adGroupCriterionBids_Type = adGroupCriterionBids_Type
    @maxCpc = maxCpc
    @bidSource = bidSource
    @positionPreferenceBids = positionPreferenceBids
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupCriterion
#   adGroupId - AdWords::V200902::AdGroupCriterionService::AdGroupId
#   criterion - AdWords::V200902::AdGroupCriterionService::Criterion
#   adGroupCriterion_Type - SOAP::SOAPString
class AdGroupCriterion
  attr_accessor :adGroupId
  attr_accessor :criterion
  attr_accessor :adGroupCriterion_Type

  def initialize(adGroupId = nil, criterion = nil, adGroupCriterion_Type = nil)
    @adGroupId = adGroupId
    @criterion = criterion
    @adGroupCriterion_Type = adGroupCriterion_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}NegativeAdGroupCriterion
#   adGroupId - AdWords::V200902::AdGroupCriterionService::AdGroupId
#   criterion - AdWords::V200902::AdGroupCriterionService::Criterion
#   adGroupCriterion_Type - SOAP::SOAPString
class NegativeAdGroupCriterion < AdGroupCriterion
  attr_accessor :adGroupId
  attr_accessor :criterion
  attr_accessor :adGroupCriterion_Type

  def initialize(adGroupId = nil, criterion = nil, adGroupCriterion_Type = nil)
    @adGroupId = adGroupId
    @criterion = criterion
    @adGroupCriterion_Type = adGroupCriterion_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}BiddableAdGroupCriterion
#   adGroupId - AdWords::V200902::AdGroupCriterionService::AdGroupId
#   criterion - AdWords::V200902::AdGroupCriterionService::Criterion
#   adGroupCriterion_Type - SOAP::SOAPString
#   userStatus - AdWords::V200902::AdGroupCriterionService::UserStatus
#   systemServingStatus - AdWords::V200902::AdGroupCriterionService::SystemServingStatus
#   approvalStatus - AdWords::V200902::AdGroupCriterionService::ApprovalStatus
#   destinationUrl - SOAP::SOAPString
#   bids - AdWords::V200902::AdGroupCriterionService::AdGroupCriterionBids
#   firstPageCpc - AdWords::V200902::AdGroupCriterionService::Bid
#   qualityInfo - AdWords::V200902::AdGroupCriterionService::QualityInfo
class BiddableAdGroupCriterion < AdGroupCriterion
  attr_accessor :adGroupId
  attr_accessor :criterion
  attr_accessor :adGroupCriterion_Type
  attr_accessor :userStatus
  attr_accessor :systemServingStatus
  attr_accessor :approvalStatus
  attr_accessor :destinationUrl
  attr_accessor :bids
  attr_accessor :firstPageCpc
  attr_accessor :qualityInfo

  def initialize(adGroupId = nil, criterion = nil, adGroupCriterion_Type = nil, userStatus = nil, systemServingStatus = nil, approvalStatus = nil, destinationUrl = nil, bids = nil, firstPageCpc = nil, qualityInfo = nil)
    @adGroupId = adGroupId
    @criterion = criterion
    @adGroupCriterion_Type = adGroupCriterion_Type
    @userStatus = userStatus
    @systemServingStatus = systemServingStatus
    @approvalStatus = approvalStatus
    @destinationUrl = destinationUrl
    @bids = bids
    @firstPageCpc = firstPageCpc
    @qualityInfo = qualityInfo
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupCriterionSelector
#   idFilters - AdWords::V200902::AdGroupCriterionService::AdGroupCriterionIdFilter
#   criterionUse - AdWords::V200902::AdGroupCriterionService::CriterionUse
#   userStatuses - AdWords::V200902::AdGroupCriterionService::UserStatus
#   statsSelector - AdWords::V200902::AdGroupCriterionService::StatsSelector
#   paging - AdWords::V200902::AdGroupCriterionService::Paging
class AdGroupCriterionSelector
  attr_accessor :idFilters
  attr_accessor :criterionUse
  attr_accessor :userStatuses
  attr_accessor :statsSelector
  attr_accessor :paging

  def initialize(idFilters = [], criterionUse = nil, userStatuses = [], statsSelector = nil, paging = nil)
    @idFilters = idFilters
    @criterionUse = criterionUse
    @userStatuses = userStatuses
    @statsSelector = statsSelector
    @paging = paging
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}Operation
# abstract
#   operator - AdWords::V200902::AdGroupCriterionService::Operator
#   operation_Type - SOAP::SOAPString
class Operation
  attr_accessor :operator
  attr_accessor :operation_Type

  def initialize(operator = nil, operation_Type = nil)
    @operator = operator
    @operation_Type = operation_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupCriterionOperation
#   operator - AdWords::V200902::AdGroupCriterionService::Operator
#   operation_Type - SOAP::SOAPString
#   operand - AdWords::V200902::AdGroupCriterionService::AdGroupCriterion
#   exemptionRequests - AdWords::V200902::AdGroupCriterionService::ExemptionRequest
class AdGroupCriterionOperation < Operation
  attr_accessor :operator
  attr_accessor :operation_Type
  attr_accessor :operand
  attr_accessor :exemptionRequests

  def initialize(operator = nil, operation_Type = nil, operand = nil, exemptionRequests = [])
    @operator = operator
    @operation_Type = operation_Type
    @operand = operand
    @exemptionRequests = exemptionRequests
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

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupCriterionPage
#   totalNumEntries - SOAP::SOAPInt
#   page_Type - SOAP::SOAPString
#   entries - AdWords::V200902::AdGroupCriterionService::AdGroupCriterion
class AdGroupCriterionPage < Page
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

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupCriterionReturnValue
#   listReturnValue_Type - SOAP::SOAPString
#   value - AdWords::V200902::AdGroupCriterionService::AdGroupCriterion
class AdGroupCriterionReturnValue < ListReturnValue
  attr_accessor :listReturnValue_Type
  attr_accessor :value

  def initialize(listReturnValue_Type = nil, value = [])
    @listReturnValue_Type = listReturnValue_Type
    @value = value
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupCriterionError.Reason
class AdGroupCriterionErrorReason < ::String
  BID_INCOMPATIBLE_WITH_ADGROUP = AdGroupCriterionErrorReason.new("BID_INCOMPATIBLE_WITH_ADGROUP")
  BID_TOO_BIG = AdGroupCriterionErrorReason.new("BID_TOO_BIG")
  BID_TOO_HIGH_FOR_DAILY_BUDGET = AdGroupCriterionErrorReason.new("BID_TOO_HIGH_FOR_DAILY_BUDGET")
  BID_TOO_HIGH_FOR_MONTHLY_BUDGET = AdGroupCriterionErrorReason.new("BID_TOO_HIGH_FOR_MONTHLY_BUDGET")
  BID_TOO_MANY_FRACTIONAL_DIGITS = AdGroupCriterionErrorReason.new("BID_TOO_MANY_FRACTIONAL_DIGITS")
  BID_TOO_SMALL = AdGroupCriterionErrorReason.new("BID_TOO_SMALL")
  CANNOT_TARGET_AND_EXCLUDE = AdGroupCriterionErrorReason.new("CANNOT_TARGET_AND_EXCLUDE")
  CANT_UPDATE_NEGATIVE = AdGroupCriterionErrorReason.new("CANT_UPDATE_NEGATIVE")
  CONCRETE_TYPE_REQUIRED = AdGroupCriterionErrorReason.new("CONCRETE_TYPE_REQUIRED")
  CRITERION_NOT_TARGETED = AdGroupCriterionErrorReason.new("CRITERION_NOT_TARGETED")
  CURRENCY_MISMATCH = AdGroupCriterionErrorReason.new("CURRENCY_MISMATCH")
  ID_FILTERS_HAVE_DIFF_FIELDS_SET = AdGroupCriterionErrorReason.new("ID_FILTERS_HAVE_DIFF_FIELDS_SET")
  ILLEGAL_URL = AdGroupCriterionErrorReason.new("ILLEGAL_URL")
  INAPPLICABLE_FILTER_SPECIFIED = AdGroupCriterionErrorReason.new("INAPPLICABLE_FILTER_SPECIFIED")
  INVALID_DESTINATION_URL = AdGroupCriterionErrorReason.new("INVALID_DESTINATION_URL")
  INVALID_ID_FILTER_TYPE = AdGroupCriterionErrorReason.new("INVALID_ID_FILTER_TYPE")
  INVALID_KEYWORD_TEXT = AdGroupCriterionErrorReason.new("INVALID_KEYWORD_TEXT")
  INVALID_USER_STATUS = AdGroupCriterionErrorReason.new("INVALID_USER_STATUS")
  NETWORK_NOT_OVERRIDABLE = AdGroupCriterionErrorReason.new("NETWORK_NOT_OVERRIDABLE")
  NO_EFFECTIVE_BID_FOR_THIS_CRITERION = AdGroupCriterionErrorReason.new("NO_EFFECTIVE_BID_FOR_THIS_CRITERION")
  TOO_MANY_OPERTAIONS = AdGroupCriterionErrorReason.new("TOO_MANY_OPERTAIONS")
  TYPE_MISMATCH = AdGroupCriterionErrorReason.new("TYPE_MISMATCH")
end

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupCriterionLimitExceeded.CriteriaLimitType
class AdGroupCriterionLimitExceededCriteriaLimitType < ::String
  ADGROUP_KEYWORD = AdGroupCriterionLimitExceededCriteriaLimitType.new("ADGROUP_KEYWORD")
  ADGROUP_WEBSITE = AdGroupCriterionLimitExceededCriteriaLimitType.new("ADGROUP_WEBSITE")
end

# {https://adwords.google.com/api/adwords/cm/v200902}ApprovalStatus
class ApprovalStatus < ::String
  APPROVED = ApprovalStatus.new("APPROVED")
  DISAPPROVED = ApprovalStatus.new("DISAPPROVED")
  PENDING_REVIEW = ApprovalStatus.new("PENDING_REVIEW")
  UNDER_REVIEW = ApprovalStatus.new("UNDER_REVIEW")
end

# {https://adwords.google.com/api/adwords/cm/v200902}AuthorizationError.Reason
class AuthorizationErrorReason < ::String
  EFFECTIVE_USER_PERMISSION_DENIED = AuthorizationErrorReason.new("EFFECTIVE_USER_PERMISSION_DENIED")
  NO_ADWORDS_ACCOUNT_FOR_CUSTOMER = AuthorizationErrorReason.new("NO_ADWORDS_ACCOUNT_FOR_CUSTOMER")
  UNABLE_TO_AUTHORIZE = AuthorizationErrorReason.new("UNABLE_TO_AUTHORIZE")
  USER_PERMISSION_DENIED = AuthorizationErrorReason.new("USER_PERMISSION_DENIED")
end

# {https://adwords.google.com/api/adwords/cm/v200902}Bid.Event
class BidEvent < ::String
  CLICK = BidEvent.new("CLICK")
  CONVERSION = BidEvent.new("CONVERSION")
  THOUSAND_IMPRESSIONS = BidEvent.new("THOUSAND_IMPRESSIONS")
  VIDEO_PLAY = BidEvent.new("VIDEO_PLAY")
end

# {https://adwords.google.com/api/adwords/cm/v200902}BidSource
class BidSource < ::String
  ADGROUP = BidSource.new("ADGROUP")
  CRITERION = BidSource.new("CRITERION")
end

# {https://adwords.google.com/api/adwords/cm/v200902}BiddingError.Reason
class BiddingErrorReason < ::String
  ADGROUPS_DO_NOT_MATCH_CONSTRAINT = BiddingErrorReason.new("ADGROUPS_DO_NOT_MATCH_CONSTRAINT")
  AUCTION_STRATEGY_INCOMPATIBLE_WITH_PROXY_BIDDER = BiddingErrorReason.new("AUCTION_STRATEGY_INCOMPATIBLE_WITH_PROXY_BIDDER")
  BAD_BID_COMBINATION = BiddingErrorReason.new("BAD_BID_COMBINATION")
  BIDS_DO_NOT_FULFILL_SPEC = BiddingErrorReason.new("BIDS_DO_NOT_FULFILL_SPEC")
  BID_AMOUNT_REQUIRED = BiddingErrorReason.new("BID_AMOUNT_REQUIRED")
  BID_EVENT_MISMATCH = BiddingErrorReason.new("BID_EVENT_MISMATCH")
  BID_EVENT_REQUIRED = BiddingErrorReason.new("BID_EVENT_REQUIRED")
  BID_INCOMPATIBLE_WITH_ADGROUP = BiddingErrorReason.new("BID_INCOMPATIBLE_WITH_ADGROUP")
  BID_TO_POSITION_NOT_ENABLED = BiddingErrorReason.new("BID_TO_POSITION_NOT_ENABLED")
  BID_UNIVERSAL_CRITERIA_EXPECTED = BiddingErrorReason.new("BID_UNIVERSAL_CRITERIA_EXPECTED")
  BOTTOM_POSITION_OUT_OF_RANGE = BiddingErrorReason.new("BOTTOM_POSITION_OUT_OF_RANGE")
  CAMPAIGN_ALREADY_SET = BiddingErrorReason.new("CAMPAIGN_ALREADY_SET")
  CAMPAIGN_MUST_HAVE_A_BUDGET_TO_ENABLE_BUDGET_OPTIMIZER = BiddingErrorReason.new("CAMPAIGN_MUST_HAVE_A_BUDGET_TO_ENABLE_BUDGET_OPTIMIZER")
  CANNOT_EXCLUDE_DEFAULT = BiddingErrorReason.new("CANNOT_EXCLUDE_DEFAULT")
  CANNOT_TARGET_AND_EXCLUDE = BiddingErrorReason.new("CANNOT_TARGET_AND_EXCLUDE")
  CANNOT_TARGET_UNIVERSE = BiddingErrorReason.new("CANNOT_TARGET_UNIVERSE")
  CANNOT_UPDATE_SITE_BIDS_WHILE_PROXY_BIDDING = BiddingErrorReason.new("CANNOT_UPDATE_SITE_BIDS_WHILE_PROXY_BIDDING")
  CRITERION_NOT_TARGETED = BiddingErrorReason.new("CRITERION_NOT_TARGETED")
  CURRENCY_MISMATCH = BiddingErrorReason.new("CURRENCY_MISMATCH")
  GOAL_DOES_NOT_FULFILL_SPEC = BiddingErrorReason.new("GOAL_DOES_NOT_FULFILL_SPEC")
  GOAL_VALIDATION_FAILED = BiddingErrorReason.new("GOAL_VALIDATION_FAILED")
  ILLEGAL_URL = BiddingErrorReason.new("ILLEGAL_URL")
  MUST_EXCLUDE_0_TO_17_WITH_OTHER_AGE_EXCLUSIONS = BiddingErrorReason.new("MUST_EXCLUDE_0_TO_17_WITH_OTHER_AGE_EXCLUSIONS")
  NETWORK_NOT_OVERRIDEABLE = BiddingErrorReason.new("NETWORK_NOT_OVERRIDEABLE")
  NETWORK_SETTINGS_DO_NOT_SUPPORT_TRANSITION = BiddingErrorReason.new("NETWORK_SETTINGS_DO_NOT_SUPPORT_TRANSITION")
  NON_POSITIVE_BID = BiddingErrorReason.new("NON_POSITIVE_BID")
  NO_DESTINATION_URL_SPECIFIED = BiddingErrorReason.new("NO_DESTINATION_URL_SPECIFIED")
  NO_EFFECTIVE_BID = BiddingErrorReason.new("NO_EFFECTIVE_BID")
  POSITION_PREFERENCE_NOT_ENABLED = BiddingErrorReason.new("POSITION_PREFERENCE_NOT_ENABLED")
  POSITION_PREFERENCE_NOT_SUPPORTED_FOR_CRITERIA_TYPE = BiddingErrorReason.new("POSITION_PREFERENCE_NOT_SUPPORTED_FOR_CRITERIA_TYPE")
  PREFERRED_POSITION_CANNOT_BE_HIGHER_THAN_BOTTOM = BiddingErrorReason.new("PREFERRED_POSITION_CANNOT_BE_HIGHER_THAN_BOTTOM")
  PREFERRED_POSITION_OUT_OF_RANGE = BiddingErrorReason.new("PREFERRED_POSITION_OUT_OF_RANGE")
  PROXY_BIDDER_STRATEGY_INCOMPATIBLE_WITH_STYLE = BiddingErrorReason.new("PROXY_BIDDER_STRATEGY_INCOMPATIBLE_WITH_STYLE")
  PROXY_NOT_ENABLED = BiddingErrorReason.new("PROXY_NOT_ENABLED")
  TRANSITION_DOES_NOT_SUPPORT_GOAL = BiddingErrorReason.new("TRANSITION_DOES_NOT_SUPPORT_GOAL")
  TRANSITION_DOES_NOT_SUPPORT_OPTION = BiddingErrorReason.new("TRANSITION_DOES_NOT_SUPPORT_OPTION")
  UNSUPPORTED_PROXY_BIDDER_STRATEGY_TRANSITION = BiddingErrorReason.new("UNSUPPORTED_PROXY_BIDDER_STRATEGY_TRANSITION")
  UNSUPPORTED_STYLE = BiddingErrorReason.new("UNSUPPORTED_STYLE")
  UNSUPPORTED_STYLE_TRANSITION = BiddingErrorReason.new("UNSUPPORTED_STYLE_TRANSITION")
end

# {https://adwords.google.com/api/adwords/cm/v200902}CriterionUse
class CriterionUse < ::String
  BIDDABLE = CriterionUse.new("BIDDABLE")
  NEGATIVE = CriterionUse.new("NEGATIVE")
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

# {https://adwords.google.com/api/adwords/cm/v200902}EntityAccessDenied.Reason
class EntityAccessDeniedReason < ::String
  READ_ACCESS_DENIED = EntityAccessDeniedReason.new("READ_ACCESS_DENIED")
  WRITE_ACCESS_DENIED = EntityAccessDeniedReason.new("WRITE_ACCESS_DENIED")
end

# {https://adwords.google.com/api/adwords/cm/v200902}EntityCountLimitExceeded.Reason
class EntityCountLimitExceededReason < ::String
  ACCOUNT_LIMIT = EntityCountLimitExceededReason.new("ACCOUNT_LIMIT")
  ADGROUP_LIMIT = EntityCountLimitExceededReason.new("ADGROUP_LIMIT")
  CAMPAIGN_LIMIT = EntityCountLimitExceededReason.new("CAMPAIGN_LIMIT")
end

# {https://adwords.google.com/api/adwords/cm/v200902}EntityNotFound.Reason
class EntityNotFoundReason < ::String
  INVALID_ID = EntityNotFoundReason.new("INVALID_ID")
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

# {https://adwords.google.com/api/adwords/cm/v200902}ReadOnlyError.Reason
class ReadOnlyErrorReason < ::String
  READ_ONLY = ReadOnlyErrorReason.new("READ_ONLY")
end

# {https://adwords.google.com/api/adwords/cm/v200902}RequiredError.Reason
class RequiredErrorReason < ::String
  REQUIRED = RequiredErrorReason.new("REQUIRED")
end

# {https://adwords.google.com/api/adwords/cm/v200902}StatsQueryError.Reason
class StatsQueryErrorReason < ::String
  DATE_NOT_IN_VALID_RANGE = StatsQueryErrorReason.new("DATE_NOT_IN_VALID_RANGE")
end

# {https://adwords.google.com/api/adwords/cm/v200902}SystemServingStatus
class SystemServingStatus < ::String
  ELIGIBLE = SystemServingStatus.new("ELIGIBLE")
  RARELY_SERVED = SystemServingStatus.new("RARELY_SERVED")
end

# {https://adwords.google.com/api/adwords/cm/v200902}UserStatus
class UserStatus < ::String
  ACTIVE = UserStatus.new("ACTIVE")
  DELETED = UserStatus.new("DELETED")
  PAUSED = UserStatus.new("PAUSED")
end

# {https://adwords.google.com/api/adwords/cm/v200902}get
#   selector - AdWords::V200902::AdGroupCriterionService::AdGroupCriterionSelector
class Get
  attr_accessor :selector

  def initialize(selector = nil)
    @selector = selector
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}getResponse
#   rval - AdWords::V200902::AdGroupCriterionService::AdGroupCriterionPage
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
#   rval - AdWords::V200902::AdGroupCriterionService::AdGroupCriterionReturnValue
class MutateResponse
  attr_accessor :rval

  def initialize(rval = nil)
    @rval = rval
  end
end


end; end; end
