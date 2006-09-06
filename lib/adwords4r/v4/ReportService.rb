module AdWords
require 'xsd/qname'

# {https://adwords.google.com/api/adwords/v4}scheduleReportJob
class ScheduleReportJob
  @@schema_type = "scheduleReportJob"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["job", "ReportJob"]
  ]

  attr_accessor :job

  def initialize(job = nil)
    @job = job
  end
end

# {https://adwords.google.com/api/adwords/v4}scheduleReportJobResponse
class ScheduleReportJobResponse
  @@schema_type = "scheduleReportJobResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["scheduleReportJobReturn", "SOAP::SOAPLong"]
  ]

  attr_accessor :scheduleReportJobReturn

  def initialize(scheduleReportJobReturn = nil)
    @scheduleReportJobReturn = scheduleReportJobReturn
  end
end

# {https://adwords.google.com/api/adwords/v4}getReportJobStatus
class GetReportJobStatus
  @@schema_type = "getReportJobStatus"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["reportJobId", "SOAP::SOAPLong"]
  ]

  attr_accessor :reportJobId

  def initialize(reportJobId = nil)
    @reportJobId = reportJobId
  end
end

# {https://adwords.google.com/api/adwords/v4}getReportJobStatusResponse
class GetReportJobStatusResponse
  @@schema_type = "getReportJobStatusResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getReportJobStatusReturn", "SOAP::SOAPString"]
  ]

  attr_accessor :getReportJobStatusReturn

  def initialize(getReportJobStatusReturn = nil)
    @getReportJobStatusReturn = getReportJobStatusReturn
  end
end

# {https://adwords.google.com/api/adwords/v4}getReportDownloadUrl
class GetReportDownloadUrl
  @@schema_type = "getReportDownloadUrl"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["reportJobId", "SOAP::SOAPLong"]
  ]

  attr_accessor :reportJobId

  def initialize(reportJobId = nil)
    @reportJobId = reportJobId
  end
end

# {https://adwords.google.com/api/adwords/v4}getReportDownloadUrlResponse
class GetReportDownloadUrlResponse
  @@schema_type = "getReportDownloadUrlResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getReportDownloadUrlReturn", "SOAP::SOAPString"]
  ]

  attr_accessor :getReportDownloadUrlReturn

  def initialize(getReportDownloadUrlReturn = nil)
    @getReportDownloadUrlReturn = getReportDownloadUrlReturn
  end
end

# {https://adwords.google.com/api/adwords/v4}getGzipReportDownloadUrl
class GetGzipReportDownloadUrl
  @@schema_type = "getGzipReportDownloadUrl"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["reportJobId", "SOAP::SOAPLong"]
  ]

  attr_accessor :reportJobId

  def initialize(reportJobId = nil)
    @reportJobId = reportJobId
  end
end

# {https://adwords.google.com/api/adwords/v4}getGzipReportDownloadUrlResponse
class GetGzipReportDownloadUrlResponse
  @@schema_type = "getGzipReportDownloadUrlResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getGzipReportDownloadUrlReturn", "SOAP::SOAPString"]
  ]

  attr_accessor :getGzipReportDownloadUrlReturn

  def initialize(getGzipReportDownloadUrlReturn = nil)
    @getGzipReportDownloadUrlReturn = getGzipReportDownloadUrlReturn
  end
end

# {https://adwords.google.com/api/adwords/v4}getAllJobs
class GetAllJobs
  @@schema_type = "getAllJobs"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}getAllJobsResponse
class GetAllJobsResponse < ::Array
  @@schema_element = [
    ["getAllJobsReturn", ["ReportJob[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "getAllJobsReturn")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}deleteReport
class DeleteReport
  @@schema_type = "deleteReport"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["reportJobId", "SOAP::SOAPLong"]
  ]

  attr_accessor :reportJobId

  def initialize(reportJobId = nil)
    @reportJobId = reportJobId
  end
end

# {https://adwords.google.com/api/adwords/v4}deleteReportResponse
class DeleteReportResponse
  @@schema_type = "deleteReportResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}ApiException
class ApiException
  @@schema_type = "ApiException"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["code", "SOAP::SOAPInt"],
    ["internal", "SOAP::SOAPBoolean"],
    ["message", "SOAP::SOAPString"],
    ["trigger", "SOAP::SOAPString"],
    ["violations", "SOAP::SOAPString"]
  ]

  attr_accessor :code
  attr_accessor :internal
  attr_accessor :message
  attr_accessor :trigger
  attr_accessor :violations

  def initialize(code = nil, internal = nil, message = nil, trigger = nil, violations = nil)
    @code = code
    @internal = internal
    @message = message
    @trigger = trigger
    @violations = violations
  end
end

# {https://adwords.google.com/api/adwords/v4}ReportJob
class ReportJob
  @@schema_type = "ReportJob"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["aggregationType", "SOAP::SOAPString"],
    ["clientEmails", "SOAP::SOAPString[]"],
    ["crossClient", "SOAP::SOAPBoolean"],
    ["endDay", "SOAP::SOAPDate"],
    ["id", "SOAP::SOAPLong"],
    ["name", "SOAP::SOAPString"],
    ["startDay", "SOAP::SOAPDate"],
    ["status", "SOAP::SOAPString"]
  ]

  attr_accessor :aggregationType
  attr_accessor :clientEmails
  attr_accessor :crossClient
  attr_accessor :endDay
  attr_accessor :id
  attr_accessor :name
  attr_accessor :startDay
  attr_accessor :status

  def initialize(aggregationType = nil, clientEmails = [], crossClient = nil, endDay = nil, id = nil, name = nil, startDay = nil, status = nil)
    @aggregationType = aggregationType
    @clientEmails = clientEmails
    @crossClient = crossClient
    @endDay = endDay
    @id = id
    @name = name
    @startDay = startDay
    @status = status
  end
end

# {https://adwords.google.com/api/adwords/v4}KeywordReportJob
class KeywordReportJob
  @@schema_type = "KeywordReportJob"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["aggregationType", "SOAP::SOAPString"],
    ["clientEmails", "SOAP::SOAPString[]"],
    ["crossClient", "SOAP::SOAPBoolean"],
    ["endDay", "SOAP::SOAPDate"],
    ["id", "SOAP::SOAPLong"],
    ["name", "SOAP::SOAPString"],
    ["startDay", "SOAP::SOAPDate"],
    ["status", "SOAP::SOAPString"],
    ["adWordsType", "SOAP::SOAPString"],
    ["campaigns", "SOAP::SOAPInt[]"],
    ["keywordStatuses", "SOAP::SOAPString[]"],
    ["keywordType", "SOAP::SOAPString"],
    ["includeZeroImpression", "SOAP::SOAPBoolean"]
  ]

  attr_accessor :aggregationType
  attr_accessor :clientEmails
  attr_accessor :crossClient
  attr_accessor :endDay
  attr_accessor :id
  attr_accessor :name
  attr_accessor :startDay
  attr_accessor :status
  attr_accessor :adWordsType
  attr_accessor :campaigns
  attr_accessor :keywordStatuses
  attr_accessor :keywordType
  attr_accessor :includeZeroImpression

  def initialize(aggregationType = nil, clientEmails = [], crossClient = nil, endDay = nil, id = nil, name = nil, startDay = nil, status = nil, adWordsType = nil, campaigns = [], keywordStatuses = [], keywordType = nil, includeZeroImpression = nil)
    @aggregationType = aggregationType
    @clientEmails = clientEmails
    @crossClient = crossClient
    @endDay = endDay
    @id = id
    @name = name
    @startDay = startDay
    @status = status
    @adWordsType = adWordsType
    @campaigns = campaigns
    @keywordStatuses = keywordStatuses
    @keywordType = keywordType
    @includeZeroImpression = includeZeroImpression
  end
end

# {https://adwords.google.com/api/adwords/v4}AdTextReportJob
class AdTextReportJob
  @@schema_type = "AdTextReportJob"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["aggregationType", "SOAP::SOAPString"],
    ["clientEmails", "SOAP::SOAPString[]"],
    ["crossClient", "SOAP::SOAPBoolean"],
    ["endDay", "SOAP::SOAPDate"],
    ["id", "SOAP::SOAPLong"],
    ["name", "SOAP::SOAPString"],
    ["startDay", "SOAP::SOAPDate"],
    ["status", "SOAP::SOAPString"],
    ["adWordsType", "SOAP::SOAPString"],
    ["campaigns", "SOAP::SOAPInt[]"]
  ]

  attr_accessor :aggregationType
  attr_accessor :clientEmails
  attr_accessor :crossClient
  attr_accessor :endDay
  attr_accessor :id
  attr_accessor :name
  attr_accessor :startDay
  attr_accessor :status
  attr_accessor :adWordsType
  attr_accessor :campaigns

  def initialize(aggregationType = nil, clientEmails = [], crossClient = nil, endDay = nil, id = nil, name = nil, startDay = nil, status = nil, adWordsType = nil, campaigns = [])
    @aggregationType = aggregationType
    @clientEmails = clientEmails
    @crossClient = crossClient
    @endDay = endDay
    @id = id
    @name = name
    @startDay = startDay
    @status = status
    @adWordsType = adWordsType
    @campaigns = campaigns
  end
end

# {https://adwords.google.com/api/adwords/v4}UrlReportJob
class UrlReportJob
  @@schema_type = "UrlReportJob"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["aggregationType", "SOAP::SOAPString"],
    ["clientEmails", "SOAP::SOAPString[]"],
    ["crossClient", "SOAP::SOAPBoolean"],
    ["endDay", "SOAP::SOAPDate"],
    ["id", "SOAP::SOAPLong"],
    ["name", "SOAP::SOAPString"],
    ["startDay", "SOAP::SOAPDate"],
    ["status", "SOAP::SOAPString"],
    ["adWordsType", "SOAP::SOAPString"],
    ["campaigns", "SOAP::SOAPInt[]"]
  ]

  attr_accessor :aggregationType
  attr_accessor :clientEmails
  attr_accessor :crossClient
  attr_accessor :endDay
  attr_accessor :id
  attr_accessor :name
  attr_accessor :startDay
  attr_accessor :status
  attr_accessor :adWordsType
  attr_accessor :campaigns

  def initialize(aggregationType = nil, clientEmails = [], crossClient = nil, endDay = nil, id = nil, name = nil, startDay = nil, status = nil, adWordsType = nil, campaigns = [])
    @aggregationType = aggregationType
    @clientEmails = clientEmails
    @crossClient = crossClient
    @endDay = endDay
    @id = id
    @name = name
    @startDay = startDay
    @status = status
    @adWordsType = adWordsType
    @campaigns = campaigns
  end
end

# {https://adwords.google.com/api/adwords/v4}CustomReportJob
class CustomReportJob
  @@schema_type = "CustomReportJob"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["aggregationType", "SOAP::SOAPString"],
    ["clientEmails", "SOAP::SOAPString[]"],
    ["crossClient", "SOAP::SOAPBoolean"],
    ["endDay", "SOAP::SOAPDate"],
    ["id", "SOAP::SOAPLong"],
    ["name", "SOAP::SOAPString"],
    ["startDay", "SOAP::SOAPDate"],
    ["status", "SOAP::SOAPString"],
    ["adGroupStatuses", "SOAP::SOAPString[]"],
    ["adGroups", "SOAP::SOAPInt[]"],
    ["adWordsType", "SOAP::SOAPString"],
    ["campaignStatuses", "SOAP::SOAPString[]"],
    ["campaigns", "SOAP::SOAPInt[]"],
    ["customOptions", "SOAP::SOAPString[]"],
    ["keywordStatuses", "SOAP::SOAPString[]"],
    ["keywordType", "SOAP::SOAPString"],
    ["keywords", "SOAP::SOAPString[]"],
    ["includeZeroImpression", "SOAP::SOAPBoolean"]
  ]

  attr_accessor :aggregationType
  attr_accessor :clientEmails
  attr_accessor :crossClient
  attr_accessor :endDay
  attr_accessor :id
  attr_accessor :name
  attr_accessor :startDay
  attr_accessor :status
  attr_accessor :adGroupStatuses
  attr_accessor :adGroups
  attr_accessor :adWordsType
  attr_accessor :campaignStatuses
  attr_accessor :campaigns
  attr_accessor :customOptions
  attr_accessor :keywordStatuses
  attr_accessor :keywordType
  attr_accessor :keywords
  attr_accessor :includeZeroImpression

  def initialize(aggregationType = nil, clientEmails = [], crossClient = nil, endDay = nil, id = nil, name = nil, startDay = nil, status = nil, adGroupStatuses = [], adGroups = [], adWordsType = nil, campaignStatuses = [], campaigns = [], customOptions = [], keywordStatuses = [], keywordType = nil, keywords = [], includeZeroImpression = nil)
    @aggregationType = aggregationType
    @clientEmails = clientEmails
    @crossClient = crossClient
    @endDay = endDay
    @id = id
    @name = name
    @startDay = startDay
    @status = status
    @adGroupStatuses = adGroupStatuses
    @adGroups = adGroups
    @adWordsType = adWordsType
    @campaignStatuses = campaignStatuses
    @campaigns = campaigns
    @customOptions = customOptions
    @keywordStatuses = keywordStatuses
    @keywordType = keywordType
    @keywords = keywords
    @includeZeroImpression = includeZeroImpression
  end
end

# {https://adwords.google.com/api/adwords/v4}ReportJobStatus
class ReportJobStatus < ::String
  @@schema_type = "ReportJobStatus"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"

  Completed = ReportJobStatus.new("Completed")
  Failed = ReportJobStatus.new("Failed")
  InProgress = ReportJobStatus.new("InProgress")
  Pending = ReportJobStatus.new("Pending")
end

# {https://adwords.google.com/api/adwords/v4}AggregationType
class AggregationType < ::String
  @@schema_type = "AggregationType"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"

  Daily = AggregationType.new("Daily")
  Monthly = AggregationType.new("Monthly")
  Quarterly = AggregationType.new("Quarterly")
  Summary = AggregationType.new("Summary")
  Yearly = AggregationType.new("Yearly")
end

# {https://adwords.google.com/api/adwords/v4}AdWordsType
class AdWordsType < ::String
  @@schema_type = "AdWordsType"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"

  ContentOnly = AdWordsType.new("ContentOnly")
  SearchOnly = AdWordsType.new("SearchOnly")
end

# {https://adwords.google.com/api/adwords/v4}KeywordStatus
class KeywordStatus < ::String
  @@schema_type = "KeywordStatus"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"

  Deleted = KeywordStatus.new("Deleted")
  Disabled = KeywordStatus.new("Disabled")
  Disapproved = KeywordStatus.new("Disapproved")
  InTrial = KeywordStatus.new("InTrial")
  Normal = KeywordStatus.new("Normal")
  OnHold = KeywordStatus.new("OnHold")
end

# {https://adwords.google.com/api/adwords/v4}KeywordType
class KeywordType < ::String
  @@schema_type = "KeywordType"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"

  Broad = KeywordType.new("Broad")
  Exact = KeywordType.new("Exact")
  Phrase = KeywordType.new("Phrase")
end

# {https://adwords.google.com/api/adwords/v4}CampaignStatus
class CampaignStatus < ::String
  @@schema_type = "CampaignStatus"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"

  Active = CampaignStatus.new("Active")
  Deleted = CampaignStatus.new("Deleted")
  Ended = CampaignStatus.new("Ended")
  Paused = CampaignStatus.new("Paused")
  Pending = CampaignStatus.new("Pending")
  Suspended = CampaignStatus.new("Suspended")
end

# {https://adwords.google.com/api/adwords/v4}CustomReportOption
class CustomReportOption < ::String
  @@schema_type = "CustomReportOption"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"

  AccountName = CustomReportOption.new("AccountName")
  AdGroup = CustomReportOption.new("AdGroup")
  AdGroupId = CustomReportOption.new("AdGroupId")
  AdGroupStatus = CustomReportOption.new("AdGroupStatus")
  AdWordsType = CustomReportOption.new("AdWordsType")
  AverageConversionValue = CustomReportOption.new("AverageConversionValue")
  AveragePosition = CustomReportOption.new("AveragePosition")
  Campaign = CustomReportOption.new("Campaign")
  CampaignEndDate = CustomReportOption.new("CampaignEndDate")
  CampaignId = CustomReportOption.new("CampaignId")
  CampaignStatus = CustomReportOption.new("CampaignStatus")
  Clicks = CustomReportOption.new("Clicks")
  ConversionRate = CustomReportOption.new("ConversionRate")
  ConversionValuePerClick = CustomReportOption.new("ConversionValuePerClick")
  ConversionValuePerCost = CustomReportOption.new("ConversionValuePerCost")
  Conversions = CustomReportOption.new("Conversions")
  Cost = CustomReportOption.new("Cost")
  CostPerConversion = CustomReportOption.new("CostPerConversion")
  CostPerTransaction = CustomReportOption.new("CostPerTransaction")
  Cpc = CustomReportOption.new("Cpc")
  CreativeDestinationUrl = CustomReportOption.new("CreativeDestinationUrl")
  CreativeId = CustomReportOption.new("CreativeId")
  CreativeStatus = CustomReportOption.new("CreativeStatus")
  Ctr = CustomReportOption.new("Ctr")
  DailyBudget = CustomReportOption.new("DailyBudget")
  DefaultConversionCount = CustomReportOption.new("DefaultConversionCount")
  DefaultConversionValue = CustomReportOption.new("DefaultConversionValue")
  DescriptionLine1 = CustomReportOption.new("DescriptionLine1")
  DescriptionLine2 = CustomReportOption.new("DescriptionLine2")
  DescriptionLine3 = CustomReportOption.new("DescriptionLine3")
  DestinationUrl = CustomReportOption.new("DestinationUrl")
  Impressions = CustomReportOption.new("Impressions")
  Keyword = CustomReportOption.new("Keyword")
  KeywordDestinationUrl = CustomReportOption.new("KeywordDestinationUrl")
  KeywordId = CustomReportOption.new("KeywordId")
  KeywordStatus = CustomReportOption.new("KeywordStatus")
  KeywordType = CustomReportOption.new("KeywordType")
  LeadCount = CustomReportOption.new("LeadCount")
  LeadValue = CustomReportOption.new("LeadValue")
  MaximumCpc = CustomReportOption.new("MaximumCpc")
  MinimumCpc = CustomReportOption.new("MinimumCpc")
  PageViewCount = CustomReportOption.new("PageViewCount")
  PageViewValue = CustomReportOption.new("PageViewValue")
  SaleCount = CustomReportOption.new("SaleCount")
  SaleValue = CustomReportOption.new("SaleValue")
  SignupCount = CustomReportOption.new("SignupCount")
  SignupValue = CustomReportOption.new("SignupValue")
  TotalConversionValue = CustomReportOption.new("TotalConversionValue")
  Transactions = CustomReportOption.new("Transactions")
  VisibleUrl = CustomReportOption.new("VisibleUrl")
end

# {https://adwords.google.com/api/adwords/v4}AdGroupStatus
class AdGroupStatus < ::String
  @@schema_type = "AdGroupStatus"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"

  Deleted = AdGroupStatus.new("Deleted")
  Enabled = AdGroupStatus.new("Enabled")
  Paused = AdGroupStatus.new("Paused")
end
end
