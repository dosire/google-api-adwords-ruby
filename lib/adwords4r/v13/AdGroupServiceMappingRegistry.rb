require 'adwords4r/v13/AdGroupService'
require 'soap/mapping'

module AdWords; module AdGroupService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV13 = "https://adwords.google.com/api/adwords/v13"

  EncodedRegistry.register(
    :class => AdWords::AdGroupService::AdGroup,
    :schema_type => XSD::QName.new(NsV13, "AdGroup"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPInt"],
      ["id", "SOAP::SOAPLong"],
      ["keywordContentMaxCpc", "SOAP::SOAPLong", [0, 1]],
      ["keywordMaxCpc", "SOAP::SOAPLong", [0, 1]],
      ["maxCpa", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["proxyKeywordMaxCpc", "SOAP::SOAPLong", [0, 1]],
      ["siteMaxCpc", "SOAP::SOAPLong", [0, 1]],
      ["siteMaxCpm", "SOAP::SOAPLong", [0, 1]],
      ["status", "AdWords::AdGroupService::AdGroupStatus", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AdGroupService::ApiError,
    :schema_type => XSD::QName.new(NsV13, "ApiError"),
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
    :schema_type => XSD::QName.new(NsV13, "ApiException"),
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
    :schema_type => XSD::QName.new(NsV13, "StatsRecord"),
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
    :schema_type => XSD::QName.new(NsV13, "AdGroupStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::AdGroup,
    :schema_type => XSD::QName.new(NsV13, "AdGroup"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPInt"],
      ["id", "SOAP::SOAPLong"],
      ["keywordContentMaxCpc", "SOAP::SOAPLong", [0, 1]],
      ["keywordMaxCpc", "SOAP::SOAPLong", [0, 1]],
      ["maxCpa", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["proxyKeywordMaxCpc", "SOAP::SOAPLong", [0, 1]],
      ["siteMaxCpc", "SOAP::SOAPLong", [0, 1]],
      ["siteMaxCpm", "SOAP::SOAPLong", [0, 1]],
      ["status", "AdWords::AdGroupService::AdGroupStatus", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::ApiError,
    :schema_type => XSD::QName.new(NsV13, "ApiError"),
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
    :schema_type => XSD::QName.new(NsV13, "ApiException"),
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
    :schema_type => XSD::QName.new(NsV13, "StatsRecord"),
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
    :schema_type => XSD::QName.new(NsV13, "AdGroupStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::AddAdGroup,
    :schema_name => XSD::QName.new(NsV13, "addAdGroup"),
    :schema_element => [
      ["campaignID", "SOAP::SOAPInt"],
      ["newData", "AdWords::AdGroupService::AdGroup"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::AddAdGroupList,
    :schema_name => XSD::QName.new(NsV13, "addAdGroupList"),
    :schema_element => [
      ["campaignID", "SOAP::SOAPInt"],
      ["newData", "AdWords::AdGroupService::AdGroup[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::AddAdGroupListResponse,
    :schema_name => XSD::QName.new(NsV13, "addAdGroupListResponse"),
    :schema_element => [
      ["addAdGroupListReturn", "AdWords::AdGroupService::AdGroup[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::AddAdGroupResponse,
    :schema_name => XSD::QName.new(NsV13, "addAdGroupResponse"),
    :schema_element => [
      ["addAdGroupReturn", "AdWords::AdGroupService::AdGroup"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::ApiException,
    :schema_name => XSD::QName.new(NsV13, "fault"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::AdGroupService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::GetActiveAdGroups,
    :schema_name => XSD::QName.new(NsV13, "getActiveAdGroups"),
    :schema_element => [
      ["campaignID", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::GetActiveAdGroupsResponse,
    :schema_name => XSD::QName.new(NsV13, "getActiveAdGroupsResponse"),
    :schema_element => [
      ["getActiveAdGroupsReturn", "AdWords::AdGroupService::AdGroup[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::GetAdGroup,
    :schema_name => XSD::QName.new(NsV13, "getAdGroup"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::GetAdGroupList,
    :schema_name => XSD::QName.new(NsV13, "getAdGroupList"),
    :schema_element => [
      ["adgroupIDs", "SOAP::SOAPLong[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::GetAdGroupListResponse,
    :schema_name => XSD::QName.new(NsV13, "getAdGroupListResponse"),
    :schema_element => [
      ["getAdGroupListReturn", "AdWords::AdGroupService::AdGroup[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::GetAdGroupResponse,
    :schema_name => XSD::QName.new(NsV13, "getAdGroupResponse"),
    :schema_element => [
      ["getAdGroupReturn", "AdWords::AdGroupService::AdGroup"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::GetAdGroupStats,
    :schema_name => XSD::QName.new(NsV13, "getAdGroupStats"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPInt"],
      ["adGroupIds", "SOAP::SOAPLong[]", [1, nil]],
      ["startDay", "SOAP::SOAPDate"],
      ["endDay", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::GetAdGroupStatsResponse,
    :schema_name => XSD::QName.new(NsV13, "getAdGroupStatsResponse"),
    :schema_element => [
      ["getAdGroupStatsReturn", "AdWords::AdGroupService::StatsRecord[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::GetAllAdGroups,
    :schema_name => XSD::QName.new(NsV13, "getAllAdGroups"),
    :schema_element => [
      ["campaignID", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::GetAllAdGroupsResponse,
    :schema_name => XSD::QName.new(NsV13, "getAllAdGroupsResponse"),
    :schema_element => [
      ["getAllAdGroupsReturn", "AdWords::AdGroupService::AdGroup[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::UpdateAdGroup,
    :schema_name => XSD::QName.new(NsV13, "updateAdGroup"),
    :schema_element => [
      ["changedData", "AdWords::AdGroupService::AdGroup"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::UpdateAdGroupList,
    :schema_name => XSD::QName.new(NsV13, "updateAdGroupList"),
    :schema_element => [
      ["changedData", "AdWords::AdGroupService::AdGroup[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::UpdateAdGroupListResponse,
    :schema_name => XSD::QName.new(NsV13, "updateAdGroupListResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::UpdateAdGroupResponse,
    :schema_name => XSD::QName.new(NsV13, "updateAdGroupResponse"),
    :schema_element => []
  )

end

end; end
