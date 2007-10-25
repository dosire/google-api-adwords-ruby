require 'xsd/qname'

module AdWords; module AdGroupService


# {https://adwords.google.com/api/adwords/v11}AdGroup
#   campaignId - SOAP::SOAPInt
#   id - SOAP::SOAPInt
#   keywordContentMaxCpc - SOAP::SOAPLong
#   keywordMaxCpc - SOAP::SOAPLong
#   name - SOAP::SOAPString
#   proxyKeywordMaxCpc - SOAP::SOAPLong
#   siteMaxCpm - SOAP::SOAPLong
#   status - AdWords::AdGroupService::AdGroupStatus
class AdGroup
  attr_accessor :campaignId
  attr_accessor :id
  attr_accessor :keywordContentMaxCpc
  attr_accessor :keywordMaxCpc
  attr_accessor :name
  attr_accessor :proxyKeywordMaxCpc
  attr_accessor :siteMaxCpm
  attr_accessor :status

  def initialize(campaignId = nil, id = nil, keywordContentMaxCpc = nil, keywordMaxCpc = nil, name = nil, proxyKeywordMaxCpc = nil, siteMaxCpm = nil, status = nil)
    @campaignId = campaignId
    @id = id
    @keywordContentMaxCpc = keywordContentMaxCpc
    @keywordMaxCpc = keywordMaxCpc
    @name = name
    @proxyKeywordMaxCpc = proxyKeywordMaxCpc
    @siteMaxCpm = siteMaxCpm
    @status = status
  end
end

# {https://adwords.google.com/api/adwords/v11}ApiError
#   code - SOAP::SOAPInt
#   detail - SOAP::SOAPString
#   field - SOAP::SOAPString
#   index - SOAP::SOAPInt
#   isExemptable - SOAP::SOAPBoolean
#   textIndex - SOAP::SOAPInt
#   textLength - SOAP::SOAPInt
#   trigger - SOAP::SOAPString
class ApiError
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

# {https://adwords.google.com/api/adwords/v11}ApiException
#   code - SOAP::SOAPInt
#   errors - AdWords::AdGroupService::ApiError
#   internal - SOAP::SOAPBoolean
#   message - SOAP::SOAPString
#   trigger - SOAP::SOAPString
class ApiException
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

# {https://adwords.google.com/api/adwords/v11}StatsRecord
#   averagePosition - SOAP::SOAPDouble
#   clicks - SOAP::SOAPLong
#   conversionRate - SOAP::SOAPDouble
#   conversions - SOAP::SOAPLong
#   cost - SOAP::SOAPLong
#   id - SOAP::SOAPLong
#   impressions - SOAP::SOAPLong
class StatsRecord
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

# {https://adwords.google.com/api/adwords/v11}AdGroupStatus
class AdGroupStatus < ::String
  Deleted = AdGroupStatus.new("Deleted")
  Enabled = AdGroupStatus.new("Enabled")
  Paused = AdGroupStatus.new("Paused")
end

# {https://adwords.google.com/api/adwords/v11}addAdGroup
#   campaignID - SOAP::SOAPInt
#   newData - AdWords::AdGroupService::AdGroup
class AddAdGroup
  attr_accessor :campaignID
  attr_accessor :newData

  def initialize(campaignID = nil, newData = nil)
    @campaignID = campaignID
    @newData = newData
  end
end

# {https://adwords.google.com/api/adwords/v11}addAdGroupList
#   campaignID - SOAP::SOAPInt
#   newData - AdWords::AdGroupService::AdGroup
class AddAdGroupList
  attr_accessor :campaignID
  attr_accessor :newData

  def initialize(campaignID = nil, newData = [])
    @campaignID = campaignID
    @newData = newData
  end
end

# {https://adwords.google.com/api/adwords/v11}addAdGroupListResponse
class AddAdGroupListResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v11}addAdGroupResponse
#   addAdGroupReturn - AdWords::AdGroupService::AdGroup
class AddAdGroupResponse
  attr_accessor :addAdGroupReturn

  def initialize(addAdGroupReturn = nil)
    @addAdGroupReturn = addAdGroupReturn
  end
end

# {https://adwords.google.com/api/adwords/v11}getAdGroup
#   adGroupId - SOAP::SOAPInt
class GetAdGroup
  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adwords.google.com/api/adwords/v11}getAdGroupList
class GetAdGroupList < ::Array
end

# {https://adwords.google.com/api/adwords/v11}getAdGroupListResponse
class GetAdGroupListResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v11}getAdGroupResponse
#   getAdGroupReturn - AdWords::AdGroupService::AdGroup
class GetAdGroupResponse
  attr_accessor :getAdGroupReturn

  def initialize(getAdGroupReturn = nil)
    @getAdGroupReturn = getAdGroupReturn
  end
end

# {https://adwords.google.com/api/adwords/v11}getAdGroupStats
#   campaignId - SOAP::SOAPInt
#   adGroupIds - SOAP::SOAPInt
#   startDay - SOAP::SOAPDate
#   endDay - SOAP::SOAPDate
class GetAdGroupStats
  attr_accessor :campaignId
  attr_accessor :adGroupIds
  attr_accessor :startDay
  attr_accessor :endDay

  def initialize(campaignId = nil, adGroupIds = [], startDay = nil, endDay = nil)
    @campaignId = campaignId
    @adGroupIds = adGroupIds
    @startDay = startDay
    @endDay = endDay
  end
end

# {https://adwords.google.com/api/adwords/v11}getAdGroupStatsResponse
class GetAdGroupStatsResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v11}getAllAdGroups
#   campaignID - SOAP::SOAPInt
class GetAllAdGroups
  attr_accessor :campaignID

  def initialize(campaignID = nil)
    @campaignID = campaignID
  end
end

# {https://adwords.google.com/api/adwords/v11}getAllAdGroupsResponse
class GetAllAdGroupsResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v11}updateAdGroup
#   changedData - AdWords::AdGroupService::AdGroup
class UpdateAdGroup
  attr_accessor :changedData

  def initialize(changedData = nil)
    @changedData = changedData
  end
end

# {https://adwords.google.com/api/adwords/v11}updateAdGroupList
class UpdateAdGroupList < ::Array
end

# {https://adwords.google.com/api/adwords/v11}updateAdGroupListResponse
class UpdateAdGroupListResponse
  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v11}updateAdGroupResponse
class UpdateAdGroupResponse
  def initialize
  end
end


end; end
