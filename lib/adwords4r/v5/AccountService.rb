module AdWords
require 'xsd/qname'

# {https://adwords.google.com/api/adwords/v5}createAdWordsAccount
class CreateAdWordsAccount
  @@schema_type = "createAdWordsAccount"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["loginEmail", "SOAP::SOAPString"],
    ["password", "SOAP::SOAPString"],
    ["languagePreference", "SOAP::SOAPString"],
    ["emailPrefs", "EmailPromotionsPreferences"],
    ["currencyCode", "SOAP::SOAPString"],
    ["cardInfo", "CreditCard"],
    ["contactInfo", "Address"],
    ["defaultAdsCoverage", "CoverageType"],
    ["timeZoneId", "SOAP::SOAPString"]
  ]

  attr_accessor :loginEmail
  attr_accessor :password
  attr_accessor :languagePreference
  attr_accessor :emailPrefs
  attr_accessor :currencyCode
  attr_accessor :cardInfo
  attr_accessor :contactInfo
  attr_accessor :defaultAdsCoverage
  attr_accessor :timeZoneId

  def initialize(loginEmail = nil, password = nil, languagePreference = nil, emailPrefs = nil, currencyCode = nil, cardInfo = nil, contactInfo = nil, defaultAdsCoverage = nil, timeZoneId = nil)
    @loginEmail = loginEmail
    @password = password
    @languagePreference = languagePreference
    @emailPrefs = emailPrefs
    @currencyCode = currencyCode
    @cardInfo = cardInfo
    @contactInfo = contactInfo
    @defaultAdsCoverage = defaultAdsCoverage
    @timeZoneId = timeZoneId
  end
end

# {https://adwords.google.com/api/adwords/v5}createAdWordsAccountResponse
class CreateAdWordsAccountResponse
  @@schema_type = "createAdWordsAccountResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v5}setLoginInfo
class SetLoginInfo
  @@schema_type = "setLoginInfo"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
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

# {https://adwords.google.com/api/adwords/v5}setLoginInfoResponse
class SetLoginInfoResponse
  @@schema_type = "setLoginInfoResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v5}getAccountCurrency
class GetAccountCurrency
  @@schema_type = "getAccountCurrency"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v5}getAccountCurrencyResponse
class GetAccountCurrencyResponse
  @@schema_type = "getAccountCurrencyResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getAccountCurrencyReturn", "SOAP::SOAPString"]
  ]

  attr_accessor :getAccountCurrencyReturn

  def initialize(getAccountCurrencyReturn = nil)
    @getAccountCurrencyReturn = getAccountCurrencyReturn
  end
end

# {https://adwords.google.com/api/adwords/v5}getCreditCard
class GetCreditCard
  @@schema_type = "getCreditCard"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v5}getCreditCardResponse
class GetCreditCardResponse
  @@schema_type = "getCreditCardResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getCreditCardReturn", "CreditCard"]
  ]

  attr_accessor :getCreditCardReturn

  def initialize(getCreditCardReturn = nil)
    @getCreditCardReturn = getCreditCardReturn
  end
end

# {https://adwords.google.com/api/adwords/v5}getBillingAddress
class GetBillingAddress
  @@schema_type = "getBillingAddress"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v5}getBillingAddressResponse
class GetBillingAddressResponse
  @@schema_type = "getBillingAddressResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getBillingAddressReturn", "Address"]
  ]

  attr_accessor :getBillingAddressReturn

  def initialize(getBillingAddressReturn = nil)
    @getBillingAddressReturn = getBillingAddressReturn
  end
end

# {https://adwords.google.com/api/adwords/v5}setCreditCard
class SetCreditCard
  @@schema_type = "setCreditCard"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
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

# {https://adwords.google.com/api/adwords/v5}setCreditCardResponse
class SetCreditCardResponse
  @@schema_type = "setCreditCardResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v5}getDefaultAdsCoverage
class GetDefaultAdsCoverage
  @@schema_type = "getDefaultAdsCoverage"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v5}getDefaultAdsCoverageResponse
class GetDefaultAdsCoverageResponse
  @@schema_type = "getDefaultAdsCoverageResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getDefaultAdsCoverageReturn", "CoverageType"]
  ]

  attr_accessor :getDefaultAdsCoverageReturn

  def initialize(getDefaultAdsCoverageReturn = nil)
    @getDefaultAdsCoverageReturn = getDefaultAdsCoverageReturn
  end
end

# {https://adwords.google.com/api/adwords/v5}setDefaultAdsCoverage
class SetDefaultAdsCoverage
  @@schema_type = "setDefaultAdsCoverage"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["coverage", "CoverageType"]
  ]

  attr_accessor :coverage

  def initialize(coverage = nil)
    @coverage = coverage
  end
end

# {https://adwords.google.com/api/adwords/v5}setDefaultAdsCoverageResponse
class SetDefaultAdsCoverageResponse
  @@schema_type = "setDefaultAdsCoverageResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v5}getLanguagePreference
class GetLanguagePreference
  @@schema_type = "getLanguagePreference"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v5}getLanguagePreferenceResponse
class GetLanguagePreferenceResponse
  @@schema_type = "getLanguagePreferenceResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getLanguagePreferenceReturn", "SOAP::SOAPString"]
  ]

  attr_accessor :getLanguagePreferenceReturn

  def initialize(getLanguagePreferenceReturn = nil)
    @getLanguagePreferenceReturn = getLanguagePreferenceReturn
  end
end

# {https://adwords.google.com/api/adwords/v5}setLanguagePreference
class SetLanguagePreference
  @@schema_type = "setLanguagePreference"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["languagePref", "SOAP::SOAPString"]
  ]

  attr_accessor :languagePref

  def initialize(languagePref = nil)
    @languagePref = languagePref
  end
end

# {https://adwords.google.com/api/adwords/v5}setLanguagePreferenceResponse
class SetLanguagePreferenceResponse
  @@schema_type = "setLanguagePreferenceResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v5}getEmailPromotionsPreferences
class GetEmailPromotionsPreferences
  @@schema_type = "getEmailPromotionsPreferences"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v5}getEmailPromotionsPreferencesResponse
class GetEmailPromotionsPreferencesResponse
  @@schema_type = "getEmailPromotionsPreferencesResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getEmailPromotionsPreferencesReturn", "EmailPromotionsPreferences"]
  ]

  attr_accessor :getEmailPromotionsPreferencesReturn

  def initialize(getEmailPromotionsPreferencesReturn = nil)
    @getEmailPromotionsPreferencesReturn = getEmailPromotionsPreferencesReturn
  end
end

# {https://adwords.google.com/api/adwords/v5}setEmailPromotionsPreferences
class SetEmailPromotionsPreferences
  @@schema_type = "setEmailPromotionsPreferences"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["prefs", "EmailPromotionsPreferences"]
  ]

  attr_accessor :prefs

  def initialize(prefs = nil)
    @prefs = prefs
  end
end

# {https://adwords.google.com/api/adwords/v5}setEmailPromotionsPreferencesResponse
class SetEmailPromotionsPreferencesResponse
  @@schema_type = "setEmailPromotionsPreferencesResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v5}getPrimaryBusinessCategory
class GetPrimaryBusinessCategory
  @@schema_type = "getPrimaryBusinessCategory"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v5}getPrimaryBusinessCategoryResponse
class GetPrimaryBusinessCategoryResponse
  @@schema_type = "getPrimaryBusinessCategoryResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getPrimaryBusinessCategoryReturn", "SOAP::SOAPString"]
  ]

  attr_accessor :getPrimaryBusinessCategoryReturn

  def initialize(getPrimaryBusinessCategoryReturn = nil)
    @getPrimaryBusinessCategoryReturn = getPrimaryBusinessCategoryReturn
  end
end

# {https://adwords.google.com/api/adwords/v5}setPrimaryBusinessCategory
class SetPrimaryBusinessCategory
  @@schema_type = "setPrimaryBusinessCategory"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["bizType", "SOAP::SOAPString"]
  ]

  attr_accessor :bizType

  def initialize(bizType = nil)
    @bizType = bizType
  end
end

# {https://adwords.google.com/api/adwords/v5}setPrimaryBusinessCategoryResponse
class SetPrimaryBusinessCategoryResponse
  @@schema_type = "setPrimaryBusinessCategoryResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v5}getTermsAndConditions
class GetTermsAndConditions
  @@schema_type = "getTermsAndConditions"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v5}getTermsAndConditionsResponse
class GetTermsAndConditionsResponse
  @@schema_type = "getTermsAndConditionsResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getTermsAndConditionsReturn", "SOAP::SOAPString"]
  ]

  attr_accessor :getTermsAndConditionsReturn

  def initialize(getTermsAndConditionsReturn = nil)
    @getTermsAndConditionsReturn = getTermsAndConditionsReturn
  end
end

# {https://adwords.google.com/api/adwords/v5}getClientAccounts
class GetClientAccounts
  @@schema_type = "getClientAccounts"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v5}getClientAccountsResponse
class GetClientAccountsResponse < ::Array
  @@schema_element = [
    ["getClientAccountsReturn", ["SOAP::SOAPString[]", XSD::QName.new("https://adwords.google.com/api/adwords/v5", "getClientAccountsReturn")]]
  ]
end

# {https://adwords.google.com/api/adwords/v5}getLocalTimezone
class GetLocalTimezone
  @@schema_type = "getLocalTimezone"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v5}getLocalTimezoneResponse
class GetLocalTimezoneResponse
  @@schema_type = "getLocalTimezoneResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getLocalTimezoneReturn", "SOAP::SOAPString"]
  ]

  attr_accessor :getLocalTimezoneReturn

  def initialize(getLocalTimezoneReturn = nil)
    @getLocalTimezoneReturn = getLocalTimezoneReturn
  end
end

# {https://adwords.google.com/api/adwords/v5}setLocalTimezone
class SetLocalTimezone
  @@schema_type = "setLocalTimezone"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["timezoneID", "SOAP::SOAPString"]
  ]

  attr_accessor :timezoneID

  def initialize(timezoneID = nil)
    @timezoneID = timezoneID
  end
end

# {https://adwords.google.com/api/adwords/v5}setLocalTimezoneResponse
class SetLocalTimezoneResponse
  @@schema_type = "setLocalTimezoneResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v5}getTimezoneEffectiveDate
class GetTimezoneEffectiveDate
  @@schema_type = "getTimezoneEffectiveDate"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v5}getTimezoneEffectiveDateResponse
class GetTimezoneEffectiveDateResponse
  @@schema_type = "getTimezoneEffectiveDateResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getTimezoneEffectiveDateReturn", "SOAP::SOAPLong"]
  ]

  attr_accessor :getTimezoneEffectiveDateReturn

  def initialize(getTimezoneEffectiveDateReturn = nil)
    @getTimezoneEffectiveDateReturn = getTimezoneEffectiveDateReturn
  end
end

# {https://adwords.google.com/api/adwords/v5}getAccountInfo
class GetAccountInfo
  @@schema_type = "getAccountInfo"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v5}getAccountInfoResponse
class GetAccountInfoResponse
  @@schema_type = "getAccountInfoResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getAccountInfoReturn", "AccountInfo"]
  ]

  attr_accessor :getAccountInfoReturn

  def initialize(getAccountInfoReturn = nil)
    @getAccountInfoReturn = getAccountInfoReturn
  end
end

# {https://adwords.google.com/api/adwords/v5}updateAccountInfo
class UpdateAccountInfo
  @@schema_type = "updateAccountInfo"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = [
    ["accountInfo", "AccountInfo"]
  ]

  attr_accessor :accountInfo

  def initialize(accountInfo = nil)
    @accountInfo = accountInfo
  end
end

# {https://adwords.google.com/api/adwords/v5}updateAccountInfoResponse
class UpdateAccountInfoResponse
  @@schema_type = "updateAccountInfoResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v5}EmailPromotionsPreferences
class EmailPromotionsPreferences
  @@schema_type = "EmailPromotionsPreferences"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
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

# {https://adwords.google.com/api/adwords/v5}CreditCard
class CreditCard
  @@schema_type = "CreditCard"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
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

# {https://adwords.google.com/api/adwords/v5}Address
class Address
  @@schema_type = "Address"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
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
    ["state", "SOAP::SOAPString"],
    ["emailAddress", "SOAP::SOAPString"]
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
  attr_accessor :emailAddress

  def initialize(addressLine1 = nil, addressLine2 = nil, city = nil, companyName = nil, countryCode = nil, faxNumber = nil, name = nil, phoneNumber = nil, postalCode = nil, state = nil, emailAddress = nil)
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
    @emailAddress = emailAddress
  end
end

# {https://adwords.google.com/api/adwords/v5}CoverageType
class CoverageType
  @@schema_type = "CoverageType"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
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

# {https://adwords.google.com/api/adwords/v5}AccountInfo
class AccountInfo
  @@schema_type = "AccountInfo"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"
  @@schema_element = [
    ["currencyCode", "SOAP::SOAPString"],
    ["billingAddress", "Address"],
    ["primaryAddress", "Address"],
    ["emailPromotionsPreferences", "EmailPromotionsPreferences"],
    ["languagePreference", "SOAP::SOAPString"],
    ["timeZoneId", "SOAP::SOAPString"],
    ["timeZoneEffectiveDate", "SOAP::SOAPLong"],
    ["customerId", "SOAP::SOAPLong"],
    ["descriptiveName", "SOAP::SOAPString"],
    ["termsAndConditions", "SOAP::SOAPString"],
    ["primaryBusinessCategory", "SOAP::SOAPString"],
    ["defaultAdsCoverage", "CoverageType"]
  ]

  attr_accessor :currencyCode
  attr_accessor :billingAddress
  attr_accessor :primaryAddress
  attr_accessor :emailPromotionsPreferences
  attr_accessor :languagePreference
  attr_accessor :timeZoneId
  attr_accessor :timeZoneEffectiveDate
  attr_accessor :customerId
  attr_accessor :descriptiveName
  attr_accessor :termsAndConditions
  attr_accessor :primaryBusinessCategory
  attr_accessor :defaultAdsCoverage

  def initialize(currencyCode = nil, billingAddress = nil, primaryAddress = nil, emailPromotionsPreferences = nil, languagePreference = nil, timeZoneId = nil, timeZoneEffectiveDate = nil, customerId = nil, descriptiveName = nil, termsAndConditions = nil, primaryBusinessCategory = nil, defaultAdsCoverage = nil)
    @currencyCode = currencyCode
    @billingAddress = billingAddress
    @primaryAddress = primaryAddress
    @emailPromotionsPreferences = emailPromotionsPreferences
    @languagePreference = languagePreference
    @timeZoneId = timeZoneId
    @timeZoneEffectiveDate = timeZoneEffectiveDate
    @customerId = customerId
    @descriptiveName = descriptiveName
    @termsAndConditions = termsAndConditions
    @primaryBusinessCategory = primaryBusinessCategory
    @defaultAdsCoverage = defaultAdsCoverage
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

# {https://adwords.google.com/api/adwords/v5}CreditCardType
class CreditCardType < ::String
  @@schema_type = "CreditCardType"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"

  AmericanExpress = CreditCardType.new("AmericanExpress")
  JCB = CreditCardType.new("JCB")
  MasterCard = CreditCardType.new("MasterCard")
  SOLO = CreditCardType.new("SOLO")
  Switch = CreditCardType.new("Switch")
  VISA = CreditCardType.new("VISA")
end

# {https://adwords.google.com/api/adwords/v5}TaxStatus
class TaxStatus < ::String
  @@schema_type = "TaxStatus"
  @@schema_ns = "https://adwords.google.com/api/adwords/v5"

  Charity = TaxStatus.new("Charity")
  ExtraTerritorial = TaxStatus.new("ExtraTerritorial")
  Other = TaxStatus.new("Other")
  SubjectToTax = TaxStatus.new("SubjectToTax")
  ZeroRated = TaxStatus.new("ZeroRated")
end
end
