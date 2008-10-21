require 'xsd/qname'

module AdWords; module KeywordToolService


# {https://adwords.google.com/api/adwords/v13}ApiError
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

# {https://adwords.google.com/api/adwords/v13}ApiException
#   code - SOAP::SOAPInt
#   errors - AdWords::KeywordToolService::ApiError
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

# {https://adwords.google.com/api/adwords/v13}KeywordVariation
#   advertiserCompetitionScale - SOAP::SOAPInt
#   avgSearchVolume - SOAP::SOAPLong
#   language - SOAP::SOAPString
#   lastMonthSearchVolume - SOAP::SOAPLong
#   text - SOAP::SOAPString
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

# {https://adwords.google.com/api/adwords/v13}KeywordVariations
#   additionalToConsider - AdWords::KeywordToolService::KeywordVariation
#   moreSpecific - AdWords::KeywordToolService::KeywordVariation
class KeywordVariations
  attr_accessor :additionalToConsider
  attr_accessor :moreSpecific

  def initialize(additionalToConsider = [], moreSpecific = [])
    @additionalToConsider = additionalToConsider
    @moreSpecific = moreSpecific
  end
end

# {https://adwords.google.com/api/adwords/v13}SeedKeyword
#   negative - SOAP::SOAPBoolean
#   text - SOAP::SOAPString
#   type - AdWords::KeywordToolService::KeywordType
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

# {https://adwords.google.com/api/adwords/v13}SiteKeyword
#   advertiserCompetitionScale - SOAP::SOAPInt
#   avgSearchVolume - SOAP::SOAPLong
#   groupId - SOAP::SOAPInt
#   lastMonthSearchVolume - SOAP::SOAPLong
#   text - SOAP::SOAPString
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

# {https://adwords.google.com/api/adwords/v13}SiteKeywordGroups
#   groups - SOAP::SOAPString
#   keywords - AdWords::KeywordToolService::SiteKeyword
class SiteKeywordGroups
  attr_accessor :groups
  attr_accessor :keywords

  def initialize(groups = [], keywords = [])
    @groups = groups
    @keywords = keywords
  end
end

# {https://adwords.google.com/api/adwords/v13}KeywordType
class KeywordType < ::String
  Broad = KeywordType.new("Broad")
  Exact = KeywordType.new("Exact")
  Phrase = KeywordType.new("Phrase")
end

# {https://adwords.google.com/api/adwords/v13}getKeywordVariations
#   seedKeywords - AdWords::KeywordToolService::SeedKeyword
#   useSynonyms - SOAP::SOAPBoolean
#   languages - SOAP::SOAPString
#   countries - SOAP::SOAPString
class GetKeywordVariations
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

# {https://adwords.google.com/api/adwords/v13}getKeywordVariationsResponse
#   getKeywordVariationsReturn - AdWords::KeywordToolService::KeywordVariations
class GetKeywordVariationsResponse
  attr_accessor :getKeywordVariationsReturn

  def initialize(getKeywordVariationsReturn = nil)
    @getKeywordVariationsReturn = getKeywordVariationsReturn
  end
end

# {https://adwords.google.com/api/adwords/v13}getKeywordsFromSite
#   url - SOAP::SOAPString
#   includeLinkedPages - SOAP::SOAPBoolean
#   languages - SOAP::SOAPString
#   countries - SOAP::SOAPString
class GetKeywordsFromSite
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

# {https://adwords.google.com/api/adwords/v13}getKeywordsFromSiteResponse
#   getKeywordsFromSiteReturn - AdWords::KeywordToolService::SiteKeywordGroups
class GetKeywordsFromSiteResponse
  attr_accessor :getKeywordsFromSiteReturn

  def initialize(getKeywordsFromSiteReturn = nil)
    @getKeywordsFromSiteReturn = getKeywordsFromSiteReturn
  end
end


end; end
