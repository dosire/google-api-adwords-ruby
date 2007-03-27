module AdWords
require 'xsd/qname'

# {https://adwords.google.com/api/adwords/v7}scheduleReportJob
class ScheduleReportJob
  @@schema_type = "scheduleReportJob"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["job", "ReportJob"]]

  attr_accessor :job

  def initialize(job = nil)
    @job = job
  end
end

# {https://adwords.google.com/api/adwords/v7}scheduleReportJobResponse
class ScheduleReportJobResponse
  @@schema_type = "scheduleReportJobResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["scheduleReportJobReturn", "SOAP::SOAPLong"]]

  attr_accessor :scheduleReportJobReturn

  def initialize(scheduleReportJobReturn = nil)
    @scheduleReportJobReturn = scheduleReportJobReturn
  end
end

# {https://adwords.google.com/api/adwords/v7}getReportJobStatus
class GetReportJobStatus
  @@schema_type = "getReportJobStatus"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["reportJobId", "SOAP::SOAPLong"]]

  attr_accessor :reportJobId

  def initialize(reportJobId = nil)
    @reportJobId = reportJobId
  end
end

# {https://adwords.google.com/api/adwords/v7}getReportJobStatusResponse
class GetReportJobStatusResponse
  @@schema_type = "getReportJobStatusResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["getReportJobStatusReturn", "SOAP::SOAPString"]]

  attr_accessor :getReportJobStatusReturn

  def initialize(getReportJobStatusReturn = nil)
    @getReportJobStatusReturn = getReportJobStatusReturn
  end
end

# {https://adwords.google.com/api/adwords/v7}getReportDownloadUrl
class GetReportDownloadUrl
  @@schema_type = "getReportDownloadUrl"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["reportJobId", "SOAP::SOAPLong"]]

  attr_accessor :reportJobId

  def initialize(reportJobId = nil)
    @reportJobId = reportJobId
  end
end

# {https://adwords.google.com/api/adwords/v7}getReportDownloadUrlResponse
class GetReportDownloadUrlResponse
  @@schema_type = "getReportDownloadUrlResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["getReportDownloadUrlReturn", "SOAP::SOAPString"]]

  attr_accessor :getReportDownloadUrlReturn

  def initialize(getReportDownloadUrlReturn = nil)
    @getReportDownloadUrlReturn = getReportDownloadUrlReturn
  end
end

# {https://adwords.google.com/api/adwords/v7}getGzipReportDownloadUrl
class GetGzipReportDownloadUrl
  @@schema_type = "getGzipReportDownloadUrl"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["reportJobId", "SOAP::SOAPLong"]]

  attr_accessor :reportJobId

  def initialize(reportJobId = nil)
    @reportJobId = reportJobId
  end
end

# {https://adwords.google.com/api/adwords/v7}getGzipReportDownloadUrlResponse
class GetGzipReportDownloadUrlResponse
  @@schema_type = "getGzipReportDownloadUrlResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["getGzipReportDownloadUrlReturn", "SOAP::SOAPString"]]

  attr_accessor :getGzipReportDownloadUrlReturn

  def initialize(getGzipReportDownloadUrlReturn = nil)
    @getGzipReportDownloadUrlReturn = getGzipReportDownloadUrlReturn
  end
end

# {https://adwords.google.com/api/adwords/v7}getAllJobs
class GetAllJobs
  @@schema_type = "getAllJobs"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v7}getAllJobsResponse
class GetAllJobsResponse
  @@schema_type = "getAllJobsResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["getAllJobsReturn", "ReportJob[]"]]

  attr_accessor :getAllJobsReturn

  def initialize(getAllJobsReturn = [])
    @getAllJobsReturn = getAllJobsReturn
  end
end

# {https://adwords.google.com/api/adwords/v7}deleteReport
class DeleteReport
  @@schema_type = "deleteReport"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["reportJobId", "SOAP::SOAPLong"]]

  attr_accessor :reportJobId

  def initialize(reportJobId = nil)
    @reportJobId = reportJobId
  end
end

# {https://adwords.google.com/api/adwords/v7}deleteReportResponse
class DeleteReportResponse
  @@schema_type = "deleteReportResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v7}ApiException
class ApiException
  @@schema_type = "ApiException"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = [["code", "SOAP::SOAPInt"], ["internal", "SOAP::SOAPBoolean"], ["message", "SOAP::SOAPString"], ["trigger", "SOAP::SOAPString"], ["errors", "ApiError[]"]]

  attr_accessor :code
  attr_accessor :internal
  attr_accessor :message
  attr_accessor :trigger
  attr_accessor :errors

  def initialize(code = nil, internal = nil, message = nil, trigger = nil, errors = [])
    @code = code
    @internal = internal
    @message = message
    @trigger = trigger
    @errors = errors
  end
end

# {https://adwords.google.com/api/adwords/v7}ApiError
class ApiError
  @@schema_type = "ApiError"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = [["index", "SOAP::SOAPInt"], ["field", "SOAP::SOAPString"], ["textIndex", "SOAP::SOAPInt"], ["textLength", "SOAP::SOAPInt"], ["trigger", "SOAP::SOAPString"], ["code", "SOAP::SOAPInt"], ["isExemptable", "SOAP::SOAPBoolean"], ["detail", "SOAP::SOAPString"]]

  attr_accessor :index
  attr_accessor :field
  attr_accessor :textIndex
  attr_accessor :textLength
  attr_accessor :trigger
  attr_accessor :code
  attr_accessor :isExemptable
  attr_accessor :detail

  def initialize(index = nil, field = nil, textIndex = nil, textLength = nil, trigger = nil, code = nil, isExemptable = nil, detail = nil)
    @index = index
    @field = field
    @textIndex = textIndex
    @textLength = textLength
    @trigger = trigger
    @code = code
    @isExemptable = isExemptable
    @detail = detail
  end
end

# {https://adwords.google.com/api/adwords/v7}ReportJob
class ReportJob
  @@schema_type = "ReportJob"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
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

# {https://adwords.google.com/api/adwords/v7}KeywordReportJob
class KeywordReportJob
  @@schema_type = "KeywordReportJob"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v7}AdTextReportJob
class AdTextReportJob
  @@schema_type = "AdTextReportJob"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v7}UrlReportJob
class UrlReportJob
  @@schema_type = "UrlReportJob"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v7}CustomReportJob
class CustomReportJob
  @@schema_type = "CustomReportJob"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v7}CampaignReportJob
class CampaignReportJob
  @@schema_type = "CampaignReportJob"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v7}AccountReportJob
class AccountReportJob
  @@schema_type = "AccountReportJob"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v7}AdGroupReportJob
class AdGroupReportJob
  @@schema_type = "AdGroupReportJob"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v7}AdImageReportJob
class AdImageReportJob
  @@schema_type = "AdImageReportJob"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v7}ReportJobStatus
module ReportJobStatus
  Completed = "Completed"
  Failed = "Failed"
  InProgress = "InProgress"
  Pending = "Pending"
end

# {https://adwords.google.com/api/adwords/v7}AggregationType
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

# {https://adwords.google.com/api/adwords/v7}AdWordsType
module AdWordsType
  ContentOnly = "ContentOnly"
  SearchOnly = "SearchOnly"
end

# {https://adwords.google.com/api/adwords/v7}KeywordStatus
module KeywordStatus
  Deleted = "Deleted"
  Disabled = "Disabled"
  Disapproved = "Disapproved"
  InTrial = "InTrial"
  Normal = "Normal"
  OnHold = "OnHold"
  Paused = "Paused"
end

# {https://adwords.google.com/api/adwords/v7}KeywordType
module KeywordType
  Broad = "Broad"
  Exact = "Exact"
  Phrase = "Phrase"
end

# {https://adwords.google.com/api/adwords/v7}CampaignStatus
module CampaignStatus
  Active = "Active"
  Deleted = "Deleted"
  Ended = "Ended"
  Paused = "Paused"
  Pending = "Pending"
  Suspended = "Suspended"
end

# {https://adwords.google.com/api/adwords/v7}CustomReportOption
module CustomReportOption
  AccountName = "AccountName"
  AdGroup = "AdGroup"
  AdGroupId = "AdGroupId"
  AdGroupStatus = "AdGroupStatus"
  AdWordsType = "AdWordsType"
  AverageConversionValue = "AverageConversionValue"
  AveragePosition = "AveragePosition"
  BottomPosition = "BottomPosition"
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

# {https://adwords.google.com/api/adwords/v7}AdGroupStatus
module AdGroupStatus
  Deleted = "Deleted"
  Enabled = "Enabled"
  Paused = "Paused"
end
end
