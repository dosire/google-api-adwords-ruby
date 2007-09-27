require 'adwords4r/v10/AdGroupService'
require 'soap/mapping'

module AdWords; module AdGroupService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new

  EncodedRegistry.register(
    :class => AdWords::AdGroupService::AdGroup,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "AdGroup",
    :schema_element => [
      ["campaignId", "SOAP::SOAPInt"],
      ["id", "SOAP::SOAPInt"],
      ["maxContentCpc", "SOAP::SOAPLong", [0, 1]],
      ["maxCpc", "SOAP::SOAPLong", [0, 1]],
      ["maxCpm", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["proxyMaxCpc", "SOAP::SOAPLong", [0, 1]],
      ["status", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AdGroupService::ApiError,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "ApiError",
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["detail", "SOAP::SOAPString"],
      ["field", "SOAP::SOAPString", [0, 1]],
      ["index", "SOAP::SOAPInt"],
      ["isExemptable", "SOAP::SOAPBoolean"],
      ["textIndex", "SOAP::SOAPInt", [0, 1]],
      ["textLength", "SOAP::SOAPInt", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AdGroupService::ApiException,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "ApiException",
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::AdGroupService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AdGroupService::StatsRecord,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "StatsRecord",
    :schema_element => [
      ["averagePosition", "SOAP::SOAPDouble"],
      ["clicks", "SOAP::SOAPLong"],
      ["conversionRate", "SOAP::SOAPDouble"],
      ["conversions", "SOAP::SOAPLong"],
      ["cost", "SOAP::SOAPLong"],
      ["id", "SOAP::SOAPLong"],
      ["impressions", "SOAP::SOAPLong"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AdGroupService::AdGroupStatus,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "AdGroupStatus"
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::AdGroup,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "AdGroup",
    :schema_qualified => false,
    :schema_element => [
      ["campaignId", "SOAP::SOAPInt"],
      ["id", "SOAP::SOAPInt"],
      ["maxContentCpc", "SOAP::SOAPLong", [0, 1]],
      ["maxCpc", "SOAP::SOAPLong", [0, 1]],
      ["maxCpm", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["proxyMaxCpc", "SOAP::SOAPLong", [0, 1]],
      ["status", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::ApiError,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "ApiError",
    :schema_qualified => false,
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["detail", "SOAP::SOAPString"],
      ["field", "SOAP::SOAPString", [0, 1]],
      ["index", "SOAP::SOAPInt"],
      ["isExemptable", "SOAP::SOAPBoolean"],
      ["textIndex", "SOAP::SOAPInt", [0, 1]],
      ["textLength", "SOAP::SOAPInt", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::ApiException,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "ApiException",
    :schema_qualified => false,
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::AdGroupService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::StatsRecord,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "StatsRecord",
    :schema_qualified => false,
    :schema_element => [
      ["averagePosition", "SOAP::SOAPDouble"],
      ["clicks", "SOAP::SOAPLong"],
      ["conversionRate", "SOAP::SOAPDouble"],
      ["conversions", "SOAP::SOAPLong"],
      ["cost", "SOAP::SOAPLong"],
      ["id", "SOAP::SOAPLong"],
      ["impressions", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::AdGroupStatus,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_type => "AdGroupStatus"
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::AddAdGroup,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "addAdGroup",
    :schema_qualified => true,
    :schema_element => [
      ["campaignID", "SOAP::SOAPInt"],
      ["newData", "AdWords::AdGroupService::AdGroup"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::AddAdGroupList,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "addAdGroupList",
    :schema_qualified => true,
    :schema_element => [
      ["campaignID", "SOAP::SOAPInt"],
      ["newData", "AdWords::AdGroupService::AdGroup[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::AddAdGroupListResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "addAdGroupListResponse",
    :schema_element => [
      ["addAdGroupListReturn", ["AdWords::AdGroupService::AdGroup[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "addAdGroupListReturn")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::AddAdGroupResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "addAdGroupResponse",
    :schema_qualified => true,
    :schema_element => [
      ["addAdGroupReturn", "AdWords::AdGroupService::AdGroup"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::ApiException,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "fault",
    :schema_qualified => true,
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::AdGroupService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::GetAdGroup,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getAdGroup",
    :schema_qualified => true,
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::GetAdGroupList,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getAdGroupList",
    :schema_element => [
      ["adgroupIDs", ["SOAP::SOAPInt[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "adgroupIDs")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::GetAdGroupListResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getAdGroupListResponse",
    :schema_element => [
      ["getAdGroupListReturn", ["AdWords::AdGroupService::AdGroup[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "getAdGroupListReturn")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::GetAdGroupResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getAdGroupResponse",
    :schema_qualified => true,
    :schema_element => [
      ["getAdGroupReturn", "AdWords::AdGroupService::AdGroup"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::GetAdGroupStats,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getAdGroupStats",
    :schema_qualified => true,
    :schema_element => [
      ["campaignId", "SOAP::SOAPInt"],
      ["adGroupIds", "SOAP::SOAPInt[]", [1, nil]],
      ["startDay", "SOAP::SOAPDate"],
      ["endDay", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::GetAdGroupStatsResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getAdGroupStatsResponse",
    :schema_element => [
      ["getAdGroupStatsReturn", ["AdWords::AdGroupService::StatsRecord[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "getAdGroupStatsReturn")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::GetAllAdGroups,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getAllAdGroups",
    :schema_qualified => true,
    :schema_element => [
      ["campaignID", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::GetAllAdGroupsResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "getAllAdGroupsResponse",
    :schema_element => [
      ["getAllAdGroupsReturn", ["AdWords::AdGroupService::AdGroup[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "getAllAdGroupsReturn")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::UpdateAdGroup,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "updateAdGroup",
    :schema_qualified => true,
    :schema_element => [
      ["changedData", "AdWords::AdGroupService::AdGroup"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::UpdateAdGroupList,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "updateAdGroupList",
    :schema_element => [
      ["changedData", ["AdWords::AdGroupService::AdGroup[]", XSD::QName.new("https://adwords.google.com/api/adwords/v10", "changedData")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::UpdateAdGroupListResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "updateAdGroupListResponse",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::UpdateAdGroupResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v10",
    :schema_name => "updateAdGroupResponse",
    :schema_qualified => true,
    :schema_element => []
  )
end

end; end
