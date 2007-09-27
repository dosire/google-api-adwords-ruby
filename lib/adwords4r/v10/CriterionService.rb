require 'xsd/qname'

module AdWords; module CriterionService


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

# {https://adwords.google.com/api/adwords/v10}Circle
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

# {https://adwords.google.com/api/adwords/v10}CityTargets
class CityTargets < ::Array
end

# {https://adwords.google.com/api/adwords/v10}CountryTargets
class CountryTargets < ::Array
end

# {https://adwords.google.com/api/adwords/v10}Criterion
# abstract
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

# {https://adwords.google.com/api/adwords/v10}Keyword
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

# {https://adwords.google.com/api/adwords/v10}Website
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
  attr_accessor :maxCpm
  attr_accessor :url

  def initialize(adGroupId = nil, criterionType = nil, destinationUrl = nil, exemptionRequest = nil, id = nil, language = nil, negative = nil, paused = nil, status = nil, maxCpm = nil, url = nil)
    @adGroupId = adGroupId
    @criterionType = criterionType
    @destinationUrl = destinationUrl
    @exemptionRequest = exemptionRequest
    @id = id
    @language = language
    @negative = negative
    @paused = paused
    @status = status
    @maxCpm = maxCpm
    @url = url
  end
end

# {https://adwords.google.com/api/adwords/v10}GeoTarget
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

# {https://adwords.google.com/api/adwords/v10}LanguageTarget
class LanguageTarget < ::Array
end

# {https://adwords.google.com/api/adwords/v10}MetroTargets
class MetroTargets < ::Array
end

# {https://adwords.google.com/api/adwords/v10}ProximityTargets
class ProximityTargets < ::Array
end

# {https://adwords.google.com/api/adwords/v10}RegionTargets
class RegionTargets < ::Array
end

# {https://adwords.google.com/api/adwords/v10}StatsRecord
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

# {https://adwords.google.com/api/adwords/v10}CriterionStatus
class CriterionStatus < ::String
  Active = CriterionStatus.new("Active")
  Deleted = CriterionStatus.new("Deleted")
  Disapproved = CriterionStatus.new("Disapproved")
  InActive = CriterionStatus.new("InActive")
end

# {https://adwords.google.com/api/adwords/v10}CriterionType
class CriterionType < ::String
  Keyword = CriterionType.new("Keyword")
  Website = CriterionType.new("Website")
end

# {https://adwords.google.com/api/adwords/v10}KeywordType
class KeywordType < ::String
  Broad = KeywordType.new("Broad")
  Exact = KeywordType.new("Exact")
  Phrase = KeywordType.new("Phrase")
end

# {https://adwords.google.com/api/adwords/v10}addCriteria
class AddCriteria < ::Array
end

# {https://adwords.google.com/api/adwords/v10}addCriteriaResponse
class AddCriteriaResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v10}checkCriteria
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

# {https://adwords.google.com/api/adwords/v10}checkCriteriaResponse
class CheckCriteriaResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v10}getAllCriteria
class GetAllCriteria
  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# {https://adwords.google.com/api/adwords/v10}getAllCriteriaResponse
class GetAllCriteriaResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v10}getCampaignNegativeCriteria
class GetCampaignNegativeCriteria
  attr_accessor :campaignId

  def initialize(campaignId = nil)
    @campaignId = campaignId
  end
end

# {https://adwords.google.com/api/adwords/v10}getCampaignNegativeCriteriaResponse
class GetCampaignNegativeCriteriaResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v10}getCriteria
class GetCriteria
  attr_accessor :adGroupId
  attr_accessor :criterionIds

  def initialize(adGroupId = nil, criterionIds = [])
    @adGroupId = adGroupId
    @criterionIds = criterionIds
  end
end

# {https://adwords.google.com/api/adwords/v10}getCriteriaResponse
class GetCriteriaResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v10}getCriterionStats
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

# {https://adwords.google.com/api/adwords/v10}getCriterionStatsResponse
class GetCriterionStatsResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v10}removeCriteria
class RemoveCriteria
  attr_accessor :adGroupId
  attr_accessor :criterionIds

  def initialize(adGroupId = nil, criterionIds = [])
    @adGroupId = adGroupId
    @criterionIds = criterionIds
  end
end

# {https://adwords.google.com/api/adwords/v10}removeCriteriaResponse
class RemoveCriteriaResponse
  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v10}setCampaignNegativeCriteria
class SetCampaignNegativeCriteria
  attr_accessor :campaignId
  attr_accessor :criteria

  def initialize(campaignId = nil, criteria = [])
    @campaignId = campaignId
    @criteria = criteria
  end
end

# {https://adwords.google.com/api/adwords/v10}setCampaignNegativeCriteriaResponse
class SetCampaignNegativeCriteriaResponse
  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v10}updateCriteria
class UpdateCriteria < ::Array
end

# {https://adwords.google.com/api/adwords/v10}updateCriteriaResponse
class UpdateCriteriaResponse
  def initialize
  end
end


end; end
