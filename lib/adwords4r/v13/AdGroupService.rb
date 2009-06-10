require 'xsd/qname'

module AdWords; module V13; module AdGroupService


# AdGroup
# - campaignId - SOAP::SOAPInt
# - id - SOAP::SOAPLong
# - keywordContentMaxCpc - SOAP::SOAPLong
# - keywordMaxCpc - SOAP::SOAPLong
# - maxCpa - SOAP::SOAPLong
# - name - SOAP::SOAPString
# - proxyKeywordMaxCpc - SOAP::SOAPLong
# - siteMaxCpc - SOAP::SOAPLong
# - siteMaxCpm - SOAP::SOAPLong
# - status - AdWords::V13::AdGroupService::AdGroupStatus
class AdGroup
  attr_accessor :campaignId
  attr_accessor :id
  attr_accessor :keywordContentMaxCpc
  attr_accessor :keywordMaxCpc
  attr_accessor :maxCpa
  attr_accessor :name
  attr_accessor :proxyKeywordMaxCpc
  attr_accessor :siteMaxCpc
  attr_accessor :siteMaxCpm
  attr_accessor :status

  def initialize(campaignId = nil, id = nil, keywordContentMaxCpc = nil, keywordMaxCpc = nil, maxCpa = nil, name = nil, proxyKeywordMaxCpc = nil, siteMaxCpc = nil, siteMaxCpm = nil, status = nil)
    @campaignId = campaignId
    @id = id
    @keywordContentMaxCpc = keywordContentMaxCpc
    @keywordMaxCpc = keywordMaxCpc
    @maxCpa = maxCpa
    @name = name
    @proxyKeywordMaxCpc = proxyKeywordMaxCpc
    @siteMaxCpc = siteMaxCpc
    @siteMaxCpm = siteMaxCpm
    @status = status
  end
end

# ApiError
# - code - SOAP::SOAPInt
# - detail - SOAP::SOAPString
# - field - SOAP::SOAPString
# - index - SOAP::SOAPInt
# - isExemptable - SOAP::SOAPBoolean
# - textIndex - SOAP::SOAPInt
# - textLength - SOAP::SOAPInt
# - trigger - SOAP::SOAPString
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

# ApiException
# - code - SOAP::SOAPInt
# - errors - AdWords::V13::AdGroupService::ApiError
# - internal - SOAP::SOAPBoolean
# - message - SOAP::SOAPString
# - trigger - SOAP::SOAPString
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

# StatsRecord
# - averagePosition - SOAP::SOAPDouble
# - clicks - SOAP::SOAPLong
# - conversionRate - SOAP::SOAPDouble
# - conversions - SOAP::SOAPLong
# - cost - SOAP::SOAPLong
# - id - SOAP::SOAPLong
# - impressions - SOAP::SOAPLong
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

# AdGroupStatus
class AdGroupStatus < ::String
  Deleted = AdGroupStatus.new("Deleted")
  Enabled = AdGroupStatus.new("Enabled")
  Paused = AdGroupStatus.new("Paused")
end

# addAdGroup
# - campaignID - SOAP::SOAPInt
# - newData - AdWords::V13::AdGroupService::AdGroup
class AddAdGroup #:nodoc: all
  attr_accessor :campaignID
  attr_accessor :newData

  def initialize(campaignID = nil, newData = nil)
    @campaignID = campaignID
    @newData = newData
  end
end

# addAdGroupList
# - campaignID - SOAP::SOAPInt
# - newData - AdWords::V13::AdGroupService::AdGroup
class AddAdGroupList #:nodoc: all
  attr_accessor :campaignID
  attr_accessor :newData

  def initialize(campaignID = nil, newData = [])
    @campaignID = campaignID
    @newData = newData
  end
end

# addAdGroupListResponse
class AddAdGroupListResponse < ::Array #:nodoc: all
end

# addAdGroupResponse
# - addAdGroupReturn - AdWords::V13::AdGroupService::AdGroup
class AddAdGroupResponse #:nodoc: all
  attr_accessor :addAdGroupReturn

  def initialize(addAdGroupReturn = nil)
    @addAdGroupReturn = addAdGroupReturn
  end
end

# getActiveAdGroups
# - campaignID - SOAP::SOAPInt
class GetActiveAdGroups #:nodoc: all
  attr_accessor :campaignID

  def initialize(campaignID = nil)
    @campaignID = campaignID
  end
end

# getActiveAdGroupsResponse
class GetActiveAdGroupsResponse < ::Array #:nodoc: all
end

# getAdGroup
# - adGroupId - SOAP::SOAPLong
class GetAdGroup #:nodoc: all
  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# getAdGroupList
class GetAdGroupList < ::Array #:nodoc: all
end

# getAdGroupListResponse
class GetAdGroupListResponse < ::Array #:nodoc: all
end

# getAdGroupResponse
# - getAdGroupReturn - AdWords::V13::AdGroupService::AdGroup
class GetAdGroupResponse #:nodoc: all
  attr_accessor :getAdGroupReturn

  def initialize(getAdGroupReturn = nil)
    @getAdGroupReturn = getAdGroupReturn
  end
end

# getAdGroupStats
# - campaignId - SOAP::SOAPInt
# - adGroupIds - SOAP::SOAPLong
# - startDay - SOAP::SOAPDate
# - endDay - SOAP::SOAPDate
class GetAdGroupStats #:nodoc: all
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

# getAdGroupStatsResponse
class GetAdGroupStatsResponse < ::Array #:nodoc: all
end

# getAllAdGroups
# - campaignID - SOAP::SOAPInt
class GetAllAdGroups #:nodoc: all
  attr_accessor :campaignID

  def initialize(campaignID = nil)
    @campaignID = campaignID
  end
end

# getAllAdGroupsResponse
class GetAllAdGroupsResponse < ::Array #:nodoc: all
end

# updateAdGroup
# - changedData - AdWords::V13::AdGroupService::AdGroup
class UpdateAdGroup #:nodoc: all
  attr_accessor :changedData

  def initialize(changedData = nil)
    @changedData = changedData
  end
end

# updateAdGroupList
class UpdateAdGroupList < ::Array #:nodoc: all
end

# updateAdGroupListResponse
class UpdateAdGroupListResponse #:nodoc: all
  def initialize
  end
end

# updateAdGroupResponse
class UpdateAdGroupResponse #:nodoc: all
  def initialize
  end
end


end; end; end
