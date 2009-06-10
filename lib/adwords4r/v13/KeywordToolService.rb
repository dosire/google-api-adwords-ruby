require 'xsd/qname'

module AdWords; module V13; module KeywordToolService


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
# - errors - AdWords::V13::KeywordToolService::ApiError
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

# KeywordVariation
# - advertiserCompetitionScale - SOAP::SOAPInt
# - avgSearchVolume - SOAP::SOAPLong
# - language - SOAP::SOAPString
# - lastMonthSearchVolume - SOAP::SOAPLong
# - text - SOAP::SOAPString
class KeywordVariation
  attr_accessor :advertiserCompetitionScale
  attr_accessor :avgSearchVolume
  attr_accessor :language
  attr_accessor :lastMonthSearchVolume
  attr_accessor :text

  def initialize(advertiserCompetitionScale = nil, avgSearchVolume = nil, language = nil, lastMonthSearchVolume = nil, text = nil)
    @advertiserCompetitionScale = advertiserCompetitionScale
    @avgSearchVolume = avgSearchVolume
    @language = language
    @lastMonthSearchVolume = lastMonthSearchVolume
    @text = text
  end
end

# KeywordVariations
# - additionalToConsider - AdWords::V13::KeywordToolService::KeywordVariation
# - moreSpecific - AdWords::V13::KeywordToolService::KeywordVariation
class KeywordVariations
  attr_accessor :additionalToConsider
  attr_accessor :moreSpecific

  def initialize(additionalToConsider = [], moreSpecific = [])
    @additionalToConsider = additionalToConsider
    @moreSpecific = moreSpecific
  end
end

# SeedKeyword
# - negative - SOAP::SOAPBoolean
# - text - SOAP::SOAPString
# - type - AdWords::V13::KeywordToolService::KeywordType
class SeedKeyword
  attr_accessor :negative
  attr_accessor :text
  attr_accessor :type

  def initialize(negative = nil, text = nil, type = nil)
    @negative = negative
    @text = text
    @type = type
  end
end

# SiteKeyword
# - advertiserCompetitionScale - SOAP::SOAPInt
# - avgSearchVolume - SOAP::SOAPLong
# - groupId - SOAP::SOAPInt
# - lastMonthSearchVolume - SOAP::SOAPLong
# - text - SOAP::SOAPString
class SiteKeyword
  attr_accessor :advertiserCompetitionScale
  attr_accessor :avgSearchVolume
  attr_accessor :groupId
  attr_accessor :lastMonthSearchVolume
  attr_accessor :text

  def initialize(advertiserCompetitionScale = nil, avgSearchVolume = nil, groupId = nil, lastMonthSearchVolume = nil, text = nil)
    @advertiserCompetitionScale = advertiserCompetitionScale
    @avgSearchVolume = avgSearchVolume
    @groupId = groupId
    @lastMonthSearchVolume = lastMonthSearchVolume
    @text = text
  end
end

# SiteKeywordGroups
# - groups - SOAP::SOAPString
# - keywords - AdWords::V13::KeywordToolService::SiteKeyword
class SiteKeywordGroups
  attr_accessor :groups
  attr_accessor :keywords

  def initialize(groups = [], keywords = [])
    @groups = groups
    @keywords = keywords
  end
end

# KeywordType
class KeywordType < ::String
  Broad = KeywordType.new("Broad")
  Exact = KeywordType.new("Exact")
  Phrase = KeywordType.new("Phrase")
end

# getKeywordVariations
# - seedKeywords - AdWords::V13::KeywordToolService::SeedKeyword
# - useSynonyms - SOAP::SOAPBoolean
# - languages - SOAP::SOAPString
# - countries - SOAP::SOAPString
class GetKeywordVariations #:nodoc: all
  attr_accessor :seedKeywords
  attr_accessor :useSynonyms
  attr_accessor :languages
  attr_accessor :countries

  def initialize(seedKeywords = [], useSynonyms = nil, languages = [], countries = [])
    @seedKeywords = seedKeywords
    @useSynonyms = useSynonyms
    @languages = languages
    @countries = countries
  end
end

# getKeywordVariationsResponse
# - getKeywordVariationsReturn - AdWords::V13::KeywordToolService::KeywordVariations
class GetKeywordVariationsResponse #:nodoc: all
  attr_accessor :getKeywordVariationsReturn

  def initialize(getKeywordVariationsReturn = nil)
    @getKeywordVariationsReturn = getKeywordVariationsReturn
  end
end

# getKeywordsFromSite
# - url - SOAP::SOAPString
# - includeLinkedPages - SOAP::SOAPBoolean
# - languages - SOAP::SOAPString
# - countries - SOAP::SOAPString
class GetKeywordsFromSite #:nodoc: all
  attr_accessor :url
  attr_accessor :includeLinkedPages
  attr_accessor :languages
  attr_accessor :countries

  def initialize(url = nil, includeLinkedPages = nil, languages = [], countries = [])
    @url = url
    @includeLinkedPages = includeLinkedPages
    @languages = languages
    @countries = countries
  end
end

# getKeywordsFromSiteResponse
# - getKeywordsFromSiteReturn - AdWords::V13::KeywordToolService::SiteKeywordGroups
class GetKeywordsFromSiteResponse #:nodoc: all
  attr_accessor :getKeywordsFromSiteReturn

  def initialize(getKeywordsFromSiteReturn = nil)
    @getKeywordsFromSiteReturn = getKeywordsFromSiteReturn
  end
end


end; end; end
