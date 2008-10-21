require 'adwords4r/v13/ReportService'
require 'soap/mapping'

module AdWords; module ReportService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV13 = "https://adwords.google.com/api/adwords/v13"

  EncodedRegistry.register(
    :class => AdWords::ReportService::ApiError,
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
    :class => AdWords::ReportService::ApiException,
    :schema_type => XSD::QName.new(NsV13, "ApiException"),
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
    :schema_type => XSD::QName.new(NsV13, "DefinedReportJob"),
    :schema_basetype => XSD::QName.new(NsV13, "ReportJob"),
    :schema_element => [
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "AdWords::ReportService::ReportJobStatus", [0, 1]],
      ["adGroupStatuses", "AdWords::ReportService::AdGroupStatus[]", [0, nil]],
      ["adGroups", "SOAP::SOAPLong[]", [0, nil]],
      ["adWordsType", "AdWords::ReportService::AdWordsType", [0, 1]],
      ["aggregationTypes", "SOAP::SOAPString[]", [0, nil]],
      ["campaignStatuses", "AdWords::ReportService::CampaignStatus[]", [0, nil]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]],
      ["includeZeroImpression", "SOAP::SOAPBoolean", [0, 1]],
      ["keywordStatuses", "AdWords::ReportService::KeywordStatus[]", [0, nil]],
      ["keywordType", "AdWords::ReportService::KeywordType", [0, 1]],
      ["keywords", "SOAP::SOAPString[]", [0, nil]],
      ["selectedColumns", "SOAP::SOAPString[]", [0, nil]],
      ["selectedReportType", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::AdGroupStatus,
    :schema_type => XSD::QName.new(NsV13, "AdGroupStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::AdWordsType,
    :schema_type => XSD::QName.new(NsV13, "AdWordsType")
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV13, "CampaignStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::KeywordStatus,
    :schema_type => XSD::QName.new(NsV13, "KeywordStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::KeywordType,
    :schema_type => XSD::QName.new(NsV13, "KeywordType")
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::ReportJobStatus,
    :schema_type => XSD::QName.new(NsV13, "ReportJobStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ApiError,
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
    :class => AdWords::ReportService::ApiException,
    :schema_type => XSD::QName.new(NsV13, "ApiException"),
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
    :schema_type => XSD::QName.new(NsV13, "DefinedReportJob"),
    :schema_basetype => XSD::QName.new(NsV13, "ReportJob"),
    :schema_element => [
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "AdWords::ReportService::ReportJobStatus", [0, 1]],
      ["adGroupStatuses", "AdWords::ReportService::AdGroupStatus[]", [0, nil]],
      ["adGroups", "SOAP::SOAPLong[]", [0, nil]],
      ["adWordsType", "AdWords::ReportService::AdWordsType", [0, 1]],
      ["aggregationTypes", "SOAP::SOAPString[]", [0, nil]],
      ["campaignStatuses", "AdWords::ReportService::CampaignStatus[]", [0, nil]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]],
      ["includeZeroImpression", "SOAP::SOAPBoolean", [0, 1]],
      ["keywordStatuses", "AdWords::ReportService::KeywordStatus[]", [0, nil]],
      ["keywordType", "AdWords::ReportService::KeywordType", [0, 1]],
      ["keywords", "SOAP::SOAPString[]", [0, nil]],
      ["selectedColumns", "SOAP::SOAPString[]", [0, nil]],
      ["selectedReportType", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::AdGroupStatus,
    :schema_type => XSD::QName.new(NsV13, "AdGroupStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::AdWordsType,
    :schema_type => XSD::QName.new(NsV13, "AdWordsType")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV13, "CampaignStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::KeywordStatus,
    :schema_type => XSD::QName.new(NsV13, "KeywordStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::KeywordType,
    :schema_type => XSD::QName.new(NsV13, "KeywordType")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ReportJobStatus,
    :schema_type => XSD::QName.new(NsV13, "ReportJobStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::DeleteReport,
    :schema_name => XSD::QName.new(NsV13, "deleteReport"),
    :schema_element => [
      ["reportJobId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::DeleteReportResponse,
    :schema_name => XSD::QName.new(NsV13, "deleteReportResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ApiException,
    :schema_name => XSD::QName.new(NsV13, "fault"),
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
    :schema_name => XSD::QName.new(NsV13, "getAllJobs"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetAllJobsResponse,
    :schema_name => XSD::QName.new(NsV13, "getAllJobsResponse"),
    :schema_element => [
      ["getAllJobsReturn", "AdWords::ReportService::ReportJob[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetGzipReportDownloadUrl,
    :schema_name => XSD::QName.new(NsV13, "getGzipReportDownloadUrl"),
    :schema_element => [
      ["reportJobId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetGzipReportDownloadUrlResponse,
    :schema_name => XSD::QName.new(NsV13, "getGzipReportDownloadUrlResponse"),
    :schema_element => [
      ["getGzipReportDownloadUrlReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetReportDownloadUrl,
    :schema_name => XSD::QName.new(NsV13, "getReportDownloadUrl"),
    :schema_element => [
      ["reportJobId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetReportDownloadUrlResponse,
    :schema_name => XSD::QName.new(NsV13, "getReportDownloadUrlResponse"),
    :schema_element => [
      ["getReportDownloadUrlReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetReportJobStatus,
    :schema_name => XSD::QName.new(NsV13, "getReportJobStatus"),
    :schema_element => [
      ["reportJobId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetReportJobStatusResponse,
    :schema_name => XSD::QName.new(NsV13, "getReportJobStatusResponse"),
    :schema_element => [
      ["getReportJobStatusReturn", "AdWords::ReportService::ReportJobStatus"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ScheduleReportJob,
    :schema_name => XSD::QName.new(NsV13, "scheduleReportJob"),
    :schema_element => [
      ["job", "AdWords::ReportService::ReportJob"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ScheduleReportJobResponse,
    :schema_name => XSD::QName.new(NsV13, "scheduleReportJobResponse"),
    :schema_element => [
      ["scheduleReportJobReturn", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ValidateReportJob,
    :schema_name => XSD::QName.new(NsV13, "validateReportJob"),
    :schema_element => [
      ["job", "AdWords::ReportService::ReportJob"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ValidateReportJobResponse,
    :schema_name => XSD::QName.new(NsV13, "validateReportJobResponse"),
    :schema_element => []
  )
end

end; end
