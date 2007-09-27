require 'xsd/qname'

module AdWords; module AdGroupService


# {https://adwords.google.com/api/adwords/v10}AdGroup
class AdGroup
  attr_accessor :campaignId
  attr_accessor :id
  attr_accessor :maxContentCpc
  attr_accessor :maxCpc
  attr_accessor :maxCpm
  attr_accessor :name
  attr_accessor :proxyMaxCpc
  attr_accessor :status

  def initialize(campaignId = nil, id = nil, maxContentCpc = nil, maxCpc = nil, maxCpm = nil, name = nil, proxyMaxCpc = nil, status = nil)
    @campaignId = campaignId
    @id = id
    @maxContentCpc = maxContentCpc
    @maxCpc = maxCpc
    @maxCpm = maxCpm
    @name = name
    @proxyMaxCpc = proxyMaxCpc
    @status = status
  end
end

# {https://adwords.google.com/api/adwords/v10}ApiError
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

# {https://adwords.google.com/api/adwords/v10}ApiException
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

# {https://adwords.google.com/api/adwords/v10}StatsRecord
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

# {https://adwords.google.com/api/adwords/v10}AdGroupStatus
class AdGroupStatus < ::String
  Deleted = AdGroupStatus.new("Deleted")
  Enabled = AdGroupStatus.new("Enabled")
  Paused = AdGroupStatus.new("Paused")
end

# {https://adwords.google.com/api/adwords/v10}addAdGroup
class AddAdGroup
  attr_accessor :campaignID
  attr_accessor :newData

  def initialize(campaignID = nil, newData = nil)
    @campaignID = campaignID
    @newData = newData
  end
end

# {https://adwords.google.com/api/adwords/v10}addAdGroupList
class AddAdGroupList
  attr_accessor :campaignID
  attr_accessor :newData

  def initialize(campaignID = nil, newData = [])
    @campaignID = campaignID
    @newData = newData
  end
end

# {https://adwords.google.com/api/adwords/v10}addAdGroupListResponse
class AddAdGroupListResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v10}addAdGroupResponse
class AddAdGroupResponse
  attr_accessor :addAdGroupReturn

  def initialize(addAdGroupReturn = nil)
    @addAdGroupReturn = addAdGroupReturn
  end
end

# {https://adwords.google.com/api/adwords/v10}getAdGroup
class GetAdGroup
  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adwords.google.com/api/adwords/v10}getAdGroupList
class GetAdGroupList < ::Array
end

# {https://adwords.google.com/api/adwords/v10}getAdGroupListResponse
class GetAdGroupListResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v10}getAdGroupResponse
class GetAdGroupResponse
  attr_accessor :getAdGroupReturn

  def initialize(getAdGroupReturn = nil)
    @getAdGroupReturn = getAdGroupReturn
  end
end

# {https://adwords.google.com/api/adwords/v10}getAdGroupStats
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

# {https://adwords.google.com/api/adwords/v10}getAdGroupStatsResponse
class GetAdGroupStatsResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v10}getAllAdGroups
class GetAllAdGroups
  attr_accessor :campaignID

  def initialize(campaignID = nil)
    @campaignID = campaignID
  end
end

# {https://adwords.google.com/api/adwords/v10}getAllAdGroupsResponse
class GetAllAdGroupsResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v10}updateAdGroup
class UpdateAdGroup
  attr_accessor :changedData

  def initialize(changedData = nil)
    @changedData = changedData
  end
end

# {https://adwords.google.com/api/adwords/v10}updateAdGroupList
class UpdateAdGroupList < ::Array
end

# {https://adwords.google.com/api/adwords/v10}updateAdGroupListResponse
class UpdateAdGroupListResponse
  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v10}updateAdGroupResponse
class UpdateAdGroupResponse
  def initialize
  end
end


end; end
