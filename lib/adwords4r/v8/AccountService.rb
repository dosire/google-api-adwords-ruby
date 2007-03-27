module AdWords
require 'xsd/qname'

# {https://adwords.google.com/api/adwords/v8}getAccountInfo
class GetAccountInfo
  @@schema_type = "getAccountInfo"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v8}getAccountInfoResponse
class GetAccountInfoResponse
  @@schema_type = "getAccountInfoResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["getAccountInfoReturn", "AccountInfo"]]

  attr_accessor :getAccountInfoReturn

  def initialize(getAccountInfoReturn = nil)
    @getAccountInfoReturn = getAccountInfoReturn
  end
end

# {https://adwords.google.com/api/adwords/v8}getClientAccounts
class GetClientAccounts
  @@schema_type = "getClientAccounts"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v8}getClientAccountsResponse
class GetClientAccountsResponse
  @@schema_type = "getClientAccountsResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["getClientAccountsReturn", "SOAP::SOAPString[]"]]

  attr_accessor :getClientAccountsReturn

  def initialize(getClientAccountsReturn = [])
    @getClientAccountsReturn = getClientAccountsReturn
  end
end

# {https://adwords.google.com/api/adwords/v8}setLoginInfo
class SetLoginInfo
  @@schema_type = "setLoginInfo"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["login", "SOAP::SOAPString"], ["newPassword", "SOAP::SOAPString"]]

  attr_accessor :login
  attr_accessor :newPassword

  def initialize(login = nil, newPassword = nil)
    @login = login
    @newPassword = newPassword
  end
end

# {https://adwords.google.com/api/adwords/v8}setLoginInfoResponse
class SetLoginInfoResponse
  @@schema_type = "setLoginInfoResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v8}updateAccountInfo
class UpdateAccountInfo
  @@schema_type = "updateAccountInfo"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = [["accountInfo", "AccountInfo"]]

  attr_accessor :accountInfo

  def initialize(accountInfo = nil)
    @accountInfo = accountInfo
  end
end

# {https://adwords.google.com/api/adwords/v8}updateAccountInfoResponse
class UpdateAccountInfoResponse
  @@schema_type = "updateAccountInfoResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v8}AccountInfo
class AccountInfo
  @@schema_type = "AccountInfo"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = [["billingAddress", "Address"], ["currencyCode", "SOAP::SOAPString"], ["customerId", "SOAP::SOAPLong"], ["defaultAdsCoverage", "CoverageType"], ["descriptiveName", "SOAP::SOAPString"], ["emailPromotionsPreferences", "EmailPromotionsPreferences"], ["languagePreference", "SOAP::SOAPString"], ["primaryAddress", "Address"], ["primaryBusinessCategory", "SOAP::SOAPString"], ["termsAndConditions", "SOAP::SOAPString"], ["timeZoneEffectiveDate", "SOAP::SOAPLong"], ["timeZoneId", "SOAP::SOAPString"]]

  attr_accessor :billingAddress
  attr_accessor :currencyCode
  attr_accessor :customerId
  attr_accessor :defaultAdsCoverage
  attr_accessor :descriptiveName
  attr_accessor :emailPromotionsPreferences
  attr_accessor :languagePreference
  attr_accessor :primaryAddress
  attr_accessor :primaryBusinessCategory
  attr_accessor :termsAndConditions
  attr_accessor :timeZoneEffectiveDate
  attr_accessor :timeZoneId

  def initialize(billingAddress = nil, currencyCode = nil, customerId = nil, defaultAdsCoverage = nil, descriptiveName = nil, emailPromotionsPreferences = nil, languagePreference = nil, primaryAddress = nil, primaryBusinessCategory = nil, termsAndConditions = nil, timeZoneEffectiveDate = nil, timeZoneId = nil)
    @billingAddress = billingAddress
    @currencyCode = currencyCode
    @customerId = customerId
    @defaultAdsCoverage = defaultAdsCoverage
    @descriptiveName = descriptiveName
    @emailPromotionsPreferences = emailPromotionsPreferences
    @languagePreference = languagePreference
    @primaryAddress = primaryAddress
    @primaryBusinessCategory = primaryBusinessCategory
    @termsAndConditions = termsAndConditions
    @timeZoneEffectiveDate = timeZoneEffectiveDate
    @timeZoneId = timeZoneId
  end
end

# {https://adwords.google.com/api/adwords/v8}Address
class Address
  @@schema_type = "Address"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = [["addressLine1", "SOAP::SOAPString"], ["addressLine2", "SOAP::SOAPString"], ["city", "SOAP::SOAPString"], ["companyName", "SOAP::SOAPString"], ["countryCode", "SOAP::SOAPString"], ["emailAddress", "SOAP::SOAPString"], ["faxNumber", "SOAP::SOAPString"], ["name", "SOAP::SOAPString"], ["phoneNumber", "SOAP::SOAPString"], ["postalCode", "SOAP::SOAPString"], ["state", "SOAP::SOAPString"]]

  attr_accessor :addressLine1
  attr_accessor :addressLine2
  attr_accessor :city
  attr_accessor :companyName
  attr_accessor :countryCode
  attr_accessor :emailAddress
  attr_accessor :faxNumber
  attr_accessor :name
  attr_accessor :phoneNumber
  attr_accessor :postalCode
  attr_accessor :state

  def initialize(addressLine1 = nil, addressLine2 = nil, city = nil, companyName = nil, countryCode = nil, emailAddress = nil, faxNumber = nil, name = nil, phoneNumber = nil, postalCode = nil, state = nil)
    @addressLine1 = addressLine1
    @addressLine2 = addressLine2
    @city = city
    @companyName = companyName
    @countryCode = countryCode
    @emailAddress = emailAddress
    @faxNumber = faxNumber
    @name = name
    @phoneNumber = phoneNumber
    @postalCode = postalCode
    @state = state
  end
end

# {https://adwords.google.com/api/adwords/v8}ApiError
class ApiError
  @@schema_type = "ApiError"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = [["code", "SOAP::SOAPInt"], ["detail", "SOAP::SOAPString"], ["field", "SOAP::SOAPString"], ["index", "SOAP::SOAPInt"], ["isExemptable", "SOAP::SOAPBoolean"], ["textIndex", "SOAP::SOAPInt"], ["textLength", "SOAP::SOAPInt"], ["trigger", "SOAP::SOAPString"]]

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

# {https://adwords.google.com/api/adwords/v8}ApiException
class ApiException
  @@schema_type = "ApiException"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = [["code", "SOAP::SOAPInt"], ["errors", "ApiError[]"], ["internal", "SOAP::SOAPBoolean"], ["message", "SOAP::SOAPString"], ["trigger", "SOAP::SOAPString"]]

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

# {https://adwords.google.com/api/adwords/v8}CoverageType
class CoverageType
  @@schema_type = "CoverageType"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
  @@schema_element = [["optInContentNetwork", "SOAP::SOAPBoolean"], ["optInSearchNetwork", "SOAP::SOAPBoolean"]]

  attr_accessor :optInContentNetwork
  attr_accessor :optInSearchNetwork

  def initialize(optInContentNetwork = nil, optInSearchNetwork = nil)
    @optInContentNetwork = optInContentNetwork
    @optInSearchNetwork = optInSearchNetwork
  end
end

# {https://adwords.google.com/api/adwords/v8}EmailPromotionsPreferences
class EmailPromotionsPreferences
  @@schema_type = "EmailPromotionsPreferences"
  @@schema_ns = "https://adwords.google.com/api/adwords/v8"
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
end
