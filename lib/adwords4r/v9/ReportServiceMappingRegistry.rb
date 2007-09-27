require 'adwords4r/v9/ReportService'
require 'soap/mapping'

module AdWords; module ReportService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new

  EncodedRegistry.register(
    :class => AdWords::ReportService::AccountReportJob,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "AccountReportJob",
    :schema_element => [
      ["aggregationType", "SOAP::SOAPString", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["adWordsType", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::AdGroupReportJob,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "AdGroupReportJob",
    :schema_element => [
      ["aggregationType", "SOAP::SOAPString", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["adGroupStatuses", "SOAP::SOAPString[]", [0, nil]],
      ["adWordsType", "SOAP::SOAPString", [0, 1]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::AdImageReportJob,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "AdImageReportJob",
    :schema_element => [
      ["aggregationType", "SOAP::SOAPString", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::AdTextReportJob,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "AdTextReportJob",
    :schema_element => [
      ["aggregationType", "SOAP::SOAPString", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["adWordsType", "SOAP::SOAPString", [0, 1]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::ApiError,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
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
    :class => AdWords::ReportService::ApiException,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "ApiException",
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::ReportService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::CampaignReportJob,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "CampaignReportJob",
    :schema_element => [
      ["aggregationType", "SOAP::SOAPString", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["adWordsType", "SOAP::SOAPString", [0, 1]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::CustomReportJob,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "CustomReportJob",
    :schema_element => [
      ["aggregationType", "SOAP::SOAPString", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["adGroupStatuses", "SOAP::SOAPString[]", [0, nil]],
      ["adGroups", "SOAP::SOAPInt[]", [0, nil]],
      ["adWordsType", "SOAP::SOAPString", [0, 1]],
      ["campaignStatuses", "SOAP::SOAPString[]", [0, nil]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]],
      ["customOptions", "SOAP::SOAPString[]", [1, nil]],
      ["includeZeroImpression", "SOAP::SOAPBoolean", [0, 1]],
      ["keywordStatuses", "SOAP::SOAPString[]", [0, nil]],
      ["keywordType", "SOAP::SOAPString", [0, 1]],
      ["keywords", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::KeywordReportJob,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "KeywordReportJob",
    :schema_element => [
      ["aggregationType", "SOAP::SOAPString", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["adWordsType", "SOAP::SOAPString", [0, 1]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]],
      ["includeZeroImpression", "SOAP::SOAPBoolean", [0, 1]],
      ["keywordStatuses", "SOAP::SOAPString[]", [0, nil]],
      ["keywordType", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::UrlReportJob,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "UrlReportJob",
    :schema_element => [
      ["aggregationType", "SOAP::SOAPString", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["adWordsType", "SOAP::SOAPString", [0, 1]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::AdGroupStatus,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "AdGroupStatus"
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::AdWordsType,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "AdWordsType"
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::AggregationType,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "AggregationType"
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::CampaignStatus,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "CampaignStatus"
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::CustomReportOption,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "CustomReportOption"
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::KeywordStatus,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "KeywordStatus"
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::KeywordType,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "KeywordType"
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::ReportJobStatus,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "ReportJobStatus"
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::AccountReportJob,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "AccountReportJob",
    :schema_qualified => false,
    :schema_element => [
      ["aggregationType", "SOAP::SOAPString", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["adWordsType", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::AdGroupReportJob,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "AdGroupReportJob",
    :schema_qualified => false,
    :schema_element => [
      ["aggregationType", "SOAP::SOAPString", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["adGroupStatuses", "SOAP::SOAPString[]", [0, nil]],
      ["adWordsType", "SOAP::SOAPString", [0, 1]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::AdImageReportJob,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "AdImageReportJob",
    :schema_qualified => false,
    :schema_element => [
      ["aggregationType", "SOAP::SOAPString", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::AdTextReportJob,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "AdTextReportJob",
    :schema_qualified => false,
    :schema_element => [
      ["aggregationType", "SOAP::SOAPString", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["adWordsType", "SOAP::SOAPString", [0, 1]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ApiError,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
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
    :class => AdWords::ReportService::ApiException,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "ApiException",
    :schema_qualified => false,
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdWords::ReportService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::CampaignReportJob,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "CampaignReportJob",
    :schema_qualified => false,
    :schema_element => [
      ["aggregationType", "SOAP::SOAPString", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["adWordsType", "SOAP::SOAPString", [0, 1]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::CustomReportJob,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "CustomReportJob",
    :schema_qualified => false,
    :schema_element => [
      ["aggregationType", "SOAP::SOAPString", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["adGroupStatuses", "SOAP::SOAPString[]", [0, nil]],
      ["adGroups", "SOAP::SOAPInt[]", [0, nil]],
      ["adWordsType", "SOAP::SOAPString", [0, 1]],
      ["campaignStatuses", "SOAP::SOAPString[]", [0, nil]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]],
      ["customOptions", "SOAP::SOAPString[]", [1, nil]],
      ["includeZeroImpression", "SOAP::SOAPBoolean", [0, 1]],
      ["keywordStatuses", "SOAP::SOAPString[]", [0, nil]],
      ["keywordType", "SOAP::SOAPString", [0, 1]],
      ["keywords", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::KeywordReportJob,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "KeywordReportJob",
    :schema_qualified => false,
    :schema_element => [
      ["aggregationType", "SOAP::SOAPString", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["adWordsType", "SOAP::SOAPString", [0, 1]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]],
      ["includeZeroImpression", "SOAP::SOAPBoolean", [0, 1]],
      ["keywordStatuses", "SOAP::SOAPString[]", [0, nil]],
      ["keywordType", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::UrlReportJob,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "UrlReportJob",
    :schema_qualified => false,
    :schema_element => [
      ["aggregationType", "SOAP::SOAPString", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "SOAP::SOAPString", [0, 1]],
      ["adWordsType", "SOAP::SOAPString", [0, 1]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::AdGroupStatus,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "AdGroupStatus"
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::AdWordsType,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "AdWordsType"
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::AggregationType,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "AggregationType"
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::CampaignStatus,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "CampaignStatus"
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::CustomReportOption,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "CustomReportOption"
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::KeywordStatus,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "KeywordStatus"
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::KeywordType,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "KeywordType"
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ReportJobStatus,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_type => "ReportJobStatus"
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::DeleteReport,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "deleteReport",
    :schema_qualified => true,
    :schema_element => [
      ["reportJobId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::DeleteReportResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "deleteReportResponse",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ApiException,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "fault",
    :schema_qualified => true,
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
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getAllJobs",
    :schema_qualified => true,
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetAllJobsResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getAllJobsResponse",
    :schema_element => [
      ["getAllJobsReturn", ["AdWords::ReportService::ReportJob[]", XSD::QName.new("https://adwords.google.com/api/adwords/v9", "getAllJobsReturn")], [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetGzipReportDownloadUrl,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getGzipReportDownloadUrl",
    :schema_qualified => true,
    :schema_element => [
      ["reportJobId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetGzipReportDownloadUrlResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getGzipReportDownloadUrlResponse",
    :schema_qualified => true,
    :schema_element => [
      ["getGzipReportDownloadUrlReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetReportDownloadUrl,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getReportDownloadUrl",
    :schema_qualified => true,
    :schema_element => [
      ["reportJobId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetReportDownloadUrlResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getReportDownloadUrlResponse",
    :schema_qualified => true,
    :schema_element => [
      ["getReportDownloadUrlReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetReportJobStatus,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getReportJobStatus",
    :schema_qualified => true,
    :schema_element => [
      ["reportJobId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetReportJobStatusResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "getReportJobStatusResponse",
    :schema_qualified => true,
    :schema_element => [
      ["getReportJobStatusReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ScheduleReportJob,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "scheduleReportJob",
    :schema_qualified => true,
    :schema_element => [
      ["job", "AdWords::ReportService::ReportJob"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ScheduleReportJobResponse,
    :schema_ns => "https://adwords.google.com/api/adwords/v9",
    :schema_name => "scheduleReportJobResponse",
    :schema_qualified => true,
    :schema_element => [
      ["scheduleReportJobReturn", "SOAP::SOAPLong"]
    ]
  )
end

end; end
