module AdWords
require 'xsd/qname'

# {https://adwords.google.com/api/adwords/v6}getOperationCount
class GetOperationCount
  @@schema_type = "getOperationCount"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_qualified = "true"
  @@schema_element = [
    ["startDate", "SOAP::SOAPDate"],
    ["endDate", "SOAP::SOAPDate"]
  ]

  attr_accessor :startDate
  attr_accessor :endDate

  def initialize(startDate = nil, endDate = nil)
    @startDate = startDate
    @endDate = endDate
  end
end

# {https://adwords.google.com/api/adwords/v6}getOperationCountResponse
class GetOperationCountResponse
  @@schema_type = "getOperationCountResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getOperationCountReturn", "SOAP::SOAPLong"]
  ]

  attr_accessor :getOperationCountReturn

  def initialize(getOperationCountReturn = nil)
    @getOperationCountReturn = getOperationCountReturn
  end
end

# {https://adwords.google.com/api/adwords/v6}getOperationsQuotaThisMonth
class GetOperationsQuotaThisMonth
  @@schema_type = "getOperationsQuotaThisMonth"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v6}getOperationsQuotaThisMonthResponse
class GetOperationsQuotaThisMonthResponse
  @@schema_type = "getOperationsQuotaThisMonthResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getOperationsQuotaThisMonthReturn", "SOAP::SOAPLong"]
  ]

  attr_accessor :getOperationsQuotaThisMonthReturn

  def initialize(getOperationsQuotaThisMonthReturn = nil)
    @getOperationsQuotaThisMonthReturn = getOperationsQuotaThisMonthReturn
  end
end

# {https://adwords.google.com/api/adwords/v6}getUsageQuotaThisMonth
class GetUsageQuotaThisMonth
  @@schema_type = "getUsageQuotaThisMonth"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v6}getUsageQuotaThisMonthResponse
class GetUsageQuotaThisMonthResponse
  @@schema_type = "getUsageQuotaThisMonthResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getUsageQuotaThisMonthReturn", "SOAP::SOAPLong"]
  ]

  attr_accessor :getUsageQuotaThisMonthReturn

  def initialize(getUsageQuotaThisMonthReturn = nil)
    @getUsageQuotaThisMonthReturn = getUsageQuotaThisMonthReturn
  end
end

# {https://adwords.google.com/api/adwords/v6}getFreeUsageQuotaThisMonth
class GetFreeUsageQuotaThisMonth
  @@schema_type = "getFreeUsageQuotaThisMonth"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v6}getFreeUsageQuotaThisMonthResponse
class GetFreeUsageQuotaThisMonthResponse
  @@schema_type = "getFreeUsageQuotaThisMonthResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getFreeUsageQuotaThisMonthReturn", "SOAP::SOAPLong"]
  ]

  attr_accessor :getFreeUsageQuotaThisMonthReturn

  def initialize(getFreeUsageQuotaThisMonthReturn = nil)
    @getFreeUsageQuotaThisMonthReturn = getFreeUsageQuotaThisMonthReturn
  end
end

# {https://adwords.google.com/api/adwords/v6}getMethodCost
class GetMethodCost
  @@schema_type = "getMethodCost"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_qualified = "true"
  @@schema_element = [
    ["service", "SOAP::SOAPString"],
    ["method", "SOAP::SOAPString"],
    ["date", "SOAP::SOAPDate"]
  ]

  attr_accessor :service
  attr_accessor :method
  attr_accessor :date

  def initialize(service = nil, method = nil, date = nil)
    @service = service
    @method = method
    @date = date
  end
end

# {https://adwords.google.com/api/adwords/v6}getMethodCostResponse
class GetMethodCostResponse
  @@schema_type = "getMethodCostResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getMethodCostReturn", "SOAP::SOAPInt"]
  ]

  attr_accessor :getMethodCostReturn

  def initialize(getMethodCostReturn = nil)
    @getMethodCostReturn = getMethodCostReturn
  end
end

# {https://adwords.google.com/api/adwords/v6}getUnitCount
class GetUnitCount
  @@schema_type = "getUnitCount"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_qualified = "true"
  @@schema_element = [
    ["startDate", "SOAP::SOAPDate"],
    ["endDate", "SOAP::SOAPDate"]
  ]

  attr_accessor :startDate
  attr_accessor :endDate

  def initialize(startDate = nil, endDate = nil)
    @startDate = startDate
    @endDate = endDate
  end
end

# {https://adwords.google.com/api/adwords/v6}getUnitCountResponse
class GetUnitCountResponse
  @@schema_type = "getUnitCountResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getUnitCountReturn", "SOAP::SOAPLong"]
  ]

  attr_accessor :getUnitCountReturn

  def initialize(getUnitCountReturn = nil)
    @getUnitCountReturn = getUnitCountReturn
  end
end

# {https://adwords.google.com/api/adwords/v6}getUnitCountForMethod
class GetUnitCountForMethod
  @@schema_type = "getUnitCountForMethod"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_qualified = "true"
  @@schema_element = [
    ["service", "SOAP::SOAPString"],
    ["method", "SOAP::SOAPString"],
    ["startDate", "SOAP::SOAPDate"],
    ["endDate", "SOAP::SOAPDate"]
  ]

  attr_accessor :service
  attr_accessor :method
  attr_accessor :startDate
  attr_accessor :endDate

  def initialize(service = nil, method = nil, startDate = nil, endDate = nil)
    @service = service
    @method = method
    @startDate = startDate
    @endDate = endDate
  end
end

# {https://adwords.google.com/api/adwords/v6}getUnitCountForMethodResponse
class GetUnitCountForMethodResponse
  @@schema_type = "getUnitCountForMethodResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_qualified = "true"
  @@schema_element = [
    ["getUnitCountForMethodReturn", "SOAP::SOAPLong"]
  ]

  attr_accessor :getUnitCountForMethodReturn

  def initialize(getUnitCountForMethodReturn = nil)
    @getUnitCountForMethodReturn = getUnitCountForMethodReturn
  end
end

# {https://adwords.google.com/api/adwords/v6}getUnitCountForClients
class GetUnitCountForClients
  @@schema_type = "getUnitCountForClients"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_qualified = "true"
  @@schema_element = [
    ["clientEmails", "SOAP::SOAPString[]"],
    ["startDate", "SOAP::SOAPDate"],
    ["endDate", "SOAP::SOAPDate"]
  ]

  attr_accessor :clientEmails
  attr_accessor :startDate
  attr_accessor :endDate

  def initialize(clientEmails = [], startDate = nil, endDate = nil)
    @clientEmails = clientEmails
    @startDate = startDate
    @endDate = endDate
  end
end

# {https://adwords.google.com/api/adwords/v6}getUnitCountForClientsResponse
class GetUnitCountForClientsResponse < ::Array
  @@schema_element = [
    ["getUnitCountForClientsReturn", ["ClientUsageRecord[]", XSD::QName.new("https://adwords.google.com/api/adwords/v6", "getUnitCountForClientsReturn")]]
  ]
end

# {https://adwords.google.com/api/adwords/v6}ApiException
class ApiException
  @@schema_type = "ApiException"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
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

# {https://adwords.google.com/api/adwords/v6}ApiError
class ApiError
  @@schema_type = "ApiError"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
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

# {https://adwords.google.com/api/adwords/v6}ClientUsageRecord
class ClientUsageRecord
  @@schema_type = "ClientUsageRecord"
  @@schema_ns = "https://adwords.google.com/api/adwords/v6"
  @@schema_element = [
    ["clientEmail", "SOAP::SOAPString"],
    ["quotaUnits", "SOAP::SOAPLong"]
  ]

  attr_accessor :clientEmail
  attr_accessor :quotaUnits

  def initialize(clientEmail = nil, quotaUnits = nil)
    @clientEmail = clientEmail
    @quotaUnits = quotaUnits
  end
end
end
