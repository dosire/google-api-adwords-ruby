module AdWords
require 'xsd/qname'

# {https://adwords.google.com/api/adwords/v9}addAdGroup
class AddAdGroup
  @@schema_type = "addAdGroup"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["campaignID", "SOAP::SOAPInt"], ["newData", "AdGroup"]]

  attr_accessor :campaignID
  attr_accessor :newData

  def initialize(campaignID = nil, newData = nil)
    @campaignID = campaignID
    @newData = newData
  end
end

# {https://adwords.google.com/api/adwords/v9}addAdGroupList
class AddAdGroupList
  @@schema_type = "addAdGroupList"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["campaignID", "SOAP::SOAPInt"], ["newData", "AdGroup[]"]]

  attr_accessor :campaignID
  attr_accessor :newData

  def initialize(campaignID = nil, newData = [])
    @campaignID = campaignID
    @newData = newData
  end
end

# {https://adwords.google.com/api/adwords/v9}addAdGroupListResponse
class AddAdGroupListResponse
  @@schema_type = "addAdGroupListResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["addAdGroupListReturn", "AdGroup[]"]]

  attr_accessor :addAdGroupListReturn

  def initialize(addAdGroupListReturn = [])
    @addAdGroupListReturn = addAdGroupListReturn
  end
end

# {https://adwords.google.com/api/adwords/v9}addAdGroupResponse
class AddAdGroupResponse
  @@schema_type = "addAdGroupResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["addAdGroupReturn", "AdGroup"]]

  attr_accessor :addAdGroupReturn

  def initialize(addAdGroupReturn = nil)
    @addAdGroupReturn = addAdGroupReturn
  end
end

# {https://adwords.google.com/api/adwords/v9}getAdGroup
class GetAdGroup
  @@schema_type = "getAdGroup"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["adGroupId", "SOAP::SOAPInt"]]

  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adwords.google.com/api/adwords/v9}getAdGroupList
class GetAdGroupList
  @@schema_type = "getAdGroupList"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["adgroupIDs", "SOAP::SOAPInt[]"]]

  attr_accessor :adgroupIDs

  def initialize(adgroupIDs = [])
    @adgroupIDs = adgroupIDs
  end
end

# {https://adwords.google.com/api/adwords/v9}getAdGroupListResponse
class GetAdGroupListResponse
  @@schema_type = "getAdGroupListResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["getAdGroupListReturn", "AdGroup[]"]]

  attr_accessor :getAdGroupListReturn

  def initialize(getAdGroupListReturn = [])
    @getAdGroupListReturn = getAdGroupListReturn
  end
end

# {https://adwords.google.com/api/adwords/v9}getAdGroupResponse
class GetAdGroupResponse
  @@schema_type = "getAdGroupResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["getAdGroupReturn", "AdGroup"]]

  attr_accessor :getAdGroupReturn

  def initialize(getAdGroupReturn = nil)
    @getAdGroupReturn = getAdGroupReturn
  end
end

# {https://adwords.google.com/api/adwords/v9}getAdGroupStats
class GetAdGroupStats
  @@schema_type = "getAdGroupStats"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["campaignId", "SOAP::SOAPInt"], ["adGroupIds", "SOAP::SOAPInt[]"], ["startDay", "SOAP::SOAPDate"], ["endDay", "SOAP::SOAPDate"]]

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

# {https://adwords.google.com/api/adwords/v9}getAdGroupStatsResponse
class GetAdGroupStatsResponse
  @@schema_type = "getAdGroupStatsResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["getAdGroupStatsReturn", "StatsRecord[]"]]

  attr_accessor :getAdGroupStatsReturn

  def initialize(getAdGroupStatsReturn = [])
    @getAdGroupStatsReturn = getAdGroupStatsReturn
  end
end

# {https://adwords.google.com/api/adwords/v9}getAllAdGroups
class GetAllAdGroups
  @@schema_type = "getAllAdGroups"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["campaignID", "SOAP::SOAPInt"]]

  attr_accessor :campaignID

  def initialize(campaignID = nil)
    @campaignID = campaignID
  end
end

# {https://adwords.google.com/api/adwords/v9}getAllAdGroupsResponse
class GetAllAdGroupsResponse
  @@schema_type = "getAllAdGroupsResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["getAllAdGroupsReturn", "AdGroup[]"]]

  attr_accessor :getAllAdGroupsReturn

  def initialize(getAllAdGroupsReturn = [])
    @getAllAdGroupsReturn = getAllAdGroupsReturn
  end
end

# {https://adwords.google.com/api/adwords/v9}updateAdGroup
class UpdateAdGroup
  @@schema_type = "updateAdGroup"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["changedData", "AdGroup"]]

  attr_accessor :changedData

  def initialize(changedData = nil)
    @changedData = changedData
  end
end

# {https://adwords.google.com/api/adwords/v9}updateAdGroupList
class UpdateAdGroupList
  @@schema_type = "updateAdGroupList"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["changedData", "AdGroup[]"]]

  attr_accessor :changedData

  def initialize(changedData = [])
    @changedData = changedData
  end
end

# {https://adwords.google.com/api/adwords/v9}updateAdGroupListResponse
class UpdateAdGroupListResponse
  @@schema_type = "updateAdGroupListResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v9}updateAdGroupResponse
class UpdateAdGroupResponse
  @@schema_type = "updateAdGroupResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v9}AdGroup
class AdGroup
  @@schema_type = "AdGroup"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_element = [["campaignId", "SOAP::SOAPInt"], ["id", "SOAP::SOAPInt"], ["maxContentCpc", "SOAP::SOAPLong"], ["maxCpc", "SOAP::SOAPLong"], ["maxCpm", "SOAP::SOAPLong"], ["name", "SOAP::SOAPString"], ["proxyMaxCpc", "SOAP::SOAPLong"], ["status", "SOAP::SOAPString"]]

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

# {https://adwords.google.com/api/adwords/v9}ApiError
class ApiError
  @@schema_type = "ApiError"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_element = [["code", "SOAP::SOAPInt"], ["detail", "SOAP::SOAPString"], ["field", "SOAP::SOAPString"], ["index", "SOAP::SOAPInt"], ["isExemptable", "SOAP::SOAPBoolean"], ["textIndex", "SOAP::SOAPInt"], ["textLength", "SOAP::SOAPInt"], ["trigger", "SOAP::SOAPString"]]

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

# {https://adwords.google.com/api/adwords/v9}ApiException
class ApiException
  @@schema_type = "ApiException"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_element = [["code", "SOAP::SOAPInt"], ["errors", "ApiError[]"], ["internal", "SOAP::SOAPBoolean"], ["message", "SOAP::SOAPString"], ["trigger", "SOAP::SOAPString"]]

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

# {https://adwords.google.com/api/adwords/v9}StatsRecord
class StatsRecord
  @@schema_type = "StatsRecord"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
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

# {https://adwords.google.com/api/adwords/v9}AdGroupStatus
module AdGroupStatus
  Deleted = "Deleted"
  Enabled = "Enabled"
  Paused = "Paused"
end
end
