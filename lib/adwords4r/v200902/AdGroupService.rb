require 'xsd/qname'

module AdWords; module V200902; module AdGroupService


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
#   min - AdWords::V200902::AdGroupService::Date
#   max - AdWords::V200902::AdGroupService::Date
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

# {https://adwords.google.com/api/adwords/cm/v200902}Stats
#   startDate - AdWords::V200902::AdGroupService::Date
#   endDate - AdWords::V200902::AdGroupService::Date
#   network - AdWords::V200902::AdGroupService::StatsNetwork
#   clicks - SOAP::SOAPLong
#   impressions - SOAP::SOAPLong
#   cost - AdWords::V200902::AdGroupService::Money
#   averagePosition - SOAP::SOAPDouble
#   averageCpc - AdWords::V200902::AdGroupService::Money
#   averageCpm - AdWords::V200902::AdGroupService::Money
#   ctr - SOAP::SOAPDouble
#   conversions - SOAP::SOAPLong
#   conversionRate - SOAP::SOAPDouble
#   costPerConversion - AdWords::V200902::AdGroupService::Money
#   conversionsManyPerClick - SOAP::SOAPLong
#   conversionRateManyPerClick - SOAP::SOAPDouble
#   costPerConversionManyPerClick - AdWords::V200902::AdGroupService::Money
#   stats_Type - SOAP::SOAPString
class Stats
  attr_accessor :startDate
  attr_accessor :endDate
  attr_accessor :network
  attr_accessor :clicks
  attr_accessor :impressions
  attr_accessor :cost
  attr_accessor :averagePosition
  attr_accessor :averageCpc
  attr_accessor :averageCpm
  attr_accessor :ctr
  attr_accessor :conversions
  attr_accessor :conversionRate
  attr_accessor :costPerConversion
  attr_accessor :conversionsManyPerClick
  attr_accessor :conversionRateManyPerClick
  attr_accessor :costPerConversionManyPerClick
  attr_accessor :stats_Type

  def initialize(startDate = nil, endDate = nil, network = nil, clicks = nil, impressions = nil, cost = nil, averagePosition = nil, averageCpc = nil, averageCpm = nil, ctr = nil, conversions = nil, conversionRate = nil, costPerConversion = nil, conversionsManyPerClick = nil, conversionRateManyPerClick = nil, costPerConversionManyPerClick = nil, stats_Type = nil)
    @startDate = startDate
    @endDate = endDate
    @network = network
    @clicks = clicks
    @impressions = impressions
    @cost = cost
    @averagePosition = averagePosition
    @averageCpc = averageCpc
    @averageCpm = averageCpm
    @ctr = ctr
    @conversions = conversions
    @conversionRate = conversionRate
    @costPerConversion = costPerConversion
    @conversionsManyPerClick = conversionsManyPerClick
    @conversionRateManyPerClick = conversionRateManyPerClick
    @costPerConversionManyPerClick = costPerConversionManyPerClick
    @stats_Type = stats_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}StatsSelector
#   dateRange - AdWords::V200902::AdGroupService::DateRange
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
#   event - AdWords::V200902::AdGroupService::BidEvent
#   amount - AdWords::V200902::AdGroupService::Money
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

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupBids
# abstract
#   adGroupBids_Type - SOAP::SOAPString
class AdGroupBids
  attr_accessor :adGroupBids_Type

  def initialize(adGroupBids_Type = nil)
    @adGroupBids_Type = adGroupBids_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}BudgetOptimizerAdGroupBids
#   adGroupBids_Type - SOAP::SOAPString
#   proxyKeywordMaxCpc - AdWords::V200902::AdGroupService::Bid
#   proxySiteMaxCpc - AdWords::V200902::AdGroupService::Bid
class BudgetOptimizerAdGroupBids < AdGroupBids
  attr_accessor :adGroupBids_Type
  attr_accessor :proxyKeywordMaxCpc
  attr_accessor :proxySiteMaxCpc

  def initialize(adGroupBids_Type = nil, proxyKeywordMaxCpc = nil, proxySiteMaxCpc = nil)
    @adGroupBids_Type = adGroupBids_Type
    @proxyKeywordMaxCpc = proxyKeywordMaxCpc
    @proxySiteMaxCpc = proxySiteMaxCpc
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}ConversionOptimizerAdGroupBids
#   adGroupBids_Type - SOAP::SOAPString
#   targetCpa - AdWords::V200902::AdGroupService::Bid
class ConversionOptimizerAdGroupBids < AdGroupBids
  attr_accessor :adGroupBids_Type
  attr_accessor :targetCpa

  def initialize(adGroupBids_Type = nil, targetCpa = nil)
    @adGroupBids_Type = adGroupBids_Type
    @targetCpa = targetCpa
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}ManualCPCAdGroupBids
#   adGroupBids_Type - SOAP::SOAPString
#   keywordMaxCpc - AdWords::V200902::AdGroupService::Bid
#   keywordContentMaxCpc - AdWords::V200902::AdGroupService::Bid
#   siteMaxCpc - AdWords::V200902::AdGroupService::Bid
class ManualCPCAdGroupBids < AdGroupBids
  attr_accessor :adGroupBids_Type
  attr_accessor :keywordMaxCpc
  attr_accessor :keywordContentMaxCpc
  attr_accessor :siteMaxCpc

  def initialize(adGroupBids_Type = nil, keywordMaxCpc = nil, keywordContentMaxCpc = nil, siteMaxCpc = nil)
    @adGroupBids_Type = adGroupBids_Type
    @keywordMaxCpc = keywordMaxCpc
    @keywordContentMaxCpc = keywordContentMaxCpc
    @siteMaxCpc = siteMaxCpc
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}ManualCPMAdGroupBids
#   adGroupBids_Type - SOAP::SOAPString
#   maxCpm - AdWords::V200902::AdGroupService::Bid
class ManualCPMAdGroupBids < AdGroupBids
  attr_accessor :adGroupBids_Type
  attr_accessor :maxCpm

  def initialize(adGroupBids_Type = nil, maxCpm = nil)
    @adGroupBids_Type = adGroupBids_Type
    @maxCpm = maxCpm
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupSelector
#   campaignId - AdWords::V200902::AdGroupService::CampaignId
#   adGroupIds - AdWords::V200902::AdGroupService::AdGroupId
#   statsSelector - AdWords::V200902::AdGroupService::StatsSelector
#   paging - AdWords::V200902::AdGroupService::Paging
class AdGroupSelector
  attr_accessor :campaignId
  attr_accessor :adGroupIds
  attr_accessor :statsSelector
  attr_accessor :paging

  def initialize(campaignId = nil, adGroupIds = [], statsSelector = nil, paging = nil)
    @campaignId = campaignId
    @adGroupIds = adGroupIds
    @statsSelector = statsSelector
    @paging = paging
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

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupServiceError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupService::AdGroupServiceErrorReason
class AdGroupServiceError < ApiError
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
#   reason - AdWords::V200902::AdGroupService::AuthorizationErrorReason
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
#   reason - AdWords::V200902::AdGroupService::BiddingErrorReason
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
#   reason - AdWords::V200902::AdGroupService::DatabaseErrorReason
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
#   reason - AdWords::V200902::AdGroupService::DistinctErrorReason
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

# {https://adwords.google.com/api/adwords/cm/v200902}NewEntityCreationError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupService::NewEntityCreationErrorReason
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
#   reason - AdWords::V200902::AdGroupService::NotEmptyErrorReason
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
#   reason - AdWords::V200902::AdGroupService::NotWhitelistedErrorReason
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
#   reason - AdWords::V200902::AdGroupService::NullErrorReason
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

# {https://adwords.google.com/api/adwords/cm/v200902}OperationAccessDenied
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupService::OperationAccessDeniedReason
class OperationAccessDenied < ApiError
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
#   reason - AdWords::V200902::AdGroupService::OperatorErrorReason
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

# {https://adwords.google.com/api/adwords/cm/v200902}QuotaError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupService::QuotaErrorReason
#   limit - SOAP::SOAPInt
class QuotaError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :apiError_Type
  attr_accessor :reason
  attr_accessor :limit

  def initialize(fieldPath = nil, trigger = nil, apiError_Type = nil, reason = nil, limit = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @apiError_Type = apiError_Type
    @reason = reason
    @limit = limit
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}ReadOnlyError
#   fieldPath - SOAP::SOAPString
#   trigger - SOAP::SOAPString
#   apiError_Type - SOAP::SOAPString
#   reason - AdWords::V200902::AdGroupService::ReadOnlyErrorReason
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
#   reason - AdWords::V200902::AdGroupService::RequiredErrorReason
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
#   reason - AdWords::V200902::AdGroupService::StatsQueryErrorReason
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
#   errors - AdWords::V200902::AdGroupService::ApiError
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

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroup
#   id - AdWords::V200902::AdGroupService::AdGroupId
#   campaignId - AdWords::V200902::AdGroupService::CampaignId
#   campaignName - SOAP::SOAPString
#   name - SOAP::SOAPString
#   status - AdWords::V200902::AdGroupService::AdGroupStatus
#   bids - AdWords::V200902::AdGroupService::AdGroupBids
#   stats - AdWords::V200902::AdGroupService::Stats
class AdGroup
  attr_accessor :id
  attr_accessor :campaignId
  attr_accessor :campaignName
  attr_accessor :name
  attr_accessor :status
  attr_accessor :bids
  attr_accessor :stats

  def initialize(id = nil, campaignId = nil, campaignName = nil, name = nil, status = nil, bids = nil, stats = nil)
    @id = id
    @campaignId = campaignId
    @campaignName = campaignName
    @name = name
    @status = status
    @bids = bids
    @stats = stats
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}Operation
# abstract
#   operator - AdWords::V200902::AdGroupService::Operator
#   operation_Type - SOAP::SOAPString
class Operation
  attr_accessor :operator
  attr_accessor :operation_Type

  def initialize(operator = nil, operation_Type = nil)
    @operator = operator
    @operation_Type = operation_Type
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupOperation
#   operator - AdWords::V200902::AdGroupService::Operator
#   operation_Type - SOAP::SOAPString
#   operand - AdWords::V200902::AdGroupService::AdGroup
class AdGroupOperation < Operation
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

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupPage
#   totalNumEntries - SOAP::SOAPInt
#   page_Type - SOAP::SOAPString
#   entries - AdWords::V200902::AdGroupService::AdGroup
class AdGroupPage < Page
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

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupReturnValue
#   listReturnValue_Type - SOAP::SOAPString
#   value - AdWords::V200902::AdGroupService::AdGroup
class AdGroupReturnValue < ListReturnValue
  attr_accessor :listReturnValue_Type
  attr_accessor :value

  def initialize(listReturnValue_Type = nil, value = [])
    @listReturnValue_Type = listReturnValue_Type
    @value = value
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroup.Status
class AdGroupStatus < ::String
  DELETED = AdGroupStatus.new("DELETED")
  ENABLED = AdGroupStatus.new("ENABLED")
  PAUSED = AdGroupStatus.new("PAUSED")
end

# {https://adwords.google.com/api/adwords/cm/v200902}AdGroupServiceError.Reason
class AdGroupServiceErrorReason < ::String
  ADGROUP_CAMPAIGN_MISMATCH = AdGroupServiceErrorReason.new("ADGROUP_CAMPAIGN_MISMATCH")
  ADVERTISER_NOT_ON_CONTENT_NETWORK = AdGroupServiceErrorReason.new("ADVERTISER_NOT_ON_CONTENT_NETWORK")
  BIDS_NOT_REQUIRED = AdGroupServiceErrorReason.new("BIDS_NOT_REQUIRED")
  BID_EXCEEDS_AUTO_BUDGET = AdGroupServiceErrorReason.new("BID_EXCEEDS_AUTO_BUDGET")
  BID_EXCEEDS_CUSTOM_BUDGET = AdGroupServiceErrorReason.new("BID_EXCEEDS_CUSTOM_BUDGET")
  BID_EXCEEDS_DAILY_BUDGET = AdGroupServiceErrorReason.new("BID_EXCEEDS_DAILY_BUDGET")
  BID_EXCEEDS_MONTHLY_BUDGET = AdGroupServiceErrorReason.new("BID_EXCEEDS_MONTHLY_BUDGET")
  BID_TOO_BIG = AdGroupServiceErrorReason.new("BID_TOO_BIG")
  BID_TOO_SMALL = AdGroupServiceErrorReason.new("BID_TOO_SMALL")
  BID_TYPE_AND_BIDDING_STRATEGY_MISMATCH = AdGroupServiceErrorReason.new("BID_TYPE_AND_BIDDING_STRATEGY_MISMATCH")
  DUPLICATE_ADGROUP_NAME = AdGroupServiceErrorReason.new("DUPLICATE_ADGROUP_NAME")
  ILLEGAL_MANUAL_BID = AdGroupServiceErrorReason.new("ILLEGAL_MANUAL_BID")
  INCOMPATIBLE_WITH_KEYWORD_AND_SITE_VBB = AdGroupServiceErrorReason.new("INCOMPATIBLE_WITH_KEYWORD_AND_SITE_VBB")
  INCOMPATIBLE_WITH_KEYWORD_CPC = AdGroupServiceErrorReason.new("INCOMPATIBLE_WITH_KEYWORD_CPC")
  INCOMPATIBLE_WITH_KEYWORD_CPC_AND_SITE_CPC = AdGroupServiceErrorReason.new("INCOMPATIBLE_WITH_KEYWORD_CPC_AND_SITE_CPC")
  INCOMPATIBLE_WITH_KEYWORD_CPM = AdGroupServiceErrorReason.new("INCOMPATIBLE_WITH_KEYWORD_CPM")
  INCOMPATIBLE_WITH_KEYWORD_CPM_AND_SITE_CPM = AdGroupServiceErrorReason.new("INCOMPATIBLE_WITH_KEYWORD_CPM_AND_SITE_CPM")
  INCOMPATIBLE_WITH_SITE_CPC = AdGroupServiceErrorReason.new("INCOMPATIBLE_WITH_SITE_CPC")
  INCOMPATIBLE_WITH_SITE_CPM = AdGroupServiceErrorReason.new("INCOMPATIBLE_WITH_SITE_CPM")
  INCOMPATIBLE_WITH_SITE_VBB = AdGroupServiceErrorReason.new("INCOMPATIBLE_WITH_SITE_VBB")
  INCOMPATIBLE_WITH_VBB = AdGroupServiceErrorReason.new("INCOMPATIBLE_WITH_VBB")
  INVALID_ADGROUP_ID = AdGroupServiceErrorReason.new("INVALID_ADGROUP_ID")
  INVALID_ADGROUP_NAME = AdGroupServiceErrorReason.new("INVALID_ADGROUP_NAME")
  INVALID_BID = AdGroupServiceErrorReason.new("INVALID_BID")
  MISSING_ADGROUP_NAME = AdGroupServiceErrorReason.new("MISSING_ADGROUP_NAME")
  MISSING_BID = AdGroupServiceErrorReason.new("MISSING_BID")
  MULTIPLE_BID_TYPES = AdGroupServiceErrorReason.new("MULTIPLE_BID_TYPES")
  NOT_WHITELISTED_FOR_SITE_CPC = AdGroupServiceErrorReason.new("NOT_WHITELISTED_FOR_SITE_CPC")
  NO_CAMPAIGN_BUDGET = AdGroupServiceErrorReason.new("NO_CAMPAIGN_BUDGET")
  SEPARATE_CONTENT_BIDS_INAPPLICABLE = AdGroupServiceErrorReason.new("SEPARATE_CONTENT_BIDS_INAPPLICABLE")
  SEPARATE_CONTENT_BIDS_NOT_ENABLED = AdGroupServiceErrorReason.new("SEPARATE_CONTENT_BIDS_NOT_ENABLED")
  TOO_MANY_FRACTION_DIGITS = AdGroupServiceErrorReason.new("TOO_MANY_FRACTION_DIGITS")
  USE_SET_OPERATOR_AND_MARK_STATUS_TO_DELETED = AdGroupServiceErrorReason.new("USE_SET_OPERATOR_AND_MARK_STATUS_TO_DELETED")
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

# {https://adwords.google.com/api/adwords/cm/v200902}OperationAccessDenied.Reason
class OperationAccessDeniedReason < ::String
  ACTION_NOT_PERMITTED = OperationAccessDeniedReason.new("ACTION_NOT_PERMITTED")
  ADD_OPERATION_NOT_PERMITTED = OperationAccessDeniedReason.new("ADD_OPERATION_NOT_PERMITTED")
  REMOVE_OPERATION_NOT_PERMITTED = OperationAccessDeniedReason.new("REMOVE_OPERATION_NOT_PERMITTED")
  SET_OPERATION_NOT_PERMITTED = OperationAccessDeniedReason.new("SET_OPERATION_NOT_PERMITTED")
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

# {https://adwords.google.com/api/adwords/cm/v200902}QuotaError.Reason
class QuotaErrorReason < ::String
  TOO_MANY_ADGROUPS_PER_CAMPAIGN = QuotaErrorReason.new("TOO_MANY_ADGROUPS_PER_CAMPAIGN")
  TOO_MANY_CAMPAIGNS_PER_ACCOUNT = QuotaErrorReason.new("TOO_MANY_CAMPAIGNS_PER_ACCOUNT")
  TOO_MANY_CONVERSION_TYPES_PER_ACCOUNT = QuotaErrorReason.new("TOO_MANY_CONVERSION_TYPES_PER_ACCOUNT")
  TOO_MANY_KEYWORDS_PER_ADGROUP = QuotaErrorReason.new("TOO_MANY_KEYWORDS_PER_ADGROUP")
  TOO_MANY_KEYWORDS_PER_CAMPAIGN = QuotaErrorReason.new("TOO_MANY_KEYWORDS_PER_CAMPAIGN")
  TOO_MANY_KEYWORDS_PER_CUSTOMER = QuotaErrorReason.new("TOO_MANY_KEYWORDS_PER_CUSTOMER")
  TOO_MANY_SITES_PER_ADGROUP = QuotaErrorReason.new("TOO_MANY_SITES_PER_ADGROUP")
  TOO_MANY_SITES_PER_CAMPAIGN = QuotaErrorReason.new("TOO_MANY_SITES_PER_CAMPAIGN")
end

# {https://adwords.google.com/api/adwords/cm/v200902}ReadOnlyError.Reason
class ReadOnlyErrorReason < ::String
  READ_ONLY = ReadOnlyErrorReason.new("READ_ONLY")
end

# {https://adwords.google.com/api/adwords/cm/v200902}RequiredError.Reason
class RequiredErrorReason < ::String
  REQUIRED = RequiredErrorReason.new("REQUIRED")
end

# {https://adwords.google.com/api/adwords/cm/v200902}Stats.Network
class StatsNetwork < ::String
  ALL = StatsNetwork.new("ALL")
  CONTENT = StatsNetwork.new("CONTENT")
  CONTENT_KEYWORD_BID = StatsNetwork.new("CONTENT_KEYWORD_BID")
  CONTENT_PLACEMENT_BID = StatsNetwork.new("CONTENT_PLACEMENT_BID")
  GOOGLE_SEARCH = StatsNetwork.new("GOOGLE_SEARCH")
  SEARCH = StatsNetwork.new("SEARCH")
  SEARCH_NETWORK = StatsNetwork.new("SEARCH_NETWORK")
end

# {https://adwords.google.com/api/adwords/cm/v200902}StatsQueryError.Reason
class StatsQueryErrorReason < ::String
  DATE_NOT_IN_VALID_RANGE = StatsQueryErrorReason.new("DATE_NOT_IN_VALID_RANGE")
end

# {https://adwords.google.com/api/adwords/cm/v200902}get
#   adGroupSelector - AdWords::V200902::AdGroupService::AdGroupSelector
class Get
  attr_accessor :adGroupSelector

  def initialize(adGroupSelector = nil)
    @adGroupSelector = adGroupSelector
  end
end

# {https://adwords.google.com/api/adwords/cm/v200902}getResponse
#   rval - AdWords::V200902::AdGroupService::AdGroupPage
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
#   rval - AdWords::V200902::AdGroupService::AdGroupReturnValue
class MutateResponse
  attr_accessor :rval

  def initialize(rval = nil)
    @rval = rval
  end
end


end; end; end
