module AdWords
require 'xsd/qname'

# {https://adwords.google.com/api/adwords/v9}getFreeUsageQuotaThisMonth
class GetFreeUsageQuotaThisMonth
  @@schema_type = "getFreeUsageQuotaThisMonth"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v9}getFreeUsageQuotaThisMonthResponse
class GetFreeUsageQuotaThisMonthResponse
  @@schema_type = "getFreeUsageQuotaThisMonthResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["getFreeUsageQuotaThisMonthReturn", "SOAP::SOAPLong"]]

  attr_accessor :getFreeUsageQuotaThisMonthReturn

  def initialize(getFreeUsageQuotaThisMonthReturn = nil)
    @getFreeUsageQuotaThisMonthReturn = getFreeUsageQuotaThisMonthReturn
  end
end

# {https://adwords.google.com/api/adwords/v9}getMethodCost
class GetMethodCost
  @@schema_type = "getMethodCost"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["service", "SOAP::SOAPString"], ["method", "SOAP::SOAPString"], ["date", "SOAP::SOAPDate"]]

  attr_accessor :service
  attr_accessor :method
  attr_accessor :date

  def initialize(service = nil, method = nil, date = nil)
    @service = service
    @method = method
    @date = date
  end
end

# {https://adwords.google.com/api/adwords/v9}getMethodCostResponse
class GetMethodCostResponse
  @@schema_type = "getMethodCostResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["getMethodCostReturn", "SOAP::SOAPInt"]]

  attr_accessor :getMethodCostReturn

  def initialize(getMethodCostReturn = nil)
    @getMethodCostReturn = getMethodCostReturn
  end
end

# {https://adwords.google.com/api/adwords/v9}getOperationCount
class GetOperationCount
  @@schema_type = "getOperationCount"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["startDate", "SOAP::SOAPDate"], ["endDate", "SOAP::SOAPDate"]]

  attr_accessor :startDate
  attr_accessor :endDate

  def initialize(startDate = nil, endDate = nil)
    @startDate = startDate
    @endDate = endDate
  end
end

# {https://adwords.google.com/api/adwords/v9}getOperationCountResponse
class GetOperationCountResponse
  @@schema_type = "getOperationCountResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["getOperationCountReturn", "SOAP::SOAPLong"]]

  attr_accessor :getOperationCountReturn

  def initialize(getOperationCountReturn = nil)
    @getOperationCountReturn = getOperationCountReturn
  end
end

# {https://adwords.google.com/api/adwords/v9}getOperationsQuotaThisMonth
class GetOperationsQuotaThisMonth
  @@schema_type = "getOperationsQuotaThisMonth"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v9}getOperationsQuotaThisMonthResponse
class GetOperationsQuotaThisMonthResponse
  @@schema_type = "getOperationsQuotaThisMonthResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["getOperationsQuotaThisMonthReturn", "SOAP::SOAPLong"]]

  attr_accessor :getOperationsQuotaThisMonthReturn

  def initialize(getOperationsQuotaThisMonthReturn = nil)
    @getOperationsQuotaThisMonthReturn = getOperationsQuotaThisMonthReturn
  end
end

# {https://adwords.google.com/api/adwords/v9}getUnitCount
class GetUnitCount
  @@schema_type = "getUnitCount"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["startDate", "SOAP::SOAPDate"], ["endDate", "SOAP::SOAPDate"]]

  attr_accessor :startDate
  attr_accessor :endDate

  def initialize(startDate = nil, endDate = nil)
    @startDate = startDate
    @endDate = endDate
  end
end

# {https://adwords.google.com/api/adwords/v9}getUnitCountForClients
class GetUnitCountForClients
  @@schema_type = "getUnitCountForClients"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["clientEmails", "SOAP::SOAPString[]"], ["startDate", "SOAP::SOAPDate"], ["endDate", "SOAP::SOAPDate"]]

  attr_accessor :clientEmails
  attr_accessor :startDate
  attr_accessor :endDate

  def initialize(clientEmails = [], startDate = nil, endDate = nil)
    @clientEmails = clientEmails
    @startDate = startDate
    @endDate = endDate
  end
end

# {https://adwords.google.com/api/adwords/v9}getUnitCountForClientsResponse
class GetUnitCountForClientsResponse
  @@schema_type = "getUnitCountForClientsResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["getUnitCountForClientsReturn", "ClientUsageRecord[]"]]

  attr_accessor :getUnitCountForClientsReturn

  def initialize(getUnitCountForClientsReturn = [])
    @getUnitCountForClientsReturn = getUnitCountForClientsReturn
  end
end

# {https://adwords.google.com/api/adwords/v9}getUnitCountForMethod
class GetUnitCountForMethod
  @@schema_type = "getUnitCountForMethod"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["service", "SOAP::SOAPString"], ["method", "SOAP::SOAPString"], ["startDate", "SOAP::SOAPDate"], ["endDate", "SOAP::SOAPDate"]]

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

# {https://adwords.google.com/api/adwords/v9}getUnitCountForMethodResponse
class GetUnitCountForMethodResponse
  @@schema_type = "getUnitCountForMethodResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["getUnitCountForMethodReturn", "SOAP::SOAPLong"]]

  attr_accessor :getUnitCountForMethodReturn

  def initialize(getUnitCountForMethodReturn = nil)
    @getUnitCountForMethodReturn = getUnitCountForMethodReturn
  end
end

# {https://adwords.google.com/api/adwords/v9}getUnitCountResponse
class GetUnitCountResponse
  @@schema_type = "getUnitCountResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["getUnitCountReturn", "SOAP::SOAPLong"]]

  attr_accessor :getUnitCountReturn

  def initialize(getUnitCountReturn = nil)
    @getUnitCountReturn = getUnitCountReturn
  end
end

# {https://adwords.google.com/api/adwords/v9}getUsageQuotaThisMonth
class GetUsageQuotaThisMonth
  @@schema_type = "getUsageQuotaThisMonth"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = []

  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v9}getUsageQuotaThisMonthResponse
class GetUsageQuotaThisMonthResponse
  @@schema_type = "getUsageQuotaThisMonthResponse"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_qualified = "true"
  @@schema_element = [["getUsageQuotaThisMonthReturn", "SOAP::SOAPLong"]]

  attr_accessor :getUsageQuotaThisMonthReturn

  def initialize(getUsageQuotaThisMonthReturn = nil)
    @getUsageQuotaThisMonthReturn = getUsageQuotaThisMonthReturn
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

# {https://adwords.google.com/api/adwords/v9}ClientUsageRecord
class ClientUsageRecord
  @@schema_type = "ClientUsageRecord"
  @@schema_ns = "https://adwords.google.com/api/adwords/v9"
  @@schema_element = [["clientEmail", "SOAP::SOAPString"], ["quotaUnits", "SOAP::SOAPLong"]]

  attr_accessor :clientEmail
  attr_accessor :quotaUnits

  def initialize(clientEmail = nil, quotaUnits = nil)
    @clientEmail = clientEmail
    @quotaUnits = quotaUnits
  end
end
end
