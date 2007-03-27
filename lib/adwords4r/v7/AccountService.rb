module AdWords
require 'xsd/qname'

# {https://adwords.google.com/api/adwords/v7}createAdWordsAccount
class CreateAdWordsAccount
  @@schema_type = "createAdWordsAccount"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["loginEmail", "SOAP::SOAPString"], ["password", "SOAP::SOAPString"], ["languagePreference", "SOAP::SOAPString"], ["emailPrefs", "EmailPromotionsPreferences"], ["currencyCode", "SOAP::SOAPString"], ["cardInfo", "CreditCard"], ["contactInfo", "Address"], ["defaultAdsCoverage", "CoverageType"], ["timeZoneId", "SOAP::SOAPString"]]

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

# {https://adwords.google.com/api/adwords/v7}createAdWordsAccountResponse
class CreateAdWordsAccountResponse
  @@schema_type = "createAdWordsAccountResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v7}setLoginInfo
class SetLoginInfo
  @@schema_type = "setLoginInfo"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["login", "SOAP::SOAPString"], ["newPassword", "SOAP::SOAPString"]]

  attr_accessor :login
  attr_accessor :newPassword

  def initialize(login = nil, newPassword = nil)
    @login = login
    @newPassword = newPassword
  end
end

# {https://adwords.google.com/api/adwords/v7}setLoginInfoResponse
class SetLoginInfoResponse
  @@schema_type = "setLoginInfoResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v7}getCreditCard
class GetCreditCard
  @@schema_type = "getCreditCard"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v7}getCreditCardResponse
class GetCreditCardResponse
  @@schema_type = "getCreditCardResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["getCreditCardReturn", "CreditCard"]]

  attr_accessor :getCreditCardReturn

  def initialize(getCreditCardReturn = nil)
    @getCreditCardReturn = getCreditCardReturn
  end
end

# {https://adwords.google.com/api/adwords/v7}getClientAccounts
class GetClientAccounts
  @@schema_type = "getClientAccounts"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v7}getClientAccountsResponse
class GetClientAccountsResponse
  @@schema_type = "getClientAccountsResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["getClientAccountsReturn", "SOAP::SOAPString[]"]]

  attr_accessor :getClientAccountsReturn

  def initialize(getClientAccountsReturn = [])
    @getClientAccountsReturn = getClientAccountsReturn
  end
end

# {https://adwords.google.com/api/adwords/v7}getAccountInfo
class GetAccountInfo
  @@schema_type = "getAccountInfo"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v7}getAccountInfoResponse
class GetAccountInfoResponse
  @@schema_type = "getAccountInfoResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["getAccountInfoReturn", "AccountInfo"]]

  attr_accessor :getAccountInfoReturn

  def initialize(getAccountInfoReturn = nil)
    @getAccountInfoReturn = getAccountInfoReturn
  end
end

# {https://adwords.google.com/api/adwords/v7}updateAccountInfo
class UpdateAccountInfo
  @@schema_type = "updateAccountInfo"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = [["accountInfo", "AccountInfo"]]

  attr_accessor :accountInfo

  def initialize(accountInfo = nil)
    @accountInfo = accountInfo
  end
end

# {https://adwords.google.com/api/adwords/v7}updateAccountInfoResponse
class UpdateAccountInfoResponse
  @@schema_type = "updateAccountInfoResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v7}EmailPromotionsPreferences
class EmailPromotionsPreferences
  @@schema_type = "EmailPromotionsPreferences"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = [["marketResearchEnabled", "SOAP::SOAPBoolean"], ["newsletterEnabled", "SOAP::SOAPBoolean"], ["promotionsEnabled", "SOAP::SOAPBoolean"]]

  attr_accessor :marketResearchEnabled
  attr_accessor :newsletterEnabled
  attr_accessor :promotionsEnabled

  def initialize(marketResearchEnabled = nil, newsletterEnabled = nil, promotionsEnabled = nil)
    @marketResearchEnabled = marketResearchEnabled
    @newsletterEnabled = newsletterEnabled
    @promotionsEnabled = promotionsEnabled
  end
end

# {https://adwords.google.com/api/adwords/v7}CreditCard
class CreditCard
  @@schema_type = "CreditCard"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = [["cardNumber", "SOAP::SOAPString"], ["cardType", "SOAP::SOAPString"], ["cardVerificationNumber", "SOAP::SOAPString"], ["expirationMonth", "SOAP::SOAPInt"], ["expirationYear", "SOAP::SOAPInt"], ["issueNumber", "SOAP::SOAPString"], ["startMonth", "SOAP::SOAPInt"], ["startYear", "SOAP::SOAPInt"], ["status", "SOAP::SOAPString"], ["taxNumber", "SOAP::SOAPString"]]

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

# {https://adwords.google.com/api/adwords/v7}Address
class Address
  @@schema_type = "Address"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = [["addressLine1", "SOAP::SOAPString"], ["addressLine2", "SOAP::SOAPString"], ["city", "SOAP::SOAPString"], ["companyName", "SOAP::SOAPString"], ["countryCode", "SOAP::SOAPString"], ["faxNumber", "SOAP::SOAPString"], ["name", "SOAP::SOAPString"], ["phoneNumber", "SOAP::SOAPString"], ["postalCode", "SOAP::SOAPString"], ["state", "SOAP::SOAPString"], ["emailAddress", "SOAP::SOAPString"]]

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

# {https://adwords.google.com/api/adwords/v7}CoverageType
class CoverageType
  @@schema_type = "CoverageType"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = [["optInContentNetwork", "SOAP::SOAPBoolean"], ["optInSearchNetwork", "SOAP::SOAPBoolean"]]

  attr_accessor :optInContentNetwork
  attr_accessor :optInSearchNetwork

  def initialize(optInContentNetwork = nil, optInSearchNetwork = nil)
    @optInContentNetwork = optInContentNetwork
    @optInSearchNetwork = optInSearchNetwork
  end
end

# {https://adwords.google.com/api/adwords/v7}AccountInfo
class AccountInfo
  @@schema_type = "AccountInfo"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = [["currencyCode", "SOAP::SOAPString"], ["billingAddress", "Address"], ["primaryAddress", "Address"], ["emailPromotionsPreferences", "EmailPromotionsPreferences"], ["languagePreference", "SOAP::SOAPString"], ["timeZoneId", "SOAP::SOAPString"], ["timeZoneEffectiveDate", "SOAP::SOAPLong"], ["customerId", "SOAP::SOAPLong"], ["descriptiveName", "SOAP::SOAPString"], ["termsAndConditions", "SOAP::SOAPString"], ["primaryBusinessCategory", "SOAP::SOAPString"], ["defaultAdsCoverage", "CoverageType"]]

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

# {https://adwords.google.com/api/adwords/v7}ApiException
class ApiException
  @@schema_type = "ApiException"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = [["code", "SOAP::SOAPInt"], ["internal", "SOAP::SOAPBoolean"], ["message", "SOAP::SOAPString"], ["trigger", "SOAP::SOAPString"], ["errors", "ApiError[]"]]

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

# {https://adwords.google.com/api/adwords/v7}ApiError
class ApiError
  @@schema_type = "ApiError"
  @@schema_ns = "https://adwords.google.com/api/adwords/v7"
  @@schema_element = [["index", "SOAP::SOAPInt"], ["field", "SOAP::SOAPString"], ["textIndex", "SOAP::SOAPInt"], ["textLength", "SOAP::SOAPInt"], ["trigger", "SOAP::SOAPString"], ["code", "SOAP::SOAPInt"], ["isExemptable", "SOAP::SOAPBoolean"], ["detail", "SOAP::SOAPString"]]

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

# {https://adwords.google.com/api/adwords/v7}CreditCardType
module CreditCardType
  AmericanExpress = "AmericanExpress"
  JCB = "JCB"
  MasterCard = "MasterCard"
  SOLO = "SOLO"
  Switch = "Switch"
  VISA = "VISA"
end

# {https://adwords.google.com/api/adwords/v7}TaxStatus
module TaxStatus
  Charity = "Charity"
  ExtraTerritorial = "ExtraTerritorial"
  Other = "Other"
  SubjectToTax = "SubjectToTax"
  ZeroRated = "ZeroRated"
end
end
