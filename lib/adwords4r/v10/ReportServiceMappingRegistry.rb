require 'adwords4r/v10/ReportService'
require 'soap/mapping'

module AdWords; module ReportService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV10 = "https://adwords.google.com/api/adwords/v10"

  EncodedRegistry.register(
    :class => AdWords::ReportService::AccountReportJob,
    :schema_type => XSD::QName.new(NsV10, "AccountReportJob"),
    :schema_basetype => XSD::QName.new(NsV10, "ReportJob"),
    :schema_element => [
      ["aggregationType", "AdWords::ReportService::AggregationType", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "AdWords::ReportService::ReportJobStatus", [0, 1]],
      ["adWordsType", "AdWords::ReportService::AdWordsType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::AdGroupReportJob,
    :schema_type => XSD::QName.new(NsV10, "AdGroupReportJob"),
    :schema_basetype => XSD::QName.new(NsV10, "ReportJob"),
    :schema_element => [
      ["aggregationType", "AdWords::ReportService::AggregationType", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "AdWords::ReportService::ReportJobStatus", [0, 1]],
      ["adGroupStatuses", "AdWords::ReportService::AdGroupStatus[]", [0, nil]],
      ["adWordsType", "AdWords::ReportService::AdWordsType", [0, 1]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::AdImageReportJob,
    :schema_type => XSD::QName.new(NsV10, "AdImageReportJob"),
    :schema_basetype => XSD::QName.new(NsV10, "ReportJob"),
    :schema_element => [
      ["aggregationType", "AdWords::ReportService::AggregationType", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "AdWords::ReportService::ReportJobStatus", [0, 1]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::AdTextReportJob,
    :schema_type => XSD::QName.new(NsV10, "AdTextReportJob"),
    :schema_basetype => XSD::QName.new(NsV10, "ReportJob"),
    :schema_element => [
      ["aggregationType", "AdWords::ReportService::AggregationType", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "AdWords::ReportService::ReportJobStatus", [0, 1]],
      ["adWordsType", "AdWords::ReportService::AdWordsType", [0, 1]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::ApiError,
    :schema_type => XSD::QName.new(NsV10, "ApiError"),
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
    :schema_type => XSD::QName.new(NsV10, "ApiException"),
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
    :schema_type => XSD::QName.new(NsV10, "CampaignReportJob"),
    :schema_basetype => XSD::QName.new(NsV10, "ReportJob"),
    :schema_element => [
      ["aggregationType", "AdWords::ReportService::AggregationType", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "AdWords::ReportService::ReportJobStatus", [0, 1]],
      ["adWordsType", "AdWords::ReportService::AdWordsType", [0, 1]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::CustomReportJob,
    :schema_type => XSD::QName.new(NsV10, "CustomReportJob"),
    :schema_basetype => XSD::QName.new(NsV10, "ReportJob"),
    :schema_element => [
      ["aggregationType", "AdWords::ReportService::AggregationType", [0, 1]],
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
      ["campaignStatuses", "AdWords::ReportService::CampaignStatus[]", [0, nil]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]],
      ["customOptions", "AdWords::ReportService::CustomReportOption[]", [1, nil]],
      ["includeZeroImpression", "SOAP::SOAPBoolean", [0, 1]],
      ["keywordStatuses", "AdWords::ReportService::KeywordStatus[]", [0, nil]],
      ["keywordType", "AdWords::ReportService::KeywordType", [0, 1]],
      ["keywords", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::KeywordReportJob,
    :schema_type => XSD::QName.new(NsV10, "KeywordReportJob"),
    :schema_basetype => XSD::QName.new(NsV10, "ReportJob"),
    :schema_element => [
      ["aggregationType", "AdWords::ReportService::AggregationType", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "AdWords::ReportService::ReportJobStatus", [0, 1]],
      ["adWordsType", "AdWords::ReportService::AdWordsType", [0, 1]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]],
      ["includeZeroImpression", "SOAP::SOAPBoolean", [0, 1]],
      ["keywordStatuses", "AdWords::ReportService::KeywordStatus[]", [0, nil]],
      ["keywordType", "AdWords::ReportService::KeywordType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::UrlReportJob,
    :schema_type => XSD::QName.new(NsV10, "UrlReportJob"),
    :schema_basetype => XSD::QName.new(NsV10, "ReportJob"),
    :schema_element => [
      ["aggregationType", "AdWords::ReportService::AggregationType", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "AdWords::ReportService::ReportJobStatus", [0, 1]],
      ["adWordsType", "AdWords::ReportService::AdWordsType", [0, 1]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::AdGroupStatus,
    :schema_type => XSD::QName.new(NsV10, "AdGroupStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::AdWordsType,
    :schema_type => XSD::QName.new(NsV10, "AdWordsType")
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::AggregationType,
    :schema_type => XSD::QName.new(NsV10, "AggregationType")
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV10, "CampaignStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::CustomReportOption,
    :schema_type => XSD::QName.new(NsV10, "CustomReportOption")
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::KeywordStatus,
    :schema_type => XSD::QName.new(NsV10, "KeywordStatus")
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::KeywordType,
    :schema_type => XSD::QName.new(NsV10, "KeywordType")
  )

  EncodedRegistry.register(
    :class => AdWords::ReportService::ReportJobStatus,
    :schema_type => XSD::QName.new(NsV10, "ReportJobStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::AccountReportJob,
    :schema_type => XSD::QName.new(NsV10, "AccountReportJob"),
    :schema_basetype => XSD::QName.new(NsV10, "ReportJob"),
    :schema_element => [
      ["aggregationType", "AdWords::ReportService::AggregationType", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "AdWords::ReportService::ReportJobStatus", [0, 1]],
      ["adWordsType", "AdWords::ReportService::AdWordsType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::AdGroupReportJob,
    :schema_type => XSD::QName.new(NsV10, "AdGroupReportJob"),
    :schema_basetype => XSD::QName.new(NsV10, "ReportJob"),
    :schema_element => [
      ["aggregationType", "AdWords::ReportService::AggregationType", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "AdWords::ReportService::ReportJobStatus", [0, 1]],
      ["adGroupStatuses", "AdWords::ReportService::AdGroupStatus[]", [0, nil]],
      ["adWordsType", "AdWords::ReportService::AdWordsType", [0, 1]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::AdImageReportJob,
    :schema_type => XSD::QName.new(NsV10, "AdImageReportJob"),
    :schema_basetype => XSD::QName.new(NsV10, "ReportJob"),
    :schema_element => [
      ["aggregationType", "AdWords::ReportService::AggregationType", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "AdWords::ReportService::ReportJobStatus", [0, 1]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::AdTextReportJob,
    :schema_type => XSD::QName.new(NsV10, "AdTextReportJob"),
    :schema_basetype => XSD::QName.new(NsV10, "ReportJob"),
    :schema_element => [
      ["aggregationType", "AdWords::ReportService::AggregationType", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "AdWords::ReportService::ReportJobStatus", [0, 1]],
      ["adWordsType", "AdWords::ReportService::AdWordsType", [0, 1]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ApiError,
    :schema_type => XSD::QName.new(NsV10, "ApiError"),
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
    :schema_type => XSD::QName.new(NsV10, "ApiException"),
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
    :schema_type => XSD::QName.new(NsV10, "CampaignReportJob"),
    :schema_basetype => XSD::QName.new(NsV10, "ReportJob"),
    :schema_element => [
      ["aggregationType", "AdWords::ReportService::AggregationType", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "AdWords::ReportService::ReportJobStatus", [0, 1]],
      ["adWordsType", "AdWords::ReportService::AdWordsType", [0, 1]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::CustomReportJob,
    :schema_type => XSD::QName.new(NsV10, "CustomReportJob"),
    :schema_basetype => XSD::QName.new(NsV10, "ReportJob"),
    :schema_element => [
      ["aggregationType", "AdWords::ReportService::AggregationType", [0, 1]],
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
      ["campaignStatuses", "AdWords::ReportService::CampaignStatus[]", [0, nil]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]],
      ["customOptions", "AdWords::ReportService::CustomReportOption[]", [1, nil]],
      ["includeZeroImpression", "SOAP::SOAPBoolean", [0, 1]],
      ["keywordStatuses", "AdWords::ReportService::KeywordStatus[]", [0, nil]],
      ["keywordType", "AdWords::ReportService::KeywordType", [0, 1]],
      ["keywords", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::KeywordReportJob,
    :schema_type => XSD::QName.new(NsV10, "KeywordReportJob"),
    :schema_basetype => XSD::QName.new(NsV10, "ReportJob"),
    :schema_element => [
      ["aggregationType", "AdWords::ReportService::AggregationType", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "AdWords::ReportService::ReportJobStatus", [0, 1]],
      ["adWordsType", "AdWords::ReportService::AdWordsType", [0, 1]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]],
      ["includeZeroImpression", "SOAP::SOAPBoolean", [0, 1]],
      ["keywordStatuses", "AdWords::ReportService::KeywordStatus[]", [0, nil]],
      ["keywordType", "AdWords::ReportService::KeywordType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::UrlReportJob,
    :schema_type => XSD::QName.new(NsV10, "UrlReportJob"),
    :schema_basetype => XSD::QName.new(NsV10, "ReportJob"),
    :schema_element => [
      ["aggregationType", "AdWords::ReportService::AggregationType", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "AdWords::ReportService::ReportJobStatus", [0, 1]],
      ["adWordsType", "AdWords::ReportService::AdWordsType", [0, 1]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::AdGroupStatus,
    :schema_type => XSD::QName.new(NsV10, "AdGroupStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::AdWordsType,
    :schema_type => XSD::QName.new(NsV10, "AdWordsType")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::AggregationType,
    :schema_type => XSD::QName.new(NsV10, "AggregationType")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV10, "CampaignStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::CustomReportOption,
    :schema_type => XSD::QName.new(NsV10, "CustomReportOption")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::KeywordStatus,
    :schema_type => XSD::QName.new(NsV10, "KeywordStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::KeywordType,
    :schema_type => XSD::QName.new(NsV10, "KeywordType")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ReportJobStatus,
    :schema_type => XSD::QName.new(NsV10, "ReportJobStatus")
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::DeleteReport,
    :schema_name => XSD::QName.new(NsV10, "deleteReport"),
    :schema_element => [
      ["reportJobId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::DeleteReportResponse,
    :schema_name => XSD::QName.new(NsV10, "deleteReportResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ApiException,
    :schema_name => XSD::QName.new(NsV10, "fault"),
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
    :schema_name => XSD::QName.new(NsV10, "getAllJobs"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetAllJobsResponse,
    :schema_name => XSD::QName.new(NsV10, "getAllJobsResponse"),
    :schema_element => [
      ["getAllJobsReturn", "AdWords::ReportService::ReportJob[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetGzipReportDownloadUrl,
    :schema_name => XSD::QName.new(NsV10, "getGzipReportDownloadUrl"),
    :schema_element => [
      ["reportJobId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetGzipReportDownloadUrlResponse,
    :schema_name => XSD::QName.new(NsV10, "getGzipReportDownloadUrlResponse"),
    :schema_element => [
      ["getGzipReportDownloadUrlReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetReportDownloadUrl,
    :schema_name => XSD::QName.new(NsV10, "getReportDownloadUrl"),
    :schema_element => [
      ["reportJobId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetReportDownloadUrlResponse,
    :schema_name => XSD::QName.new(NsV10, "getReportDownloadUrlResponse"),
    :schema_element => [
      ["getReportDownloadUrlReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetReportJobStatus,
    :schema_name => XSD::QName.new(NsV10, "getReportJobStatus"),
    :schema_element => [
      ["reportJobId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::GetReportJobStatusResponse,
    :schema_name => XSD::QName.new(NsV10, "getReportJobStatusResponse"),
    :schema_element => [
      ["getReportJobStatusReturn", "AdWords::ReportService::ReportJobStatus"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ScheduleReportJob,
    :schema_name => XSD::QName.new(NsV10, "scheduleReportJob"),
    :schema_element => [
      ["job", "AdWords::ReportService::ReportJob"]
    ]
  )

  LiteralRegistry.register(
    :class => AdWords::ReportService::ScheduleReportJobResponse,
    :schema_name => XSD::QName.new(NsV10, "scheduleReportJobResponse"),
    :schema_element => [
      ["scheduleReportJobReturn", "SOAP::SOAPLong"]
    ]
  )

end

end; end
