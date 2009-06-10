require 'xsd/qname'

module AdWords; module V13; module SiteSuggestionService


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
# - errors - AdWords::V13::SiteSuggestionService::ApiError
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

# DemographicsTarget
# - childrenTarget - AdWords::V13::SiteSuggestionService::ChildrenTarget
# - ethnicityTarget - AdWords::V13::SiteSuggestionService::EthnicityTarget
# - genderTarget - AdWords::V13::SiteSuggestionService::GenderTarget
# - maxAgeRange - AdWords::V13::SiteSuggestionService::AgeRange
# - maxHouseholdIncomeRange - AdWords::V13::SiteSuggestionService::HouseholdIncomeRange
# - minAgeRange - AdWords::V13::SiteSuggestionService::AgeRange
# - minHouseholdIncomeRange - AdWords::V13::SiteSuggestionService::HouseholdIncomeRange
class DemographicsTarget
  attr_accessor :childrenTarget
  attr_accessor :ethnicityTarget
  attr_accessor :genderTarget
  attr_accessor :maxAgeRange
  attr_accessor :maxHouseholdIncomeRange
  attr_accessor :minAgeRange
  attr_accessor :minHouseholdIncomeRange

  def initialize(childrenTarget = nil, ethnicityTarget = nil, genderTarget = nil, maxAgeRange = nil, maxHouseholdIncomeRange = nil, minAgeRange = nil, minHouseholdIncomeRange = nil)
    @childrenTarget = childrenTarget
    @ethnicityTarget = ethnicityTarget
    @genderTarget = genderTarget
    @maxAgeRange = maxAgeRange
    @maxHouseholdIncomeRange = maxHouseholdIncomeRange
    @minAgeRange = minAgeRange
    @minHouseholdIncomeRange = minHouseholdIncomeRange
  end
end

# LanguageGeoTargeting
# - countries - SOAP::SOAPString
# - languages - SOAP::SOAPString
# - metros - SOAP::SOAPString
# - regions - SOAP::SOAPString
class LanguageGeoTargeting
  attr_accessor :countries
  attr_accessor :languages
  attr_accessor :metros
  attr_accessor :regions

  def initialize(countries = [], languages = [], metros = [], regions = [])
    @countries = countries
    @languages = languages
    @metros = metros
    @regions = regions
  end
end

# SiteSuggestion
# - acceptsImageAds - SOAP::SOAPBoolean
# - acceptsTextAds - SOAP::SOAPBoolean
# - acceptsVideoAds - SOAP::SOAPBoolean
# - pageViews - SOAP::SOAPInt
# - url - SOAP::SOAPString
class SiteSuggestion
  attr_accessor :acceptsImageAds
  attr_accessor :acceptsTextAds
  attr_accessor :acceptsVideoAds
  attr_accessor :pageViews
  attr_accessor :url

  def initialize(acceptsImageAds = nil, acceptsTextAds = nil, acceptsVideoAds = nil, pageViews = nil, url = nil)
    @acceptsImageAds = acceptsImageAds
    @acceptsTextAds = acceptsTextAds
    @acceptsVideoAds = acceptsVideoAds
    @pageViews = pageViews
    @url = url
  end
end

# AgeRange
class AgeRange < ::String
  Range0To17 = AgeRange.new("Range0To17")
  Range18To24 = AgeRange.new("Range18To24")
  Range25To34 = AgeRange.new("Range25To34")
  Range35To44 = AgeRange.new("Range35To44")
  Range45To54 = AgeRange.new("Range45To54")
  Range55To64 = AgeRange.new("Range55To64")
  Range65Plus = AgeRange.new("Range65Plus")
end

# ChildrenTarget
class ChildrenTarget < ::String
  HouseholdsWithChildrenOnly = ChildrenTarget.new("HouseholdsWithChildrenOnly")
  HouseholdsWithoutChildrenOnly = ChildrenTarget.new("HouseholdsWithoutChildrenOnly")
  NoPreference = ChildrenTarget.new("NoPreference")
end

# EthnicityTarget
class EthnicityTarget < ::String
  AfricanAmericanOnly = EthnicityTarget.new("AfricanAmericanOnly")
  AsianOnly = EthnicityTarget.new("AsianOnly")
  CaucasianOnly = EthnicityTarget.new("CaucasianOnly")
  HispanicOnly = EthnicityTarget.new("HispanicOnly")
  NoPreference = EthnicityTarget.new("NoPreference")
end

# GenderTarget
class GenderTarget < ::String
  FemaleOnly = GenderTarget.new("FemaleOnly")
  MaleOnly = GenderTarget.new("MaleOnly")
  NoPreference = GenderTarget.new("NoPreference")
end

# HouseholdIncomeRange
class HouseholdIncomeRange < ::String
  Range0To14999 = HouseholdIncomeRange.new("Range0To14999")
  Range100000PLUS = HouseholdIncomeRange.new("Range100000PLUS")
  Range15000To24999 = HouseholdIncomeRange.new("Range15000To24999")
  Range25000To39999 = HouseholdIncomeRange.new("Range25000To39999")
  Range40000To59999 = HouseholdIncomeRange.new("Range40000To59999")
  Range60000To74999 = HouseholdIncomeRange.new("Range60000To74999")
  Range75000To99999 = HouseholdIncomeRange.new("Range75000To99999")
end

# getSitesByCategoryName
# - categoryName - SOAP::SOAPString
# - targeting - AdWords::V13::SiteSuggestionService::LanguageGeoTargeting
class GetSitesByCategoryName #:nodoc: all
  attr_accessor :categoryName
  attr_accessor :targeting

  def initialize(categoryName = nil, targeting = nil)
    @categoryName = categoryName
    @targeting = targeting
  end
end

# getSitesByCategoryNameResponse
class GetSitesByCategoryNameResponse < ::Array #:nodoc: all
end

# getSitesByDemographics
# - demo - AdWords::V13::SiteSuggestionService::DemographicsTarget
# - targeting - AdWords::V13::SiteSuggestionService::LanguageGeoTargeting
class GetSitesByDemographics #:nodoc: all
  attr_accessor :demo
  attr_accessor :targeting

  def initialize(demo = nil, targeting = nil)
    @demo = demo
    @targeting = targeting
  end
end

# getSitesByDemographicsResponse
class GetSitesByDemographicsResponse < ::Array #:nodoc: all
end

# getSitesByTopics
# - topics - SOAP::SOAPString
# - targeting - AdWords::V13::SiteSuggestionService::LanguageGeoTargeting
class GetSitesByTopics #:nodoc: all
  attr_accessor :topics
  attr_accessor :targeting

  def initialize(topics = [], targeting = nil)
    @topics = topics
    @targeting = targeting
  end
end

# getSitesByTopicsResponse
class GetSitesByTopicsResponse < ::Array #:nodoc: all
end

# getSitesByUrls
# - urls - SOAP::SOAPString
# - targeting - AdWords::V13::SiteSuggestionService::LanguageGeoTargeting
class GetSitesByUrls #:nodoc: all
  attr_accessor :urls
  attr_accessor :targeting

  def initialize(urls = [], targeting = nil)
    @urls = urls
    @targeting = targeting
  end
end

# getSitesByUrlsResponse
class GetSitesByUrlsResponse < ::Array #:nodoc: all
end


end; end; end
