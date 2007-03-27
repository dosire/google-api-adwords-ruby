module AdWords
require 'xsd/qname'

# {https://adwords.google.com/api/adwords/v8}deleteReport
class DeleteReport
  @@schema_type = "deleteReport"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["reportJobId", "SOAP::SOAPLong"]]

  attr_accessor :reportJobId

  def initialize(reportJobId = nil)
    @reportJobId = reportJobId
  end
end

# {https://adwords.google.com/api/adwords/v8}deleteReportResponse
class DeleteReportResponse
  @@schema_type = "deleteReportResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v8}getAllJobs
class GetAllJobs
  @@schema_type = "getAllJobs"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v8}getAllJobsResponse
class GetAllJobsResponse
  @@schema_type = "getAllJobsResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["getAllJobsReturn", "ReportJob[]"]]

  attr_accessor :getAllJobsReturn

  def initialize(getAllJobsReturn = [])
    @getAllJobsReturn = getAllJobsReturn
  end
end

# {https://adwords.google.com/api/adwords/v8}getGzipReportDownloadUrl
class GetGzipReportDownloadUrl
  @@schema_type = "getGzipReportDownloadUrl"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["reportJobId", "SOAP::SOAPLong"]]

  attr_accessor :reportJobId

  def initialize(reportJobId = nil)
    @reportJobId = reportJobId
  end
end

# {https://adwords.google.com/api/adwords/v8}getGzipReportDownloadUrlResponse
class GetGzipReportDownloadUrlResponse
  @@schema_type = "getGzipReportDownloadUrlResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["getGzipReportDownloadUrlReturn", "SOAP::SOAPString"]]

  attr_accessor :getGzipReportDownloadUrlReturn

  def initialize(getGzipReportDownloadUrlReturn = nil)
    @getGzipReportDownloadUrlReturn = getGzipReportDownloadUrlReturn
  end
end

# {https://adwords.google.com/api/adwords/v8}getReportDownloadUrl
class GetReportDownloadUrl
  @@schema_type = "getReportDownloadUrl"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["reportJobId", "SOAP::SOAPLong"]]

  attr_accessor :reportJobId

  def initialize(reportJobId = nil)
    @reportJobId = reportJobId
  end
end

# {https://adwords.google.com/api/adwords/v8}getReportDownloadUrlResponse
class GetReportDownloadUrlResponse
  @@schema_type = "getReportDownloadUrlResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["getReportDownloadUrlReturn", "SOAP::SOAPString"]]

  attr_accessor :getReportDownloadUrlReturn

  def initialize(getReportDownloadUrlReturn = nil)
    @getReportDownloadUrlReturn = getReportDownloadUrlReturn
  end
end

# {https://adwords.google.com/api/adwords/v8}getReportJobStatus
class GetReportJobStatus
  @@schema_type = "getReportJobStatus"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["reportJobId", "SOAP::SOAPLong"]]

  attr_accessor :reportJobId

  def initialize(reportJobId = nil)
    @reportJobId = reportJobId
  end
end

# {https://adwords.google.com/api/adwords/v8}getReportJobStatusResponse
class GetReportJobStatusResponse
  @@schema_type = "getReportJobStatusResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["getReportJobStatusReturn", "SOAP::SOAPString"]]

  attr_accessor :getReportJobStatusReturn

  def initialize(getReportJobStatusReturn = nil)
    @getReportJobStatusReturn = getReportJobStatusReturn
  end
end

# {https://adwords.google.com/api/adwords/v8}scheduleReportJob
class ScheduleReportJob
  @@schema_type = "scheduleReportJob"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["job", "ReportJob"]]

  attr_accessor :job

  def initialize(job = nil)
    @job = job
  end
end

# {https://adwords.google.com/api/adwords/v8}scheduleReportJobResponse
class ScheduleReportJobResponse
  @@schema_type = "scheduleReportJobResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["scheduleReportJobReturn", "SOAP::SOAPLong"]]

  attr_accessor :scheduleReportJobReturn

  def initialize(scheduleReportJobReturn = nil)
    @scheduleReportJobReturn = scheduleReportJobReturn
  end
end

# {https://adwords.google.com/api/adwords/v8}AccountReportJob
class AccountReportJob
  @@schema_type = "AccountReportJob"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v8}AdGroupReportJob
class AdGroupReportJob
  @@schema_type = "AdGroupReportJob"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v8}AdImageReportJob
class AdImageReportJob
  @@schema_type = "AdImageReportJob"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v8}AdTextReportJob
class AdTextReportJob
  @@schema_type = "AdTextReportJob"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v8}ApiError
class ApiError
  @@schema_type = "ApiError"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
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

# {https://adwords.google.com/api/adwords/v8}ApiException
class ApiException
  @@schema_type = "ApiException"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
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

# {https://adwords.google.com/api/adwords/v8}CampaignReportJob
class CampaignReportJob
  @@schema_type = "CampaignReportJob"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v8}CustomReportJob
class CustomReportJob
  @@schema_type = "CustomReportJob"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v8}KeywordReportJob
class KeywordReportJob
  @@schema_type = "KeywordReportJob"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v8}ReportJob
class ReportJob
  @@schema_type = "ReportJob"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = [["aggregationType", "SOAP::SOAPString"], ["clientEmails", "SOAP::SOAPString[]"], ["crossClient", "SOAP::SOAPBoolean"], ["endDay", "SOAP::SOAPDate"], ["id", "SOAP::SOAPLong"], ["name", "SOAP::SOAPString"], ["startDay", "SOAP::SOAPDate"], ["status", "SOAP::SOAPString"]]

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

# {https://adwords.google.com/api/adwords/v8}UrlReportJob
class UrlReportJob
  @@schema_type = "UrlReportJob"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v8}AdGroupStatus
module AdGroupStatus
  Deleted = "Deleted"
  Enabled = "Enabled"
  Paused = "Paused"
end

# {https://adwords.google.com/api/adwords/v8}AdWordsType
module AdWordsType
  ContentOnly = "ContentOnly"
  SearchOnly = "SearchOnly"
end

# {https://adwords.google.com/api/adwords/v8}AggregationType
module AggregationType
  Daily = "Daily"
  HourlyByDate = "HourlyByDate"
  HourlyRegardlessDate = "HourlyRegardlessDate"
  Monthly = "Monthly"
  Quarterly = "Quarterly"
  Summary = "Summary"
  Weekly = "Weekly"
  Yearly = "Yearly"
end

# {https://adwords.google.com/api/adwords/v8}CampaignStatus
module CampaignStatus
  Active = "Active"
  Deleted = "Deleted"
  Ended = "Ended"
  Paused = "Paused"
  Pending = "Pending"
  Suspended = "Suspended"
end

# {https://adwords.google.com/api/adwords/v8}CustomReportOption
module CustomReportOption
  AccountName = "AccountName"
  AdGroup = "AdGroup"
  AdGroupId = "AdGroupId"
  AdGroupStatus = "AdGroupStatus"
  AdWordsType = "AdWordsType"
  AverageConversionValue = "AverageConversionValue"
  AveragePosition = "AveragePosition"
  BottomPosition = "BottomPosition"
  BusinessAddress = "BusinessAddress"
  BusinessName = "BusinessName"
  CPM = "CPM"
  Campaign = "Campaign"
  CampaignEndDate = "CampaignEndDate"
  CampaignId = "CampaignId"
  CampaignStatus = "CampaignStatus"
  Clicks = "Clicks"
  ConversionRate = "ConversionRate"
  ConversionValuePerClick = "ConversionValuePerClick"
  ConversionValuePerCost = "ConversionValuePerCost"
  Conversions = "Conversions"
  Cost = "Cost"
  CostPerConversion = "CostPerConversion"
  CostPerTransaction = "CostPerTransaction"
  Cpc = "Cpc"
  CreativeDestinationUrl = "CreativeDestinationUrl"
  CreativeId = "CreativeId"
  CreativeStatus = "CreativeStatus"
  CreativeType = "CreativeType"
  Ctr = "Ctr"
  CurrencyCode = "CurrencyCode"
  CustomerId = "CustomerId"
  CustomerTimeZone = "CustomerTimeZone"
  DailyBudget = "DailyBudget"
  DefaultConversionCount = "DefaultConversionCount"
  DefaultConversionValue = "DefaultConversionValue"
  DescriptionLine1 = "DescriptionLine1"
  DescriptionLine2 = "DescriptionLine2"
  DescriptionLine3 = "DescriptionLine3"
  DestinationUrl = "DestinationUrl"
  ImageAdName = "ImageAdName"
  ImageHostingKey = "ImageHostingKey"
  Impressions = "Impressions"
  Keyword = "Keyword"
  KeywordDestinationUrl = "KeywordDestinationUrl"
  KeywordId = "KeywordId"
  KeywordStatus = "KeywordStatus"
  KeywordType = "KeywordType"
  LeadCount = "LeadCount"
  LeadValue = "LeadValue"
  MaxContentCPC = "MaxContentCPC"
  MaximumCPM = "MaximumCPM"
  MaximumCpc = "MaximumCpc"
  MinimumCpc = "MinimumCpc"
  PageViewCount = "PageViewCount"
  PageViewValue = "PageViewValue"
  PhoneNumber = "PhoneNumber"
  SaleCount = "SaleCount"
  SaleValue = "SaleValue"
  SignupCount = "SignupCount"
  SignupValue = "SignupValue"
  TopPosition = "TopPosition"
  TotalConversionValue = "TotalConversionValue"
  Transactions = "Transactions"
  VisibleUrl = "VisibleUrl"
  Website = "Website"
end

# {https://adwords.google.com/api/adwords/v8}KeywordStatus
module KeywordStatus
  Deleted = "Deleted"
  Disapproved = "Disapproved"
  Normal = "Normal"
  OnHold = "OnHold"
  Paused = "Paused"
end

# {https://adwords.google.com/api/adwords/v8}KeywordType
module KeywordType
  Broad = "Broad"
  Exact = "Exact"
  Phrase = "Phrase"
end

# {https://adwords.google.com/api/adwords/v8}ReportJobStatus
module ReportJobStatus
  Completed = "Completed"
  Failed = "Failed"
  InProgress = "InProgress"
  Pending = "Pending"
end
end
