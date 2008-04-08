require 'xsd/qname'

module AdWords; module CriterionService


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
#   errors - AdWords::CriterionService::ApiError
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

# {https://adwords.google.com/api/adwords/v12}Circle
#   latitudeMicroDegrees - SOAP::SOAPInt
#   longitudeMicroDegrees - SOAP::SOAPInt
#   radiusMeters - SOAP::SOAPInt
class Circle
  attr_accessor :latitudeMicroDegrees
  attr_accessor :longitudeMicroDegrees
  attr_accessor :radiusMeters

  def initialize(latitudeMicroDegrees = nil, longitudeMicroDegrees = nil, radiusMeters = nil)
    @latitudeMicroDegrees = latitudeMicroDegrees
    @longitudeMicroDegrees = longitudeMicroDegrees
    @radiusMeters = radiusMeters
  end
end

# {https://adwords.google.com/api/adwords/v12}CityTargets
class CityTargets < ::Array
end

# {https://adwords.google.com/api/adwords/v12}CountryTargets
class CountryTargets < ::Array
end

# {https://adwords.google.com/api/adwords/v12}Criterion
# abstract
#   adGroupId - SOAP::SOAPLong
#   criterionType - AdWords::CriterionService::CriterionType
#   destinationUrl - SOAP::SOAPString
#   exemptionRequest - SOAP::SOAPString
#   id - SOAP::SOAPLong
#   language - SOAP::SOAPString
#   negative - SOAP::SOAPBoolean
#   paused - SOAP::SOAPBoolean
#   status - AdWords::CriterionService::CriterionStatus
class Criterion
  attr_accessor :adGroupId
  attr_accessor :criterionType
  attr_accessor :destinationUrl
  attr_accessor :exemptionRequest
  attr_accessor :id
  attr_accessor :language
  attr_accessor :negative
  attr_accessor :paused
  attr_accessor :status

  def initialize(adGroupId = nil, criterionType = nil, destinationUrl = nil, exemptionRequest = nil, id = nil, language = nil, negative = nil, paused = nil, status = nil)
    @adGroupId = adGroupId
    @criterionType = criterionType
    @destinationUrl = destinationUrl
    @exemptionRequest = exemptionRequest
    @id = id
    @language = language
    @negative = negative
    @paused = paused
    @status = status
  end
end

# {https://adwords.google.com/api/adwords/v12}Keyword
#   adGroupId - SOAP::SOAPLong
#   criterionType - AdWords::CriterionService::CriterionType
#   destinationUrl - SOAP::SOAPString
#   exemptionRequest - SOAP::SOAPString
#   id - SOAP::SOAPLong
#   language - SOAP::SOAPString
#   negative - SOAP::SOAPBoolean
#   paused - SOAP::SOAPBoolean
#   status - AdWords::CriterionService::CriterionStatus
#   maxCpc - SOAP::SOAPLong
#   minCpc - SOAP::SOAPLong
#   proxyMaxCpc - SOAP::SOAPLong
#   text - SOAP::SOAPString
#   type - AdWords::CriterionService::KeywordType
class Keyword < Criterion
  attr_accessor :adGroupId
  attr_accessor :criterionType
  attr_accessor :destinationUrl
  attr_accessor :exemptionRequest
  attr_accessor :id
  attr_accessor :language
  attr_accessor :negative
  attr_accessor :paused
  attr_accessor :status
  attr_accessor :maxCpc
  attr_accessor :minCpc
  attr_accessor :proxyMaxCpc
  attr_accessor :text
  attr_accessor :type

  def initialize(adGroupId = nil, criterionType = nil, destinationUrl = nil, exemptionRequest = nil, id = nil, language = nil, negative = nil, paused = nil, status = nil, maxCpc = nil, minCpc = nil, proxyMaxCpc = nil, text = nil, type = nil)
    @adGroupId = adGroupId
    @criterionType = criterionType
    @destinationUrl = destinationUrl
    @exemptionRequest = exemptionRequest
    @id = id
    @language = language
    @negative = negative
    @paused = paused
    @status = status
    @maxCpc = maxCpc
    @minCpc = minCpc
    @proxyMaxCpc = proxyMaxCpc
    @text = text
    @type = type
  end
end

# {https://adwords.google.com/api/adwords/v12}Website
#   adGroupId - SOAP::SOAPLong
#   criterionType - AdWords::CriterionService::CriterionType
#   destinationUrl - SOAP::SOAPString
#   exemptionRequest - SOAP::SOAPString
#   id - SOAP::SOAPLong
#   language - SOAP::SOAPString
#   negative - SOAP::SOAPBoolean
#   paused - SOAP::SOAPBoolean
#   status - AdWords::CriterionService::CriterionStatus
#   maxCpc - SOAP::SOAPLong
#   maxCpm - SOAP::SOAPLong
#   url - SOAP::SOAPString
class Website < Criterion
  attr_accessor :adGroupId
  attr_accessor :criterionType
  attr_accessor :destinationUrl
  attr_accessor :exemptionRequest
  attr_accessor :id
  attr_accessor :language
  attr_accessor :negative
  attr_accessor :paused
  attr_accessor :status
  attr_accessor :maxCpc
  attr_accessor :maxCpm
  attr_accessor :url

  def initialize(adGroupId = nil, criterionType = nil, destinationUrl = nil, exemptionRequest = nil, id = nil, language = nil, negative = nil, paused = nil, status = nil, maxCpc = nil, maxCpm = nil, url = nil)
    @adGroupId = adGroupId
    @criterionType = criterionType
    @destinationUrl = destinationUrl
    @exemptionRequest = exemptionRequest
    @id = id
    @language = language
    @negative = negative
    @paused = paused
    @status = status
    @maxCpc = maxCpc
    @maxCpm = maxCpm
    @url = url
  end
end

# {https://adwords.google.com/api/adwords/v12}GeoTarget
#   cityTargets - AdWords::CriterionService::CityTargets
#   countryTargets - AdWords::CriterionService::CountryTargets
#   metroTargets - AdWords::CriterionService::MetroTargets
#   proximityTargets - AdWords::CriterionService::ProximityTargets
#   regionTargets - AdWords::CriterionService::RegionTargets
#   targetAll - SOAP::SOAPBoolean
class GeoTarget
  attr_accessor :cityTargets
  attr_accessor :countryTargets
  attr_accessor :metroTargets
  attr_accessor :proximityTargets
  attr_accessor :regionTargets
  attr_accessor :targetAll

  def initialize(cityTargets = nil, countryTargets = nil, metroTargets = nil, proximityTargets = nil, regionTargets = nil, targetAll = nil)
    @cityTargets = cityTargets
    @countryTargets = countryTargets
    @metroTargets = metroTargets
    @proximityTargets = proximityTargets
    @regionTargets = regionTargets
    @targetAll = targetAll
  end
end

# {https://adwords.google.com/api/adwords/v12}LanguageTarget
class LanguageTarget < ::Array
end

# {https://adwords.google.com/api/adwords/v12}MetroTargets
class MetroTargets < ::Array
end

# {https://adwords.google.com/api/adwords/v12}ProximityTargets
class ProximityTargets < ::Array
end

# {https://adwords.google.com/api/adwords/v12}RegionTargets
class RegionTargets < ::Array
end

# {https://adwords.google.com/api/adwords/v12}StatsRecord
#   averagePosition - SOAP::SOAPDouble
#   clicks - SOAP::SOAPLong
#   conversionRate - SOAP::SOAPDouble
#   conversions - SOAP::SOAPLong
#   cost - SOAP::SOAPLong
#   id - SOAP::SOAPLong
#   impressions - SOAP::SOAPLong
class StatsRecord
  attr_accessor :averagePosition
  attr_accessor :clicks
  attr_accessor :conversionRate
  attr_accessor :conversions
  attr_accessor :cost
  attr_accessor :id
  attr_accessor :impressions

  def initialize(averagePosition = nil, clicks = nil, conversionRate = nil, conversions = nil, cost = nil, id = nil, impressions = nil)
    @averagePosition = averagePosition
    @clicks = clicks
    @conversionRate = conversionRate
    @conversions = conversions
    @cost = cost
    @id = id
    @impressions = impressions
  end
end

# {https://adwords.google.com/api/adwords/v12}CriterionStatus
class CriterionStatus < ::String
  Active = CriterionStatus.new("Active")
  Deleted = CriterionStatus.new("Deleted")
  Disapproved = CriterionStatus.new("Disapproved")
  InActive = CriterionStatus.new("InActive")
end

# {https://adwords.google.com/api/adwords/v12}CriterionType
class CriterionType < ::String
  Keyword = CriterionType.new("Keyword")
  Website = CriterionType.new("Website")
end

# {https://adwords.google.com/api/adwords/v12}KeywordType
class KeywordType < ::String
  Broad = KeywordType.new("Broad")
  Exact = KeywordType.new("Exact")
  Phrase = KeywordType.new("Phrase")
end

# {https://adwords.google.com/api/adwords/v12}addCriteria
class AddCriteria < ::Array
end

# {https://adwords.google.com/api/adwords/v12}addCriteriaResponse
class AddCriteriaResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v12}checkCriteria
#   criteria - AdWords::CriterionService::Criterion
#   languageTarget - AdWords::CriterionService::LanguageTarget
#   geoTarget - AdWords::CriterionService::GeoTarget
class CheckCriteria
  attr_accessor :criteria
  attr_accessor :languageTarget
  attr_accessor :geoTarget

  def initialize(criteria = [], languageTarget = nil, geoTarget = nil)
    @criteria = criteria
    @languageTarget = languageTarget
    @geoTarget = geoTarget
  end
end

# {https://adwords.google.com/api/adwords/v12}checkCriteriaResponse
class CheckCriteriaResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v12}getAllCriteria
#   adGroupId - SOAP::SOAPLong
class GetAllCriteria
  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adwords.google.com/api/adwords/v12}getAllCriteriaResponse
class GetAllCriteriaResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v12}getCampaignNegativeCriteria
#   campaignId - SOAP::SOAPInt
class GetCampaignNegativeCriteria
  attr_accessor :campaignId

  def initialize(campaignId = nil)
    @campaignId = campaignId
  end
end

# {https://adwords.google.com/api/adwords/v12}getCampaignNegativeCriteriaResponse
class GetCampaignNegativeCriteriaResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v12}getCriteria
#   adGroupId - SOAP::SOAPLong
#   criterionIds - SOAP::SOAPLong
class GetCriteria
  attr_accessor :adGroupId
  attr_accessor :criterionIds

  def initialize(adGroupId = nil, criterionIds = [])
    @adGroupId = adGroupId
    @criterionIds = criterionIds
  end
end

# {https://adwords.google.com/api/adwords/v12}getCriteriaResponse
class GetCriteriaResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v12}getCriterionStats
#   adGroupId - SOAP::SOAPLong
#   criterionIds - SOAP::SOAPLong
#   startDay - SOAP::SOAPDate
#   endDay - SOAP::SOAPDate
class GetCriterionStats
  attr_accessor :adGroupId
  attr_accessor :criterionIds
  attr_accessor :startDay
  attr_accessor :endDay

  def initialize(adGroupId = nil, criterionIds = [], startDay = nil, endDay = nil)
    @adGroupId = adGroupId
    @criterionIds = criterionIds
    @startDay = startDay
    @endDay = endDay
  end
end

# {https://adwords.google.com/api/adwords/v12}getCriterionStatsResponse
class GetCriterionStatsResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v12}removeCriteria
#   adGroupId - SOAP::SOAPLong
#   criterionIds - SOAP::SOAPLong
class RemoveCriteria
  attr_accessor :adGroupId
  attr_accessor :criterionIds

  def initialize(adGroupId = nil, criterionIds = [])
    @adGroupId = adGroupId
    @criterionIds = criterionIds
  end
end

# {https://adwords.google.com/api/adwords/v12}removeCriteriaResponse
class RemoveCriteriaResponse
  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v12}setCampaignNegativeCriteria
#   campaignId - SOAP::SOAPInt
#   criteria - AdWords::CriterionService::Criterion
class SetCampaignNegativeCriteria
  attr_accessor :campaignId
  attr_accessor :criteria

  def initialize(campaignId = nil, criteria = [])
    @campaignId = campaignId
    @criteria = criteria
  end
end

# {https://adwords.google.com/api/adwords/v12}setCampaignNegativeCriteriaResponse
class SetCampaignNegativeCriteriaResponse
  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v12}updateCriteria
class UpdateCriteria < ::Array
end

# {https://adwords.google.com/api/adwords/v12}updateCriteriaResponse
class UpdateCriteriaResponse
  def initialize
  end
end


end; end
