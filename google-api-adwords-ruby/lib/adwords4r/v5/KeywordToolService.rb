module AdWords
require 'xsd/qname'

# {https://adwords.google.com/api/adwords/v5}getKeywordVariations
class GetKeywordVariations
  @@schema_type = "getKeywordVariations"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["seedKeywords", "SeedKeyword[]"],
    ["useSynonyms", "SOAP::SOAPBoolean"],
    ["languages", "SOAP::SOAPString[]"],
    ["countries", "SOAP::SOAPString[]"]
  ]

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

# {https://adwords.google.com/api/adwords/v5}getKeywordVariationsResponse
class GetKeywordVariationsResponse
  @@schema_type = "getKeywordVariationsResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getKeywordVariationsReturn", "KeywordVariations"]
  ]

  attr_accessor :getKeywordVariationsReturn

  def initialize(getKeywordVariationsReturn = nil)
    @getKeywordVariationsReturn = getKeywordVariationsReturn
  end
end

# {https://adwords.google.com/api/adwords/v5}getKeywordsFromSite
class GetKeywordsFromSite
  @@schema_type = "getKeywordsFromSite"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["url", "SOAP::SOAPString"],
    ["includeLinkedPages", "SOAP::SOAPBoolean"],
    ["languages", "SOAP::SOAPString[]"],
    ["countries", "SOAP::SOAPString[]"]
  ]

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

# {https://adwords.google.com/api/adwords/v5}getKeywordsFromSiteResponse
class GetKeywordsFromSiteResponse
  @@schema_type = "getKeywordsFromSiteResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getKeywordsFromSiteReturn", "SiteKeywordGroups"]
  ]

  attr_accessor :getKeywordsFromSiteReturn

  def initialize(getKeywordsFromSiteReturn = nil)
    @getKeywordsFromSiteReturn = getKeywordsFromSiteReturn
  end
end

# {https://adwords.google.com/api/adwords/v5}ApiException
class ApiException
  @@schema_type = "ApiException"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_element = [
    ["code", "SOAP::SOAPInt"],
    ["internal", "SOAP::SOAPBoolean"],
    ["message", "SOAP::SOAPString"],
    ["trigger", "SOAP::SOAPString"],
    ["errors", "ApiError[]"]
  ]

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

# {https://adwords.google.com/api/adwords/v5}ApiError
class ApiError
  @@schema_type = "ApiError"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_element = [
    ["index", "SOAP::SOAPInt"],
    ["field", "SOAP::SOAPString"],
    ["textIndex", "SOAP::SOAPInt"],
    ["textLength", "SOAP::SOAPInt"],
    ["trigger", "SOAP::SOAPString"],
    ["code", "SOAP::SOAPInt"],
    ["isExemptable", "SOAP::SOAPBoolean"],
    ["detail", "SOAP::SOAPString"]
  ]

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

# {https://adwords.google.com/api/adwords/v5}SeedKeyword
class SeedKeyword
  @@schema_type = "SeedKeyword"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_element = [
    ["negative", "SOAP::SOAPBoolean"],
    ["text", "SOAP::SOAPString"],
    ["type", "SOAP::SOAPString"]
  ]

  attr_accessor :negative
  attr_accessor :text
  attr_accessor :type

  def initialize(negative = nil, text = nil, type = nil)
    @negative = negative
    @text = text
    @type = type
  end
end

# {https://adwords.google.com/api/adwords/v5}KeywordVariations
class KeywordVariations
  @@schema_type = "KeywordVariations"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_element = [
    ["additionalToConsider", "KeywordVariation[]"],
    ["moreSpecific", "KeywordVariation[]"]
  ]

  attr_accessor :additionalToConsider
  attr_accessor :moreSpecific

  def initialize(additionalToConsider = [], moreSpecific = [])
    @additionalToConsider = additionalToConsider
    @moreSpecific = moreSpecific
  end
end

# {https://adwords.google.com/api/adwords/v5}KeywordVariation
class KeywordVariation
  @@schema_type = "KeywordVariation"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_element = [
    ["advertiserCompetitionScale", "SOAP::SOAPInt"],
    ["language", "SOAP::SOAPString"],
    ["searchVolumeScale", "SOAP::SOAPInt"],
    ["text", "SOAP::SOAPString"]
  ]

  attr_accessor :advertiserCompetitionScale
  attr_accessor :language
  attr_accessor :searchVolumeScale
  attr_accessor :text

  def initialize(advertiserCompetitionScale = nil, language = nil, searchVolumeScale = nil, text = nil)
    @advertiserCompetitionScale = advertiserCompetitionScale
    @language = language
    @searchVolumeScale = searchVolumeScale
    @text = text
  end
end

# {https://adwords.google.com/api/adwords/v5}SiteKeywordGroups
class SiteKeywordGroups
  @@schema_type = "SiteKeywordGroups"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_element = [
    ["groups", "SOAP::SOAPString[]"],
    ["keywords", "SiteKeyword[]"]
  ]

  attr_accessor :groups
  attr_accessor :keywords

  def initialize(groups = [], keywords = [])
    @groups = groups
    @keywords = keywords
  end
end

# {https://adwords.google.com/api/adwords/v5}SiteKeyword
class SiteKeyword
  @@schema_type = "SiteKeyword"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_element = [
    ["advertiserCompetitionScale", "SOAP::SOAPInt"],
    ["groupId", "SOAP::SOAPInt"],
    ["searchVolumeScale", "SOAP::SOAPInt"],
    ["text", "SOAP::SOAPString"]
  ]

  attr_accessor :advertiserCompetitionScale
  attr_accessor :groupId
  attr_accessor :searchVolumeScale
  attr_accessor :text

  def initialize(advertiserCompetitionScale = nil, groupId = nil, searchVolumeScale = nil, text = nil)
    @advertiserCompetitionScale = advertiserCompetitionScale
    @groupId = groupId
    @searchVolumeScale = searchVolumeScale
    @text = text
  end
end

# {https://adwords.google.com/api/adwords/v5}KeywordType
class KeywordType < ::String
  @@schema_type = "KeywordType"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"

  Broad = KeywordType.new("Broad")
  Exact = KeywordType.new("Exact")
  Phrase = KeywordType.new("Phrase")
end
end
