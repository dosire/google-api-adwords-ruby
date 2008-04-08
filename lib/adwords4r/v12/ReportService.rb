require 'xsd/qname'

module AdWords; module ReportService


# {https://adwords.google.com/api/adwords/v12}ApiError
#   code - SOAP::SOAPInt
#   detail - SOAP::SOAPString
#   field - SOAP::SOAPString
#   index - SOAP::SOAPInt
#   isExemptable - SOAP::SOAPBoolean
#   textIndex - SOAP::SOAPInt
#   textLength - SOAP::SOAPInt
#   trigger - SOAP::SOAPString
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

# {https://adwords.google.com/api/adwords/v12}ApiException
#   code - SOAP::SOAPInt
#   errors - AdWords::ReportService::ApiError
#   internal - SOAP::SOAPBoolean
#   message - SOAP::SOAPString
#   trigger - SOAP::SOAPString
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

# {https://adwords.google.com/api/adwords/v12}ReportJob
# abstract
#   clientEmails - SOAP::SOAPString
#   crossClient - SOAP::SOAPBoolean
#   endDay - SOAP::SOAPDate
#   id - SOAP::SOAPLong
#   name - SOAP::SOAPString
#   startDay - SOAP::SOAPDate
#   status - AdWords::ReportService::ReportJobStatus
class ReportJob
  attr_accessor :clientEmails
  attr_accessor :crossClient
  attr_accessor :endDay
  attr_accessor :id
  attr_accessor :name
  attr_accessor :startDay
  attr_accessor :status

  def initialize(clientEmails = [], crossClient = nil, endDay = nil, id = nil, name = nil, startDay = nil, status = nil)
    @clientEmails = clientEmails
    @crossClient = crossClient
    @endDay = endDay
    @id = id
    @name = name
    @startDay = startDay
    @status = status
  end
end

# {https://adwords.google.com/api/adwords/v12}DefinedReportJob
#   clientEmails - SOAP::SOAPString
#   crossClient - SOAP::SOAPBoolean
#   endDay - SOAP::SOAPDate
#   id - SOAP::SOAPLong
#   name - SOAP::SOAPString
#   startDay - SOAP::SOAPDate
#   status - AdWords::ReportService::ReportJobStatus
#   adGroupStatuses - AdWords::ReportService::AdGroupStatus
#   adGroups - SOAP::SOAPInt
#   adWordsType - AdWords::ReportService::AdWordsType
#   aggregationTypes - SOAP::SOAPString
#   campaignStatuses - AdWords::ReportService::CampaignStatus
#   campaigns - SOAP::SOAPInt
#   includeZeroImpression - SOAP::SOAPBoolean
#   keywordStatuses - AdWords::ReportService::KeywordStatus
#   keywordType - AdWords::ReportService::KeywordType
#   keywords - SOAP::SOAPString
#   selectedColumns - SOAP::SOAPString
#   selectedReportType - SOAP::SOAPString
class DefinedReportJob < ReportJob
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
  attr_accessor :aggregationTypes
  attr_accessor :campaignStatuses
  attr_accessor :campaigns
  attr_accessor :includeZeroImpression
  attr_accessor :keywordStatuses
  attr_accessor :keywordType
  attr_accessor :keywords
  attr_accessor :selectedColumns
  attr_accessor :selectedReportType

  def initialize(clientEmails = [], crossClient = nil, endDay = nil, id = nil, name = nil, startDay = nil, status = nil, adGroupStatuses = [], adGroups = [], adWordsType = nil, aggregationTypes = [], campaignStatuses = [], campaigns = [], includeZeroImpression = nil, keywordStatuses = [], keywordType = nil, keywords = [], selectedColumns = [], selectedReportType = nil)
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
    @aggregationTypes = aggregationTypes
    @campaignStatuses = campaignStatuses
    @campaigns = campaigns
    @includeZeroImpression = includeZeroImpression
    @keywordStatuses = keywordStatuses
    @keywordType = keywordType
    @keywords = keywords
    @selectedColumns = selectedColumns
    @selectedReportType = selectedReportType
  end
end

# {https://adwords.google.com/api/adwords/v12}AdGroupStatus
class AdGroupStatus < ::String
  Deleted = AdGroupStatus.new("Deleted")
  Enabled = AdGroupStatus.new("Enabled")
  Paused = AdGroupStatus.new("Paused")
end

# {https://adwords.google.com/api/adwords/v12}AdWordsType
class AdWordsType < ::String
  ContentOnly = AdWordsType.new("ContentOnly")
  SearchOnly = AdWordsType.new("SearchOnly")
end

# {https://adwords.google.com/api/adwords/v12}CampaignStatus
class CampaignStatus < ::String
  Active = CampaignStatus.new("Active")
  Deleted = CampaignStatus.new("Deleted")
  Ended = CampaignStatus.new("Ended")
  Paused = CampaignStatus.new("Paused")
  Pending = CampaignStatus.new("Pending")
  Suspended = CampaignStatus.new("Suspended")
end

# {https://adwords.google.com/api/adwords/v12}KeywordStatus
class KeywordStatus < ::String
  Active = KeywordStatus.new("Active")
  Deleted = KeywordStatus.new("Deleted")
  Disapproved = KeywordStatus.new("Disapproved")
  InActive = KeywordStatus.new("InActive")
  Paused = KeywordStatus.new("Paused")
end

# {https://adwords.google.com/api/adwords/v12}KeywordType
class KeywordType < ::String
  Broad = KeywordType.new("Broad")
  Exact = KeywordType.new("Exact")
  Phrase = KeywordType.new("Phrase")
end

# {https://adwords.google.com/api/adwords/v12}ReportJobStatus
class ReportJobStatus < ::String
  Completed = ReportJobStatus.new("Completed")
  Failed = ReportJobStatus.new("Failed")
  InProgress = ReportJobStatus.new("InProgress")
  Pending = ReportJobStatus.new("Pending")
end

# {https://adwords.google.com/api/adwords/v12}deleteReport
#   reportJobId - SOAP::SOAPLong
class DeleteReport
  attr_accessor :reportJobId

  def initialize(reportJobId = nil)
    @reportJobId = reportJobId
  end
end

# {https://adwords.google.com/api/adwords/v12}deleteReportResponse
class DeleteReportResponse
  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v12}getAllJobs
class GetAllJobs
  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v12}getAllJobsResponse
class GetAllJobsResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v12}getGzipReportDownloadUrl
#   reportJobId - SOAP::SOAPLong
class GetGzipReportDownloadUrl
  attr_accessor :reportJobId

  def initialize(reportJobId = nil)
    @reportJobId = reportJobId
  end
end

# {https://adwords.google.com/api/adwords/v12}getGzipReportDownloadUrlResponse
#   getGzipReportDownloadUrlReturn - SOAP::SOAPString
class GetGzipReportDownloadUrlResponse
  attr_accessor :getGzipReportDownloadUrlReturn

  def initialize(getGzipReportDownloadUrlReturn = nil)
    @getGzipReportDownloadUrlReturn = getGzipReportDownloadUrlReturn
  end
end

# {https://adwords.google.com/api/adwords/v12}getReportDownloadUrl
#   reportJobId - SOAP::SOAPLong
class GetReportDownloadUrl
  attr_accessor :reportJobId

  def initialize(reportJobId = nil)
    @reportJobId = reportJobId
  end
end

# {https://adwords.google.com/api/adwords/v12}getReportDownloadUrlResponse
#   getReportDownloadUrlReturn - SOAP::SOAPString
class GetReportDownloadUrlResponse
  attr_accessor :getReportDownloadUrlReturn

  def initialize(getReportDownloadUrlReturn = nil)
    @getReportDownloadUrlReturn = getReportDownloadUrlReturn
  end
end

# {https://adwords.google.com/api/adwords/v12}getReportJobStatus
#   reportJobId - SOAP::SOAPLong
class GetReportJobStatus
  attr_accessor :reportJobId

  def initialize(reportJobId = nil)
    @reportJobId = reportJobId
  end
end

# {https://adwords.google.com/api/adwords/v12}getReportJobStatusResponse
#   getReportJobStatusReturn - AdWords::ReportService::ReportJobStatus
class GetReportJobStatusResponse
  attr_accessor :getReportJobStatusReturn

  def initialize(getReportJobStatusReturn = nil)
    @getReportJobStatusReturn = getReportJobStatusReturn
  end
end

# {https://adwords.google.com/api/adwords/v12}scheduleReportJob
#   job - AdWords::ReportService::ReportJob
class ScheduleReportJob
  attr_accessor :job

  def initialize(job = nil)
    @job = job
  end
end

# {https://adwords.google.com/api/adwords/v12}scheduleReportJobResponse
#   scheduleReportJobReturn - SOAP::SOAPLong
class ScheduleReportJobResponse
  attr_accessor :scheduleReportJobReturn

  def initialize(scheduleReportJobReturn = nil)
    @scheduleReportJobReturn = scheduleReportJobReturn
  end
end

# {https://adwords.google.com/api/adwords/v12}validateReportJob
#   job - AdWords::ReportService::ReportJob
class ValidateReportJob
  attr_accessor :job

  def initialize(job = nil)
    @job = job
  end
end

# {https://adwords.google.com/api/adwords/v12}validateReportJobResponse
class ValidateReportJobResponse
  def initialize
  end
end


end; end
