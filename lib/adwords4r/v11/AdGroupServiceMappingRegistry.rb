require 'adwords4r/v11/AdGroupService'
require 'soap/mapping'

module AdWords; module AdGroupService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV11 = "https://adwords.google.com/api/adwords/v11"

  EncodedRegistry.register(
    :class => AdWords::AdGroupService::AdGroup,
    :schema_type => XSD::QName.new(NsV11, "AdGroup"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPInt"],
      ["id", "SOAP::SOAPInt"],
      ["keywordContentMaxCpc", "SOAP::SOAPLong", [0, 1]],
      ["keywordMaxCpc", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["proxyKeywordMaxCpc", "SOAP::SOAPLong", [0, 1]],
      ["siteMaxCpm", "SOAP::SOAPLong", [0, 1]],
      ["status", "AdWords::AdGroupService::AdGroupStatus", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::AdGroupService::ApiError,
    :schema_type => XSD::QName.new(NsV11, "ApiError"),
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
    :schema_type => XSD::QName.new(NsV11, "ApiException"),
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
    :schema_type => XSD::QName.new(NsV11, "StatsRecord"),
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
    :schema_type => XSD::QName.new(NsV11, "AdGroupStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::AdGroup,
    :schema_type => XSD::QName.new(NsV11, "AdGroup"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPInt"],
      ["id", "SOAP::SOAPInt"],
      ["keywordContentMaxCpc", "SOAP::SOAPLong", [0, 1]],
      ["keywordMaxCpc", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString"],
      ["proxyKeywordMaxCpc", "SOAP::SOAPLong", [0, 1]],
      ["siteMaxCpm", "SOAP::SOAPLong", [0, 1]],
      ["status", "AdWords::AdGroupService::AdGroupStatus", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::ApiError,
    :schema_type => XSD::QName.new(NsV11, "ApiError"),
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
    :schema_type => XSD::QName.new(NsV11, "ApiException"),
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
    :schema_type => XSD::QName.new(NsV11, "StatsRecord"),
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
    :schema_type => XSD::QName.new(NsV11, "AdGroupStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::AddAdGroup,
    :schema_name => XSD::QName.new(NsV11, "addAdGroup"),
    :schema_element => [
      ["campaignID", "SOAP::SOAPInt"],
      ["newData", "AdWords::AdGroupService::AdGroup"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::AddAdGroupList,
    :schema_name => XSD::QName.new(NsV11, "addAdGroupList"),
    :schema_element => [
      ["campaignID", "SOAP::SOAPInt"],
      ["newData", "AdWords::AdGroupService::AdGroup[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::AddAdGroupListResponse,
    :schema_name => XSD::QName.new(NsV11, "addAdGroupListResponse"),
    :schema_element => [
      ["addAdGroupListReturn", "AdWords::AdGroupService::AdGroup[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::AddAdGroupResponse,
    :schema_name => XSD::QName.new(NsV11, "addAdGroupResponse"),
    :schema_element => [
      ["addAdGroupReturn", "AdWords::AdGroupService::AdGroup"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::ApiException,
    :schema_name => XSD::QName.new(NsV11, "fault"),
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
    :schema_name => XSD::QName.new(NsV11, "getAdGroup"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::GetAdGroupList,
    :schema_name => XSD::QName.new(NsV11, "getAdGroupList"),
    :schema_element => [
      ["adgroupIDs", "SOAP::SOAPInt[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::GetAdGroupListResponse,
    :schema_name => XSD::QName.new(NsV11, "getAdGroupListResponse"),
    :schema_element => [
      ["getAdGroupListReturn", "AdWords::AdGroupService::AdGroup[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::GetAdGroupResponse,
    :schema_name => XSD::QName.new(NsV11, "getAdGroupResponse"),
    :schema_element => [
      ["getAdGroupReturn", "AdWords::AdGroupService::AdGroup"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::GetAdGroupStats,
    :schema_name => XSD::QName.new(NsV11, "getAdGroupStats"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPInt"],
      ["adGroupIds", "SOAP::SOAPInt[]", [1, nil]],
      ["startDay", "SOAP::SOAPDate"],
      ["endDay", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::GetAdGroupStatsResponse,
    :schema_name => XSD::QName.new(NsV11, "getAdGroupStatsResponse"),
    :schema_element => [
      ["getAdGroupStatsReturn", "AdWords::AdGroupService::StatsRecord[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::GetAllAdGroups,
    :schema_name => XSD::QName.new(NsV11, "getAllAdGroups"),
    :schema_element => [
      ["campaignID", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::GetAllAdGroupsResponse,
    :schema_name => XSD::QName.new(NsV11, "getAllAdGroupsResponse"),
    :schema_element => [
      ["getAllAdGroupsReturn", "AdWords::AdGroupService::AdGroup[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::UpdateAdGroup,
    :schema_name => XSD::QName.new(NsV11, "updateAdGroup"),
    :schema_element => [
      ["changedData", "AdWords::AdGroupService::AdGroup"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::UpdateAdGroupList,
    :schema_name => XSD::QName.new(NsV11, "updateAdGroupList"),
    :schema_element => [
      ["changedData", "AdWords::AdGroupService::AdGroup[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::UpdateAdGroupListResponse,
    :schema_name => XSD::QName.new(NsV11, "updateAdGroupListResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::AdGroupService::UpdateAdGroupResponse,
    :schema_name => XSD::QName.new(NsV11, "updateAdGroupResponse"),
    :schema_element => []
  )

end

end; end
