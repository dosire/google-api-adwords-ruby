require 'adwords4r/v11/ReportService'
require 'soap/mapping'

module AdWords; module ReportService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV11 = "https://adwords.google.com/api/adwords/v11"

  EncodedRegistry.register(
    :class => AdWords::ReportService::ApiError,
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
    :class => AdWords::ReportService::ApiException,
    :schema_type => XSD::QName.new(NsV11, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::ReportService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::DefinedReportJob,
    :schema_type => XSD::QName.new(NsV11, "DefinedReportJob"),
    :schema_basetype => XSD::QName.new(NsV11, "ReportJob"),
    :schema_element => [
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "AdWords::ReportService::ReportJobStatus", [0, 1]],
      ["adGroupStatuses", "AdWords::ReportService::AdGroupStatus[]", [0, nil]],
      ["adGroups", "SOAP::SOAPInt[]", [0, nil]],
      ["adWordsType", "AdWords::ReportService::AdWordsType", [0, 1]],
      ["aggregationTypes", "SOAP::SOAPString[]", [0, nil]],
      ["campaignStatuses", "AdWords::ReportService::CampaignStatus[]", [0, nil]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]],
      ["includeZeroImpression", "SOAP::SOAPBoolean", [0, 1]],
      ["keywordStatuses", "AdWords::ReportService::KeywordStatus[]", [1, nil]],
      ["keywordType", "AdWords::ReportService::KeywordType", [0, 1]],
      ["keywords", "SOAP::SOAPString[]", [0, nil]],
      ["selectedColumns", "SOAP::SOAPString[]", [0, nil]],
      ["selectedReportType", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::AdGroupStatus,
    :schema_type => XSD::QName.new(NsV11, "AdGroupStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::AdWordsType,
    :schema_type => XSD::QName.new(NsV11, "AdWordsType")
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV11, "CampaignStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::KeywordStatus,
    :schema_type => XSD::QName.new(NsV11, "KeywordStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::KeywordType,
    :schema_type => XSD::QName.new(NsV11, "KeywordType")
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::ReportJobStatus,
    :schema_type => XSD::QName.new(NsV11, "ReportJobStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ApiError,
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
    :class => AdWords::ReportService::ApiException,
    :schema_type => XSD::QName.new(NsV11, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::ReportService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::DefinedReportJob,
    :schema_type => XSD::QName.new(NsV11, "DefinedReportJob"),
    :schema_basetype => XSD::QName.new(NsV11, "ReportJob"),
    :schema_element => [
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "AdWords::ReportService::ReportJobStatus", [0, 1]],
      ["adGroupStatuses", "AdWords::ReportService::AdGroupStatus[]", [0, nil]],
      ["adGroups", "SOAP::SOAPInt[]", [0, nil]],
      ["adWordsType", "AdWords::ReportService::AdWordsType", [0, 1]],
      ["aggregationTypes", "SOAP::SOAPString[]", [0, nil]],
      ["campaignStatuses", "AdWords::ReportService::CampaignStatus[]", [0, nil]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]],
      ["includeZeroImpression", "SOAP::SOAPBoolean", [0, 1]],
      ["keywordStatuses", "AdWords::ReportService::KeywordStatus[]", [1, nil]],
      ["keywordType", "AdWords::ReportService::KeywordType", [0, 1]],
      ["keywords", "SOAP::SOAPString[]", [0, nil]],
      ["selectedColumns", "SOAP::SOAPString[]", [0, nil]],
      ["selectedReportType", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::AdGroupStatus,
    :schema_type => XSD::QName.new(NsV11, "AdGroupStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::AdWordsType,
    :schema_type => XSD::QName.new(NsV11, "AdWordsType")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV11, "CampaignStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::KeywordStatus,
    :schema_type => XSD::QName.new(NsV11, "KeywordStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::KeywordType,
    :schema_type => XSD::QName.new(NsV11, "KeywordType")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ReportJobStatus,
    :schema_type => XSD::QName.new(NsV11, "ReportJobStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::DeleteReport,
    :schema_name => XSD::QName.new(NsV11, "deleteReport"),
    :schema_element => [
      ["reportJobId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::DeleteReportResponse,
    :schema_name => XSD::QName.new(NsV11, "deleteReportResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ApiException,
    :schema_name => XSD::QName.new(NsV11, "fault"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::ReportService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetAllJobs,
    :schema_name => XSD::QName.new(NsV11, "getAllJobs"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetAllJobsResponse,
    :schema_name => XSD::QName.new(NsV11, "getAllJobsResponse"),
    :schema_element => [
      ["getAllJobsReturn", "AdWords::ReportService::ReportJob[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetGzipReportDownloadUrl,
    :schema_name => XSD::QName.new(NsV11, "getGzipReportDownloadUrl"),
    :schema_element => [
      ["reportJobId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetGzipReportDownloadUrlResponse,
    :schema_name => XSD::QName.new(NsV11, "getGzipReportDownloadUrlResponse"),
    :schema_element => [
      ["getGzipReportDownloadUrlReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetReportDownloadUrl,
    :schema_name => XSD::QName.new(NsV11, "getReportDownloadUrl"),
    :schema_element => [
      ["reportJobId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetReportDownloadUrlResponse,
    :schema_name => XSD::QName.new(NsV11, "getReportDownloadUrlResponse"),
    :schema_element => [
      ["getReportDownloadUrlReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetReportJobStatus,
    :schema_name => XSD::QName.new(NsV11, "getReportJobStatus"),
    :schema_element => [
      ["reportJobId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetReportJobStatusResponse,
    :schema_name => XSD::QName.new(NsV11, "getReportJobStatusResponse"),
    :schema_element => [
      ["getReportJobStatusReturn", "AdWords::ReportService::ReportJobStatus"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ScheduleReportJob,
    :schema_name => XSD::QName.new(NsV11, "scheduleReportJob"),
    :schema_element => [
      ["job", "AdWords::ReportService::ReportJob"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ScheduleReportJobResponse,
    :schema_name => XSD::QName.new(NsV11, "scheduleReportJobResponse"),
    :schema_element => [
      ["scheduleReportJobReturn", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ValidateReportJob,
    :schema_name => XSD::QName.new(NsV11, "validateReportJob"),
    :schema_element => [
      ["job", "AdWords::ReportService::ReportJob"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ValidateReportJobResponse,
    :schema_name => XSD::QName.new(NsV11, "validateReportJobResponse"),
    :schema_element => []
  )
end

end; end
