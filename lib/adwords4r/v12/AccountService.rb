require 'xsd/qname'

module AdWords; module AccountService


# {https://adwords.google.com/api/adwords/v12}AccountInfo
#   billingAddress - AdWords::AccountService::Address
#   currencyCode - SOAP::SOAPString
#   customerId - SOAP::SOAPLong
#   defaultNetworkTargeting - AdWords::AccountService::NetworkTarget
#   descriptiveName - SOAP::SOAPString
#   emailPromotionsPreferences - AdWords::AccountService::EmailPromotionsPreferences
#   languagePreference - SOAP::SOAPString
#   primaryAddress - AdWords::AccountService::Address
#   primaryBusinessCategory - SOAP::SOAPString
#   timeZoneEffectiveDate - SOAP::SOAPLong
#   timeZoneId - SOAP::SOAPString
class AccountInfo
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

# {https://adwords.google.com/api/adwords/v12}Address
#   addressLine1 - SOAP::SOAPString
#   addressLine2 - SOAP::SOAPString
#   city - SOAP::SOAPString
#   companyName - SOAP::SOAPString
#   countryCode - SOAP::SOAPString
#   emailAddress - SOAP::SOAPString
#   faxNumber - SOAP::SOAPString
#   name - SOAP::SOAPString
#   phoneNumber - SOAP::SOAPString
#   postalCode - SOAP::SOAPString
#   state - SOAP::SOAPString
class Address
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

# {https://adwords.google.com/api/adwords/v12}ApiError
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

# {https://adwords.google.com/api/adwords/v12}ApiException
#   code - SOAP::SOAPInt
#   errors - AdWords::AccountService::ApiError
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

# {https://adwords.google.com/api/adwords/v12}EmailPromotionsPreferences
#   accountPerformanceEnabled - SOAP::SOAPBoolean
#   disapprovedAdsEnabled - SOAP::SOAPBoolean
#   marketResearchEnabled - SOAP::SOAPBoolean
#   newsletterEnabled - SOAP::SOAPBoolean
#   promotionsEnabled - SOAP::SOAPBoolean
class EmailPromotionsPreferences
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

# {https://adwords.google.com/api/adwords/v12}NetworkTarget
class NetworkTarget < ::Array
end

# {https://adwords.google.com/api/adwords/v12}NetworkType
class NetworkType < ::String
  ContentNetwork = NetworkType.new("ContentNetwork")
  GoogleSearch = NetworkType.new("GoogleSearch")
  SearchNetwork = NetworkType.new("SearchNetwork")
end

# {https://adwords.google.com/api/adwords/v12}getAccountInfo
class GetAccountInfo
  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v12}getAccountInfoResponse
#   getAccountInfoReturn - AdWords::AccountService::AccountInfo
class GetAccountInfoResponse
  attr_accessor :getAccountInfoReturn

  def initialize(getAccountInfoReturn = nil)
    @getAccountInfoReturn = getAccountInfoReturn
  end
end

# {https://adwords.google.com/api/adwords/v12}getClientAccounts
class GetClientAccounts
  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v12}getClientAccountsResponse
class GetClientAccountsResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v12}updateAccountInfo
#   accountInfo - AdWords::AccountService::AccountInfo
class UpdateAccountInfo
  attr_accessor :accountInfo

  def initialize(accountInfo = nil)
    @accountInfo = accountInfo
  end
end

# {https://adwords.google.com/api/adwords/v12}updateAccountInfoResponse
class UpdateAccountInfoResponse
  def initialize
  end
end


end; end
