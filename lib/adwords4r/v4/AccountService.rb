module AdWords
require 'xsd/qname'

# {https://adwords.google.com/api/adwords/v4}createAdWordsAccount
class CreateAdWordsAccount
  @@schema_type = "createAdWordsAccount"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["loginEmail", "SOAP::SOAPString"],
    ["password", "SOAP::SOAPString"],
    ["languagePreference", "SOAP::SOAPString"],
    ["emailPrefs", "EmailPromotionsPreferences"],
    ["currencyCode", "SOAP::SOAPString"],
    ["cardInfo", "CreditCard"],
    ["contactInfo", "Address"],
    ["defaultAdsCoverage", "CoverageType"]
  ]

  attr_accessor :loginEmail
  attr_accessor :password
  attr_accessor :languagePreference
  attr_accessor :emailPrefs
  attr_accessor :currencyCode
  attr_accessor :cardInfo
  attr_accessor :contactInfo
  attr_accessor :defaultAdsCoverage

  def initialize(loginEmail = nil, password = nil, languagePreference = nil, emailPrefs = nil, currencyCode = nil, cardInfo = nil, contactInfo = nil, defaultAdsCoverage = nil)
    @loginEmail = loginEmail
    @password = password
    @languagePreference = languagePreference
    @emailPrefs = emailPrefs
    @currencyCode = currencyCode
    @cardInfo = cardInfo
    @contactInfo = contactInfo
    @defaultAdsCoverage = defaultAdsCoverage
  end
end

# {https://adwords.google.com/api/adwords/v4}createAdWordsAccountResponse
class CreateAdWordsAccountResponse
  @@schema_type = "createAdWordsAccountResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}setLoginInfo
class SetLoginInfo
  @@schema_type = "setLoginInfo"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["login", "SOAP::SOAPString"],
    ["newPassword", "SOAP::SOAPString"]
  ]

  attr_accessor :login
  attr_accessor :newPassword

  def initialize(login = nil, newPassword = nil)
    @login = login
    @newPassword = newPassword
  end
end

# {https://adwords.google.com/api/adwords/v4}setLoginInfoResponse
class SetLoginInfoResponse
  @@schema_type = "setLoginInfoResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}getAccountCurrency
class GetAccountCurrency
  @@schema_type = "getAccountCurrency"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}getAccountCurrencyResponse
class GetAccountCurrencyResponse
  @@schema_type = "getAccountCurrencyResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getAccountCurrencyReturn", "SOAP::SOAPString"]
  ]

  attr_accessor :getAccountCurrencyReturn

  def initialize(getAccountCurrencyReturn = nil)
    @getAccountCurrencyReturn = getAccountCurrencyReturn
  end
end

# {https://adwords.google.com/api/adwords/v4}getCreditCard
class GetCreditCard
  @@schema_type = "getCreditCard"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}getCreditCardResponse
class GetCreditCardResponse
  @@schema_type = "getCreditCardResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getCreditCardReturn", "CreditCard"]
  ]

  attr_accessor :getCreditCardReturn

  def initialize(getCreditCardReturn = nil)
    @getCreditCardReturn = getCreditCardReturn
  end
end

# {https://adwords.google.com/api/adwords/v4}getBillingAddress
class GetBillingAddress
  @@schema_type = "getBillingAddress"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}getBillingAddressResponse
class GetBillingAddressResponse
  @@schema_type = "getBillingAddressResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getBillingAddressReturn", "Address"]
  ]

  attr_accessor :getBillingAddressReturn

  def initialize(getBillingAddressReturn = nil)
    @getBillingAddressReturn = getBillingAddressReturn
  end
end

# {https://adwords.google.com/api/adwords/v4}setCreditCard
class SetCreditCard
  @@schema_type = "setCreditCard"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["cardInfo", "CreditCard"],
    ["contactInfo", "Address"]
  ]

  attr_accessor :cardInfo
  attr_accessor :contactInfo

  def initialize(cardInfo = nil, contactInfo = nil)
    @cardInfo = cardInfo
    @contactInfo = contactInfo
  end
end

# {https://adwords.google.com/api/adwords/v4}setCreditCardResponse
class SetCreditCardResponse
  @@schema_type = "setCreditCardResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}getDefaultAdsCoverage
class GetDefaultAdsCoverage
  @@schema_type = "getDefaultAdsCoverage"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}getDefaultAdsCoverageResponse
class GetDefaultAdsCoverageResponse
  @@schema_type = "getDefaultAdsCoverageResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getDefaultAdsCoverageReturn", "CoverageType"]
  ]

  attr_accessor :getDefaultAdsCoverageReturn

  def initialize(getDefaultAdsCoverageReturn = nil)
    @getDefaultAdsCoverageReturn = getDefaultAdsCoverageReturn
  end
end

# {https://adwords.google.com/api/adwords/v4}setDefaultAdsCoverage
class SetDefaultAdsCoverage
  @@schema_type = "setDefaultAdsCoverage"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["coverage", "CoverageType"]
  ]

  attr_accessor :coverage

  def initialize(coverage = nil)
    @coverage = coverage
  end
end

# {https://adwords.google.com/api/adwords/v4}setDefaultAdsCoverageResponse
class SetDefaultAdsCoverageResponse
  @@schema_type = "setDefaultAdsCoverageResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}getLanguagePreference
class GetLanguagePreference
  @@schema_type = "getLanguagePreference"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}getLanguagePreferenceResponse
class GetLanguagePreferenceResponse
  @@schema_type = "getLanguagePreferenceResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getLanguagePreferenceReturn", "SOAP::SOAPString"]
  ]

  attr_accessor :getLanguagePreferenceReturn

  def initialize(getLanguagePreferenceReturn = nil)
    @getLanguagePreferenceReturn = getLanguagePreferenceReturn
  end
end

# {https://adwords.google.com/api/adwords/v4}setLanguagePreference
class SetLanguagePreference
  @@schema_type = "setLanguagePreference"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["languagePref", "SOAP::SOAPString"]
  ]

  attr_accessor :languagePref

  def initialize(languagePref = nil)
    @languagePref = languagePref
  end
end

# {https://adwords.google.com/api/adwords/v4}setLanguagePreferenceResponse
class SetLanguagePreferenceResponse
  @@schema_type = "setLanguagePreferenceResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}getEmailPromotionsPreferences
class GetEmailPromotionsPreferences
  @@schema_type = "getEmailPromotionsPreferences"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}getEmailPromotionsPreferencesResponse
class GetEmailPromotionsPreferencesResponse
  @@schema_type = "getEmailPromotionsPreferencesResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getEmailPromotionsPreferencesReturn", "EmailPromotionsPreferences"]
  ]

  attr_accessor :getEmailPromotionsPreferencesReturn

  def initialize(getEmailPromotionsPreferencesReturn = nil)
    @getEmailPromotionsPreferencesReturn = getEmailPromotionsPreferencesReturn
  end
end

# {https://adwords.google.com/api/adwords/v4}setEmailPromotionsPreferences
class SetEmailPromotionsPreferences
  @@schema_type = "setEmailPromotionsPreferences"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["prefs", "EmailPromotionsPreferences"]
  ]

  attr_accessor :prefs

  def initialize(prefs = nil)
    @prefs = prefs
  end
end

# {https://adwords.google.com/api/adwords/v4}setEmailPromotionsPreferencesResponse
class SetEmailPromotionsPreferencesResponse
  @@schema_type = "setEmailPromotionsPreferencesResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}getPrimaryBusinessCategory
class GetPrimaryBusinessCategory
  @@schema_type = "getPrimaryBusinessCategory"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}getPrimaryBusinessCategoryResponse
class GetPrimaryBusinessCategoryResponse
  @@schema_type = "getPrimaryBusinessCategoryResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getPrimaryBusinessCategoryReturn", "SOAP::SOAPString"]
  ]

  attr_accessor :getPrimaryBusinessCategoryReturn

  def initialize(getPrimaryBusinessCategoryReturn = nil)
    @getPrimaryBusinessCategoryReturn = getPrimaryBusinessCategoryReturn
  end
end

# {https://adwords.google.com/api/adwords/v4}setPrimaryBusinessCategory
class SetPrimaryBusinessCategory
  @@schema_type = "setPrimaryBusinessCategory"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["bizType", "SOAP::SOAPString"]
  ]

  attr_accessor :bizType

  def initialize(bizType = nil)
    @bizType = bizType
  end
end

# {https://adwords.google.com/api/adwords/v4}setPrimaryBusinessCategoryResponse
class SetPrimaryBusinessCategoryResponse
  @@schema_type = "setPrimaryBusinessCategoryResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}getTermsAndConditions
class GetTermsAndConditions
  @@schema_type = "getTermsAndConditions"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}getTermsAndConditionsResponse
class GetTermsAndConditionsResponse
  @@schema_type = "getTermsAndConditionsResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getTermsAndConditionsReturn", "SOAP::SOAPString"]
  ]

  attr_accessor :getTermsAndConditionsReturn

  def initialize(getTermsAndConditionsReturn = nil)
    @getTermsAndConditionsReturn = getTermsAndConditionsReturn
  end
end

# {https://adwords.google.com/api/adwords/v4}getClientAccounts
class GetClientAccounts
  @@schema_type = "getClientAccounts"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}getClientAccountsResponse
class GetClientAccountsResponse < ::Array
  @@schema_element = [
    ["getClientAccountsReturn", ["SOAP::SOAPString[]", XSD::QName.new("https://adwords.google.com/api/adwords/v4", "getClientAccountsReturn")]]
  ]
end

# {https://adwords.google.com/api/adwords/v4}getLocalTimezone
class GetLocalTimezone
  @@schema_type = "getLocalTimezone"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}getLocalTimezoneResponse
class GetLocalTimezoneResponse
  @@schema_type = "getLocalTimezoneResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getLocalTimezoneReturn", "SOAP::SOAPString"]
  ]

  attr_accessor :getLocalTimezoneReturn

  def initialize(getLocalTimezoneReturn = nil)
    @getLocalTimezoneReturn = getLocalTimezoneReturn
  end
end

# {https://adwords.google.com/api/adwords/v4}setLocalTimezone
class SetLocalTimezone
  @@schema_type = "setLocalTimezone"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["timezoneID", "SOAP::SOAPString"]
  ]

  attr_accessor :timezoneID

  def initialize(timezoneID = nil)
    @timezoneID = timezoneID
  end
end

# {https://adwords.google.com/api/adwords/v4}setLocalTimezoneResponse
class SetLocalTimezoneResponse
  @@schema_type = "setLocalTimezoneResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}getTimezoneEffectiveDate
class GetTimezoneEffectiveDate
  @@schema_type = "getTimezoneEffectiveDate"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v4}getTimezoneEffectiveDateResponse
class GetTimezoneEffectiveDateResponse
  @@schema_type = "getTimezoneEffectiveDateResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getTimezoneEffectiveDateReturn", "SOAP::SOAPLong"]
  ]

  attr_accessor :getTimezoneEffectiveDateReturn

  def initialize(getTimezoneEffectiveDateReturn = nil)
    @getTimezoneEffectiveDateReturn = getTimezoneEffectiveDateReturn
  end
end

# {https://adwords.google.com/api/adwords/v4}EmailPromotionsPreferences
class EmailPromotionsPreferences
  @@schema_type = "EmailPromotionsPreferences"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["marketResearchEnabled", "SOAP::SOAPBoolean"],
    ["newsletterEnabled", "SOAP::SOAPBoolean"],
    ["promotionsEnabled", "SOAP::SOAPBoolean"]
  ]

  attr_accessor :marketResearchEnabled
  attr_accessor :newsletterEnabled
  attr_accessor :promotionsEnabled

  def initialize(marketResearchEnabled = nil, newsletterEnabled = nil, promotionsEnabled = nil)
    @marketResearchEnabled = marketResearchEnabled
    @newsletterEnabled = newsletterEnabled
    @promotionsEnabled = promotionsEnabled
  end
end

# {https://adwords.google.com/api/adwords/v4}CreditCard
class CreditCard
  @@schema_type = "CreditCard"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["cardNumber", "SOAP::SOAPString"],
    ["cardType", "SOAP::SOAPString"],
    ["cardVerificationNumber", "SOAP::SOAPString"],
    ["expirationMonth", "SOAP::SOAPInt"],
    ["expirationYear", "SOAP::SOAPInt"],
    ["issueNumber", "SOAP::SOAPString"],
    ["startMonth", "SOAP::SOAPInt"],
    ["startYear", "SOAP::SOAPInt"],
    ["status", "SOAP::SOAPString"],
    ["taxNumber", "SOAP::SOAPString"]
  ]

  attr_accessor :cardNumber
  attr_accessor :cardType
  attr_accessor :cardVerificationNumber
  attr_accessor :expirationMonth
  attr_accessor :expirationYear
  attr_accessor :issueNumber
  attr_accessor :startMonth
  attr_accessor :startYear
  attr_accessor :status
  attr_accessor :taxNumber

  def initialize(cardNumber = nil, cardType = nil, cardVerificationNumber = nil, expirationMonth = nil, expirationYear = nil, issueNumber = nil, startMonth = nil, startYear = nil, status = nil, taxNumber = nil)
    @cardNumber = cardNumber
    @cardType = cardType
    @cardVerificationNumber = cardVerificationNumber
    @expirationMonth = expirationMonth
    @expirationYear = expirationYear
    @issueNumber = issueNumber
    @startMonth = startMonth
    @startYear = startYear
    @status = status
    @taxNumber = taxNumber
  end
end

# {https://adwords.google.com/api/adwords/v4}Address
class Address
  @@schema_type = "Address"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["addressLine1", "SOAP::SOAPString"],
    ["addressLine2", "SOAP::SOAPString"],
    ["city", "SOAP::SOAPString"],
    ["companyName", "SOAP::SOAPString"],
    ["countryCode", "SOAP::SOAPString"],
    ["faxNumber", "SOAP::SOAPString"],
    ["name", "SOAP::SOAPString"],
    ["phoneNumber", "SOAP::SOAPString"],
    ["postalCode", "SOAP::SOAPString"],
    ["state", "SOAP::SOAPString"]
  ]

  attr_accessor :addressLine1
  attr_accessor :addressLine2
  attr_accessor :city
  attr_accessor :companyName
  attr_accessor :countryCode
  attr_accessor :faxNumber
  attr_accessor :name
  attr_accessor :phoneNumber
  attr_accessor :postalCode
  attr_accessor :state

  def initialize(addressLine1 = nil, addressLine2 = nil, city = nil, companyName = nil, countryCode = nil, faxNumber = nil, name = nil, phoneNumber = nil, postalCode = nil, state = nil)
    @addressLine1 = addressLine1
    @addressLine2 = addressLine2
    @city = city
    @companyName = companyName
    @countryCode = countryCode
    @faxNumber = faxNumber
    @name = name
    @phoneNumber = phoneNumber
    @postalCode = postalCode
    @state = state
  end
end

# {https://adwords.google.com/api/adwords/v4}CoverageType
class CoverageType
  @@schema_type = "CoverageType"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["optInContentNetwork", "SOAP::SOAPBoolean"],
    ["optInSearchNetwork", "SOAP::SOAPBoolean"]
  ]

  attr_accessor :optInContentNetwork
  attr_accessor :optInSearchNetwork

  def initialize(optInContentNetwork = nil, optInSearchNetwork = nil)
    @optInContentNetwork = optInContentNetwork
    @optInSearchNetwork = optInSearchNetwork
  end
end

# {https://adwords.google.com/api/adwords/v4}ApiException
class ApiException
  @@schema_type = "ApiException"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"
  @@schema_element = [
    ["code", "SOAP::SOAPInt"],
    ["internal", "SOAP::SOAPBoolean"],
    ["message", "SOAP::SOAPString"],
    ["trigger", "SOAP::SOAPString"],
    ["violations", "SOAP::SOAPString"]
  ]

  attr_accessor :code
  attr_accessor :internal
  attr_accessor :message
  attr_accessor :trigger
  attr_accessor :violations

  def initialize(code = nil, internal = nil, message = nil, trigger = nil, violations = nil)
    @code = code
    @internal = internal
    @message = message
    @trigger = trigger
    @violations = violations
  end
end

# {https://adwords.google.com/api/adwords/v4}CreditCardType
class CreditCardType < ::String
  @@schema_type = "CreditCardType"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"

  AmericanExpress = CreditCardType.new("AmericanExpress")
  JCB = CreditCardType.new("JCB")
  MasterCard = CreditCardType.new("MasterCard")
  SOLO = CreditCardType.new("SOLO")
  Switch = CreditCardType.new("Switch")
  VISA = CreditCardType.new("VISA")
end

# {https://adwords.google.com/api/adwords/v4}TaxStatus
class TaxStatus < ::String
  @@schema_type = "TaxStatus"
  @@schema_ns = "https://adwords.google.com/api/adwords/v4"

  Charity = TaxStatus.new("Charity")
  ExtraTerritorial = TaxStatus.new("ExtraTerritorial")
  Other = TaxStatus.new("Other")
  SubjectToTax = TaxStatus.new("SubjectToTax")
  ZeroRated = TaxStatus.new("ZeroRated")
end
end
