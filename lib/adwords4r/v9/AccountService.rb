module AdWords
require 'xsd/qname'

# {https://adwords.google.com/api/adwords/v9}getAccountInfo
class GetAccountInfo
  @@schema_type = "getAccountInfo"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v9}getAccountInfoResponse
class GetAccountInfoResponse
  @@schema_type = "getAccountInfoResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["getAccountInfoReturn", "AccountInfo"]]

  attr_accessor :getAccountInfoReturn

  def initialize(getAccountInfoReturn = nil)
    @getAccountInfoReturn = getAccountInfoReturn
  end
end

# {https://adwords.google.com/api/adwords/v9}getClientAccounts
class GetClientAccounts
  @@schema_type = "getClientAccounts"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v9}getClientAccountsResponse
class GetClientAccountsResponse
  @@schema_type = "getClientAccountsResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["getClientAccountsReturn", "SOAP::SOAPString[]"]]

  attr_accessor :getClientAccountsReturn

  def initialize(getClientAccountsReturn = [])
    @getClientAccountsReturn = getClientAccountsReturn
  end
end

# {https://adwords.google.com/api/adwords/v9}setLoginInfo
class SetLoginInfo
  @@schema_type = "setLoginInfo"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["login", "SOAP::SOAPString"], ["newPassword", "SOAP::SOAPString"]]

  attr_accessor :login
  attr_accessor :newPassword

  def initialize(login = nil, newPassword = nil)
    @login = login
    @newPassword = newPassword
  end
end

# {https://adwords.google.com/api/adwords/v9}setLoginInfoResponse
class SetLoginInfoResponse
  @@schema_type = "setLoginInfoResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v9}updateAccountInfo
class UpdateAccountInfo
  @@schema_type = "updateAccountInfo"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["accountInfo", "AccountInfo"]]

  attr_accessor :accountInfo

  def initialize(accountInfo = nil)
    @accountInfo = accountInfo
  end
end

# {https://adwords.google.com/api/adwords/v9}updateAccountInfoResponse
class UpdateAccountInfoResponse
  @@schema_type = "updateAccountInfoResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v9}AccountInfo
class AccountInfo
  @@schema_type = "AccountInfo"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_element = [["billingAddress", "Address"], ["currencyCode", "SOAP::SOAPString"], ["customerId", "SOAP::SOAPLong"], ["defaultNetworkTargeting", "NetworkTarget"], ["descriptiveName", "SOAP::SOAPString"], ["emailPromotionsPreferences", "EmailPromotionsPreferences"], ["languagePreference", "SOAP::SOAPString"], ["primaryAddress", "Address"], ["primaryBusinessCategory", "SOAP::SOAPString"], ["timeZoneEffectiveDate", "SOAP::SOAPLong"], ["timeZoneId", "SOAP::SOAPString"]]

  attr_accessor :billingAddress
  attr_accessor :currencyCode
  attr_accessor :customerId
  attr_accessor :defaultNetworkTargeting
  attr_accessor :descriptiveName
  attr_accessor :emailPromotionsPreferences
  attr_accessor :languagePreference
  attr_accessor :primaryAddress
  attr_accessor :primaryBusinessCategory
  attr_accessor :timeZoneEffectiveDate
  attr_accessor :timeZoneId

  def initialize(billingAddress = nil, currencyCode = nil, customerId = nil, defaultNetworkTargeting = nil, descriptiveName = nil, emailPromotionsPreferences = nil, languagePreference = nil, primaryAddress = nil, primaryBusinessCategory = nil, timeZoneEffectiveDate = nil, timeZoneId = nil)
    @billingAddress = billingAddress
    @currencyCode = currencyCode
    @customerId = customerId
    @defaultNetworkTargeting = defaultNetworkTargeting
    @descriptiveName = descriptiveName
    @emailPromotionsPreferences = emailPromotionsPreferences
    @languagePreference = languagePreference
    @primaryAddress = primaryAddress
    @primaryBusinessCategory = primaryBusinessCategory
    @timeZoneEffectiveDate = timeZoneEffectiveDate
    @timeZoneId = timeZoneId
  end
end

# {https://adwords.google.com/api/adwords/v9}Address
class Address
  @@schema_type = "Address"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
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

# {https://adwords.google.com/api/adwords/v9}ApiError
class ApiError
  @@schema_type = "ApiError"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
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

# {https://adwords.google.com/api/adwords/v9}ApiException
class ApiException
  @@schema_type = "ApiException"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
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

# {https://adwords.google.com/api/adwords/v9}EmailPromotionsPreferences
class EmailPromotionsPreferences
  @@schema_type = "EmailPromotionsPreferences"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_element = [["accountPerformanceEnabled", "SOAP::SOAPBoolean"], ["disapprovedAdsEnabled", "SOAP::SOAPBoolean"], ["marketResearchEnabled", "SOAP::SOAPBoolean"], ["newsletterEnabled", "SOAP::SOAPBoolean"], ["promotionsEnabled", "SOAP::SOAPBoolean"]]

  attr_accessor :accountPerformanceEnabled
  attr_accessor :disapprovedAdsEnabled
  attr_accessor :marketResearchEnabled
  attr_accessor :newsletterEnabled
  attr_accessor :promotionsEnabled

  def initialize(accountPerformanceEnabled = nil, disapprovedAdsEnabled = nil, marketResearchEnabled = nil, newsletterEnabled = nil, promotionsEnabled = nil)
    @accountPerformanceEnabled = accountPerformanceEnabled
    @disapprovedAdsEnabled = disapprovedAdsEnabled
    @marketResearchEnabled = marketResearchEnabled
    @newsletterEnabled = newsletterEnabled
    @promotionsEnabled = promotionsEnabled
  end
end

# {https://adwords.google.com/api/adwords/v9}NetworkTarget
class NetworkTarget < ::Array
  @@schema_type = "NetworkType"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_element = [["networkTypes", ["SOAP::SOAPString[]", XSD::QName.new("https://adwords.google.com/api/adwords/v9", "networkTypes")]]]
end

# {https://adwords.google.com/api/adwords/v9}NetworkType
module NetworkType
  ContentNetwork = "ContentNetwork"
  GoogleSearch = "GoogleSearch"
  SearchNetwork = "SearchNetwork"
end
end
