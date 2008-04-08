require 'adwords4r/v12/ReportService'
require 'soap/mapping'

module AdWords; module ReportService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV12 = "https://adwords.google.com/api/adwords/v12"

  EncodedRegistry.register(
    :class => AdWords::ReportService::ApiError,
    :schema_type => XSD::QName.new(NsV12, "ApiError"),
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
    :schema_type => XSD::QName.new(NsV12, "ApiException"),
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
    :schema_type => XSD::QName.new(NsV12, "DefinedReportJob"),
    :schema_basetype => XSD::QName.new(NsV12, "ReportJob"),
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
    :schema_type => XSD::QName.new(NsV12, "AdGroupStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::AdWordsType,
    :schema_type => XSD::QName.new(NsV12, "AdWordsType")
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV12, "CampaignStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::KeywordStatus,
    :schema_type => XSD::QName.new(NsV12, "KeywordStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::KeywordType,
    :schema_type => XSD::QName.new(NsV12, "KeywordType")
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::ReportJobStatus,
    :schema_type => XSD::QName.new(NsV12, "ReportJobStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ApiError,
    :schema_type => XSD::QName.new(NsV12, "ApiError"),
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
    :schema_type => XSD::QName.new(NsV12, "ApiException"),
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
    :schema_type => XSD::QName.new(NsV12, "DefinedReportJob"),
    :schema_basetype => XSD::QName.new(NsV12, "ReportJob"),
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
    :schema_type => XSD::QName.new(NsV12, "AdGroupStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::AdWordsType,
    :schema_type => XSD::QName.new(NsV12, "AdWordsType")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV12, "CampaignStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::KeywordStatus,
    :schema_type => XSD::QName.new(NsV12, "KeywordStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::KeywordType,
    :schema_type => XSD::QName.new(NsV12, "KeywordType")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ReportJobStatus,
    :schema_type => XSD::QName.new(NsV12, "ReportJobStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::DeleteReport,
    :schema_name => XSD::QName.new(NsV12, "deleteReport"),
    :schema_element => [
      ["reportJobId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::DeleteReportResponse,
    :schema_name => XSD::QName.new(NsV12, "deleteReportResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ApiException,
    :schema_name => XSD::QName.new(NsV12, "fault"),
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
    :schema_name => XSD::QName.new(NsV12, "getAllJobs"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetAllJobsResponse,
    :schema_name => XSD::QName.new(NsV12, "getAllJobsResponse"),
    :schema_element => [
      ["getAllJobsReturn", "AdWords::ReportService::ReportJob[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetGzipReportDownloadUrl,
    :schema_name => XSD::QName.new(NsV12, "getGzipReportDownloadUrl"),
    :schema_element => [
      ["reportJobId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetGzipReportDownloadUrlResponse,
    :schema_name => XSD::QName.new(NsV12, "getGzipReportDownloadUrlResponse"),
    :schema_element => [
      ["getGzipReportDownloadUrlReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetReportDownloadUrl,
    :schema_name => XSD::QName.new(NsV12, "getReportDownloadUrl"),
    :schema_element => [
      ["reportJobId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetReportDownloadUrlResponse,
    :schema_name => XSD::QName.new(NsV12, "getReportDownloadUrlResponse"),
    :schema_element => [
      ["getReportDownloadUrlReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetReportJobStatus,
    :schema_name => XSD::QName.new(NsV12, "getReportJobStatus"),
    :schema_element => [
      ["reportJobId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetReportJobStatusResponse,
    :schema_name => XSD::QName.new(NsV12, "getReportJobStatusResponse"),
    :schema_element => [
      ["getReportJobStatusReturn", "AdWords::ReportService::ReportJobStatus"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ScheduleReportJob,
    :schema_name => XSD::QName.new(NsV12, "scheduleReportJob"),
    :schema_element => [
      ["job", "AdWords::ReportService::ReportJob"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ScheduleReportJobResponse,
    :schema_name => XSD::QName.new(NsV12, "scheduleReportJobResponse"),
    :schema_element => [
      ["scheduleReportJobReturn", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ValidateReportJob,
    :schema_name => XSD::QName.new(NsV12, "validateReportJob"),
    :schema_element => [
      ["job", "AdWords::ReportService::ReportJob"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ValidateReportJobResponse,
    :schema_name => XSD::QName.new(NsV12, "validateReportJobResponse"),
    :schema_element => []
  )
end

end; end
