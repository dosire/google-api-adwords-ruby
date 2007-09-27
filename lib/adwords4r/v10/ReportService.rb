require 'xsd/qname'

module AdWords; module ReportService


# {https://adwords.google.com/api/adwords/v10}ApiError
class ApiError
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

# {https://adwords.google.com/api/adwords/v10}ApiException
class ApiException
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

# {https://adwords.google.com/api/adwords/v10}ReportJob
# abstract
class ReportJob
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

# {https://adwords.google.com/api/adwords/v10}AccountReportJob
class AccountReportJob < ReportJob
  attr_accessor :aggregationType
  attr_accessor :clientEmails
  attr_accessor :crossClient
  attr_accessor :endDay
  attr_accessor :id
  attr_accessor :name
  attr_accessor :startDay
  attr_accessor :status
  attr_accessor :adWordsType

  def initialize(aggregationType = nil, clientEmails = [], crossClient = nil, endDay = nil, id = nil, name = nil, startDay = nil, status = nil, adWordsType = nil)
    @aggregationType = aggregationType
    @clientEmails = clientEmails
    @crossClient = crossClient
    @endDay = endDay
    @id = id
    @name = name
    @startDay = startDay
    @status = status
    @adWordsType = adWordsType
  end
end

# {https://adwords.google.com/api/adwords/v10}AdGroupReportJob
class AdGroupReportJob < ReportJob
  attr_accessor :aggregationType
  attr_accessor :clientEmails
  attr_accessor :crossClient
  attr_accessor :endDay
  attr_accessor :id
  attr_accessor :name
  attr_accessor :startDay
  attr_accessor :status
  attr_accessor :adGroupStatuses
  attr_accessor :adWordsType
  attr_accessor :campaigns

  def initialize(aggregationType = nil, clientEmails = [], crossClient = nil, endDay = nil, id = nil, name = nil, startDay = nil, status = nil, adGroupStatuses = [], adWordsType = nil, campaigns = [])
    @aggregationType = aggregationType
    @clientEmails = clientEmails
    @crossClient = crossClient
    @endDay = endDay
    @id = id
    @name = name
    @startDay = startDay
    @status = status
    @adGroupStatuses = adGroupStatuses
    @adWordsType = adWordsType
    @campaigns = campaigns
  end
end

# {https://adwords.google.com/api/adwords/v10}AdImageReportJob
class AdImageReportJob < ReportJob
  attr_accessor :aggregationType
  attr_accessor :clientEmails
  attr_accessor :crossClient
  attr_accessor :endDay
  attr_accessor :id
  attr_accessor :name
  attr_accessor :startDay
  attr_accessor :status
  attr_accessor :campaigns

  def initialize(aggregationType = nil, clientEmails = [], crossClient = nil, endDay = nil, id = nil, name = nil, startDay = nil, status = nil, campaigns = [])
    @aggregationType = aggregationType
    @clientEmails = clientEmails
    @crossClient = crossClient
    @endDay = endDay
    @id = id
    @name = name
    @startDay = startDay
    @status = status
    @campaigns = campaigns
  end
end

# {https://adwords.google.com/api/adwords/v10}AdTextReportJob
class AdTextReportJob < ReportJob
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

# {https://adwords.google.com/api/adwords/v10}CampaignReportJob
class CampaignReportJob < ReportJob
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

# {https://adwords.google.com/api/adwords/v10}CustomReportJob
class CustomReportJob < ReportJob
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
  attr_accessor :includeZeroImpression
  attr_accessor :keywordStatuses
  attr_accessor :keywordType
  attr_accessor :keywords

  def initialize(aggregationType = nil, clientEmails = [], crossClient = nil, endDay = nil, id = nil, name = nil, startDay = nil, status = nil, adGroupStatuses = [], adGroups = [], adWordsType = nil, campaignStatuses = [], campaigns = [], customOptions = [], includeZeroImpression = nil, keywordStatuses = [], keywordType = nil, keywords = [])
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
    @includeZeroImpression = includeZeroImpression
    @keywordStatuses = keywordStatuses
    @keywordType = keywordType
    @keywords = keywords
  end
end

# {https://adwords.google.com/api/adwords/v10}KeywordReportJob
class KeywordReportJob < ReportJob
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
  attr_accessor :includeZeroImpression
  attr_accessor :keywordStatuses
  attr_accessor :keywordType

  def initialize(aggregationType = nil, clientEmails = [], crossClient = nil, endDay = nil, id = nil, name = nil, startDay = nil, status = nil, adWordsType = nil, campaigns = [], includeZeroImpression = nil, keywordStatuses = [], keywordType = nil)
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
    @includeZeroImpression = includeZeroImpression
    @keywordStatuses = keywordStatuses
    @keywordType = keywordType
  end
end

# {https://adwords.google.com/api/adwords/v10}UrlReportJob
class UrlReportJob < ReportJob
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

# {https://adwords.google.com/api/adwords/v10}AdGroupStatus
class AdGroupStatus < ::String
  Deleted = AdGroupStatus.new("Deleted")
  Enabled = AdGroupStatus.new("Enabled")
  Paused = AdGroupStatus.new("Paused")
end

# {https://adwords.google.com/api/adwords/v10}AdWordsType
class AdWordsType < ::String
  ContentOnly = AdWordsType.new("ContentOnly")
  SearchOnly = AdWordsType.new("SearchOnly")
end

# {https://adwords.google.com/api/adwords/v10}AggregationType
class AggregationType < ::String
  Daily = AggregationType.new("Daily")
  HourlyByDate = AggregationType.new("HourlyByDate")
  HourlyRegardlessDate = AggregationType.new("HourlyRegardlessDate")
  Monthly = AggregationType.new("Monthly")
  Quarterly = AggregationType.new("Quarterly")
  Summary = AggregationType.new("Summary")
  Weekly = AggregationType.new("Weekly")
  Yearly = AggregationType.new("Yearly")
end

# {https://adwords.google.com/api/adwords/v10}CampaignStatus
class CampaignStatus < ::String
  Active = CampaignStatus.new("Active")
  Deleted = CampaignStatus.new("Deleted")
  Ended = CampaignStatus.new("Ended")
  Paused = CampaignStatus.new("Paused")
  Pending = CampaignStatus.new("Pending")
  Suspended = CampaignStatus.new("Suspended")
end

# {https://adwords.google.com/api/adwords/v10}CustomReportOption
class CustomReportOption < ::String
  AccountName = CustomReportOption.new("AccountName")
  AdGroup = CustomReportOption.new("AdGroup")
  AdGroupId = CustomReportOption.new("AdGroupId")
  AdGroupStatus = CustomReportOption.new("AdGroupStatus")
  AdWordsType = CustomReportOption.new("AdWordsType")
  AverageConversionValue = CustomReportOption.new("AverageConversionValue")
  AveragePosition = CustomReportOption.new("AveragePosition")
  BottomPosition = CustomReportOption.new("BottomPosition")
  BusinessAddress = CustomReportOption.new("BusinessAddress")
  BusinessName = CustomReportOption.new("BusinessName")
  CPM = CustomReportOption.new("CPM")
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
  CreativeType = CustomReportOption.new("CreativeType")
  Ctr = CustomReportOption.new("Ctr")
  CurrencyCode = CustomReportOption.new("CurrencyCode")
  CustomerId = CustomReportOption.new("CustomerId")
  CustomerTimeZone = CustomReportOption.new("CustomerTimeZone")
  DailyBudget = CustomReportOption.new("DailyBudget")
  DefaultConversionCount = CustomReportOption.new("DefaultConversionCount")
  DefaultConversionValue = CustomReportOption.new("DefaultConversionValue")
  DescriptionLine1 = CustomReportOption.new("DescriptionLine1")
  DescriptionLine2 = CustomReportOption.new("DescriptionLine2")
  DescriptionLine3 = CustomReportOption.new("DescriptionLine3")
  DestinationUrl = CustomReportOption.new("DestinationUrl")
  ImageAdName = CustomReportOption.new("ImageAdName")
  ImageHostingKey = CustomReportOption.new("ImageHostingKey")
  Impressions = CustomReportOption.new("Impressions")
  Keyword = CustomReportOption.new("Keyword")
  KeywordDestinationUrl = CustomReportOption.new("KeywordDestinationUrl")
  KeywordId = CustomReportOption.new("KeywordId")
  KeywordStatus = CustomReportOption.new("KeywordStatus")
  KeywordType = CustomReportOption.new("KeywordType")
  LeadCount = CustomReportOption.new("LeadCount")
  LeadValue = CustomReportOption.new("LeadValue")
  MaxContentCPC = CustomReportOption.new("MaxContentCPC")
  MaximumCPM = CustomReportOption.new("MaximumCPM")
  MaximumCpc = CustomReportOption.new("MaximumCpc")
  MinimumCpc = CustomReportOption.new("MinimumCpc")
  PageViewCount = CustomReportOption.new("PageViewCount")
  PageViewValue = CustomReportOption.new("PageViewValue")
  PhoneNumber = CustomReportOption.new("PhoneNumber")
  SaleCount = CustomReportOption.new("SaleCount")
  SaleValue = CustomReportOption.new("SaleValue")
  SignupCount = CustomReportOption.new("SignupCount")
  SignupValue = CustomReportOption.new("SignupValue")
  TopPosition = CustomReportOption.new("TopPosition")
  TotalConversionValue = CustomReportOption.new("TotalConversionValue")
  Transactions = CustomReportOption.new("Transactions")
  VisibleUrl = CustomReportOption.new("VisibleUrl")
  Website = CustomReportOption.new("Website")
end

# {https://adwords.google.com/api/adwords/v10}KeywordStatus
class KeywordStatus < ::String
  Active = KeywordStatus.new("Active")
  Deleted = KeywordStatus.new("Deleted")
  Disapproved = KeywordStatus.new("Disapproved")
  InActive = KeywordStatus.new("InActive")
  Paused = KeywordStatus.new("Paused")
end

# {https://adwords.google.com/api/adwords/v10}KeywordType
class KeywordType < ::String
  Broad = KeywordType.new("Broad")
  Exact = KeywordType.new("Exact")
  Phrase = KeywordType.new("Phrase")
end

# {https://adwords.google.com/api/adwords/v10}ReportJobStatus
class ReportJobStatus < ::String
  Completed = ReportJobStatus.new("Completed")
  Failed = ReportJobStatus.new("Failed")
  InProgress = ReportJobStatus.new("InProgress")
  Pending = ReportJobStatus.new("Pending")
end

# {https://adwords.google.com/api/adwords/v10}deleteReport
class DeleteReport
  attr_accessor :reportJobId

  def initialize(reportJobId = nil)
    @reportJobId = reportJobId
  end
end

# {https://adwords.google.com/api/adwords/v10}deleteReportResponse
class DeleteReportResponse
  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v10}getAllJobs
class GetAllJobs
  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v10}getAllJobsResponse
class GetAllJobsResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v10}getGzipReportDownloadUrl
class GetGzipReportDownloadUrl
  attr_accessor :reportJobId

  def initialize(reportJobId = nil)
    @reportJobId = reportJobId
  end
end

# {https://adwords.google.com/api/adwords/v10}getGzipReportDownloadUrlResponse
class GetGzipReportDownloadUrlResponse
  attr_accessor :getGzipReportDownloadUrlReturn

  def initialize(getGzipReportDownloadUrlReturn = nil)
    @getGzipReportDownloadUrlReturn = getGzipReportDownloadUrlReturn
  end
end

# {https://adwords.google.com/api/adwords/v10}getReportDownloadUrl
class GetReportDownloadUrl
  attr_accessor :reportJobId

  def initialize(reportJobId = nil)
    @reportJobId = reportJobId
  end
end

# {https://adwords.google.com/api/adwords/v10}getReportDownloadUrlResponse
class GetReportDownloadUrlResponse
  attr_accessor :getReportDownloadUrlReturn

  def initialize(getReportDownloadUrlReturn = nil)
    @getReportDownloadUrlReturn = getReportDownloadUrlReturn
  end
end

# {https://adwords.google.com/api/adwords/v10}getReportJobStatus
class GetReportJobStatus
  attr_accessor :reportJobId

  def initialize(reportJobId = nil)
    @reportJobId = reportJobId
  end
end

# {https://adwords.google.com/api/adwords/v10}getReportJobStatusResponse
class GetReportJobStatusResponse
  attr_accessor :getReportJobStatusReturn

  def initialize(getReportJobStatusReturn = nil)
    @getReportJobStatusReturn = getReportJobStatusReturn
  end
end

# {https://adwords.google.com/api/adwords/v10}scheduleReportJob
class ScheduleReportJob
  attr_accessor :job

  def initialize(job = nil)
    @job = job
  end
end

# {https://adwords.google.com/api/adwords/v10}scheduleReportJobResponse
class ScheduleReportJobResponse
  attr_accessor :scheduleReportJobReturn

  def initialize(scheduleReportJobReturn = nil)
    @scheduleReportJobReturn = scheduleReportJobReturn
  end
end


end; end
