require 'xsd/qname'

module AdWords; module V13; module CriterionService


# ApiError
# - code - SOAP::SOAPInt
# - detail - SOAP::SOAPString
# - field - SOAP::SOAPString
# - index - SOAP::SOAPInt
# - isExemptable - SOAP::SOAPBoolean
# - textIndex - SOAP::SOAPInt
# - textLength - SOAP::SOAPInt
# - trigger - SOAP::SOAPString
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

# ApiException
# - code - SOAP::SOAPInt
# - errors - AdWords::V13::CriterionService::ApiError
# - internal - SOAP::SOAPBoolean
# - message - SOAP::SOAPString
# - trigger - SOAP::SOAPString
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

# Circle
# - latitudeMicroDegrees - SOAP::SOAPInt
# - longitudeMicroDegrees - SOAP::SOAPInt
# - radiusMeters - SOAP::SOAPInt
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

# CityTargets
# - cities - SOAP::SOAPString
# - excludedCities - SOAP::SOAPString
class CityTargets
  attr_accessor :cities
  attr_accessor :excludedCities

  def initialize(cities = [], excludedCities = [])
    @cities = cities
    @excludedCities = excludedCities
  end
end

# CountryTargets
# - countries - SOAP::SOAPString
# - excludedCountries - SOAP::SOAPString
class CountryTargets
  attr_accessor :countries
  attr_accessor :excludedCountries

  def initialize(countries = [], excludedCountries = [])
    @countries = countries
    @excludedCountries = excludedCountries
  end
end

# Criterion
# abstract
# - adGroupId - SOAP::SOAPLong
# - criterionType - AdWords::V13::CriterionService::CriterionType
# - destinationUrl - SOAP::SOAPString
# - exemptionRequest - SOAP::SOAPString
# - id - SOAP::SOAPLong
# - language - SOAP::SOAPString
# - negative - SOAP::SOAPBoolean
# - paused - SOAP::SOAPBoolean
# - status - AdWords::V13::CriterionService::CriterionStatus
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

# Keyword
# - adGroupId - SOAP::SOAPLong
# - criterionType - AdWords::V13::CriterionService::CriterionType
# - destinationUrl - SOAP::SOAPString
# - exemptionRequest - SOAP::SOAPString
# - id - SOAP::SOAPLong
# - language - SOAP::SOAPString
# - negative - SOAP::SOAPBoolean
# - paused - SOAP::SOAPBoolean
# - status - AdWords::V13::CriterionService::CriterionStatus
# - firstPageCpc - SOAP::SOAPLong
# - maxCpc - SOAP::SOAPLong
# - proxyMaxCpc - SOAP::SOAPLong
# - qualityScore - SOAP::SOAPInt
# - text - SOAP::SOAPString
# - type - AdWords::V13::CriterionService::KeywordType
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
  attr_accessor :firstPageCpc
  attr_accessor :maxCpc
  attr_accessor :proxyMaxCpc
  attr_accessor :qualityScore
  attr_accessor :text
  attr_accessor :type

  def initialize(adGroupId = nil, criterionType = nil, destinationUrl = nil, exemptionRequest = nil, id = nil, language = nil, negative = nil, paused = nil, status = nil, firstPageCpc = nil, maxCpc = nil, proxyMaxCpc = nil, qualityScore = nil, text = nil, type = nil)
    @adGroupId = adGroupId
    @criterionType = criterionType
    @destinationUrl = destinationUrl
    @exemptionRequest = exemptionRequest
    @id = id
    @language = language
    @negative = negative
    @paused = paused
    @status = status
    @firstPageCpc = firstPageCpc
    @maxCpc = maxCpc
    @proxyMaxCpc = proxyMaxCpc
    @qualityScore = qualityScore
    @text = text
    @type = type
  end
end

# Website
# - adGroupId - SOAP::SOAPLong
# - criterionType - AdWords::V13::CriterionService::CriterionType
# - destinationUrl - SOAP::SOAPString
# - exemptionRequest - SOAP::SOAPString
# - id - SOAP::SOAPLong
# - language - SOAP::SOAPString
# - negative - SOAP::SOAPBoolean
# - paused - SOAP::SOAPBoolean
# - status - AdWords::V13::CriterionService::CriterionStatus
# - maxCpc - SOAP::SOAPLong
# - maxCpm - SOAP::SOAPLong
# - url - SOAP::SOAPString
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

# GeoTarget
# - cityTargets - AdWords::V13::CriterionService::CityTargets
# - countryTargets - AdWords::V13::CriterionService::CountryTargets
# - metroTargets - AdWords::V13::CriterionService::MetroTargets
# - proximityTargets - AdWords::V13::CriterionService::ProximityTargets
# - regionTargets - AdWords::V13::CriterionService::RegionTargets
# - targetAll - SOAP::SOAPBoolean
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

# LanguageTarget
class LanguageTarget < ::Array
end

# MetroTargets
# - excludedMetros - SOAP::SOAPString
# - metros - SOAP::SOAPString
class MetroTargets
  attr_accessor :excludedMetros
  attr_accessor :metros

  def initialize(excludedMetros = [], metros = [])
    @excludedMetros = excludedMetros
    @metros = metros
  end
end

# ProximityTargets
class ProximityTargets < ::Array
end

# RegionTargets
# - excludedRegions - SOAP::SOAPString
# - regions - SOAP::SOAPString
class RegionTargets
  attr_accessor :excludedRegions
  attr_accessor :regions

  def initialize(excludedRegions = [], regions = [])
    @excludedRegions = excludedRegions
    @regions = regions
  end
end

# StatsRecord
# - averagePosition - SOAP::SOAPDouble
# - clicks - SOAP::SOAPLong
# - conversionRate - SOAP::SOAPDouble
# - conversions - SOAP::SOAPLong
# - cost - SOAP::SOAPLong
# - id - SOAP::SOAPLong
# - impressions - SOAP::SOAPLong
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

# CriterionStatus
class CriterionStatus < ::String
  Active = CriterionStatus.new("Active")
  Deleted = CriterionStatus.new("Deleted")
  Disapproved = CriterionStatus.new("Disapproved")
  InActive = CriterionStatus.new("InActive")
end

# CriterionType
class CriterionType < ::String
  Keyword = CriterionType.new("Keyword")
  Website = CriterionType.new("Website")
end

# KeywordType
class KeywordType < ::String
  Broad = KeywordType.new("Broad")
  Exact = KeywordType.new("Exact")
  Phrase = KeywordType.new("Phrase")
end

# addCriteria
class AddCriteria < ::Array #:nodoc: all
end

# addCriteriaResponse
class AddCriteriaResponse < ::Array #:nodoc: all
end

# checkCriteria
# - criteria - AdWords::V13::CriterionService::Criterion
# - languageTarget - AdWords::V13::CriterionService::LanguageTarget
# - geoTarget - AdWords::V13::CriterionService::GeoTarget
class CheckCriteria #:nodoc: all
  attr_accessor :criteria
  attr_accessor :languageTarget
  attr_accessor :geoTarget

  def initialize(criteria = [], languageTarget = nil, geoTarget = nil)
    @criteria = criteria
    @languageTarget = languageTarget
    @geoTarget = geoTarget
  end
end

# checkCriteriaResponse
class CheckCriteriaResponse < ::Array #:nodoc: all
end

# getAllCriteria
# - adGroupId - SOAP::SOAPLong
class GetAllCriteria #:nodoc: all
  attr_accessor :adGroupId

  def initialize(adGroupId = nil)
    @adGroupId = adGroupId
  end
end

# getAllCriteriaResponse
class GetAllCriteriaResponse < ::Array #:nodoc: all
end

# getCampaignNegativeCriteria
# - campaignId - SOAP::SOAPInt
class GetCampaignNegativeCriteria #:nodoc: all
  attr_accessor :campaignId

  def initialize(campaignId = nil)
    @campaignId = campaignId
  end
end

# getCampaignNegativeCriteriaResponse
class GetCampaignNegativeCriteriaResponse < ::Array #:nodoc: all
end

# getCriteria
# - adGroupId - SOAP::SOAPLong
# - criterionIds - SOAP::SOAPLong
class GetCriteria #:nodoc: all
  attr_accessor :adGroupId
  attr_accessor :criterionIds

  def initialize(adGroupId = nil, criterionIds = [])
    @adGroupId = adGroupId
    @criterionIds = criterionIds
  end
end

# getCriteriaResponse
class GetCriteriaResponse < ::Array #:nodoc: all
end

# getCriterionStats
# - adGroupId - SOAP::SOAPLong
# - criterionIds - SOAP::SOAPLong
# - startDay - SOAP::SOAPDate
# - endDay - SOAP::SOAPDate
class GetCriterionStats #:nodoc: all
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

# getCriterionStatsResponse
class GetCriterionStatsResponse < ::Array #:nodoc: all
end

# removeCriteria
# - adGroupId - SOAP::SOAPLong
# - criterionIds - SOAP::SOAPLong
class RemoveCriteria #:nodoc: all
  attr_accessor :adGroupId
  attr_accessor :criterionIds

  def initialize(adGroupId = nil, criterionIds = [])
    @adGroupId = adGroupId
    @criterionIds = criterionIds
  end
end

# removeCriteriaResponse
class RemoveCriteriaResponse #:nodoc: all
  def initialize
  end
end

# setCampaignNegativeCriteria
# - campaignId - SOAP::SOAPInt
# - criteria - AdWords::V13::CriterionService::Criterion
class SetCampaignNegativeCriteria #:nodoc: all
  attr_accessor :campaignId
  attr_accessor :criteria

  def initialize(campaignId = nil, criteria = [])
    @campaignId = campaignId
    @criteria = criteria
  end
end

# setCampaignNegativeCriteriaResponse
class SetCampaignNegativeCriteriaResponse #:nodoc: all
  def initialize
  end
end

# updateCriteria
class UpdateCriteria < ::Array #:nodoc: all
end

# updateCriteriaResponse
class UpdateCriteriaResponse #:nodoc: all
  def initialize
  end
end


end; end; end
