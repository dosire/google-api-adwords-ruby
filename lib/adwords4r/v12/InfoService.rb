require 'xsd/qname'

module AdWords; module InfoService


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
#   errors - AdWords::InfoService::ApiError
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

# {https://adwords.google.com/api/adwords/v12}ClientUsageRecord
#   clientEmail - SOAP::SOAPString
#   quotaUnits - SOAP::SOAPLong
class ClientUsageRecord
  attr_accessor :clientEmail
  attr_accessor :quotaUnits

  def initialize(clientEmail = nil, quotaUnits = nil)
    @clientEmail = clientEmail
    @quotaUnits = quotaUnits
  end
end

# {https://adwords.google.com/api/adwords/v12}getFreeUsageQuotaThisMonth
class GetFreeUsageQuotaThisMonth
  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v12}getFreeUsageQuotaThisMonthResponse
#   getFreeUsageQuotaThisMonthReturn - SOAP::SOAPLong
class GetFreeUsageQuotaThisMonthResponse
  attr_accessor :getFreeUsageQuotaThisMonthReturn

  def initialize(getFreeUsageQuotaThisMonthReturn = nil)
    @getFreeUsageQuotaThisMonthReturn = getFreeUsageQuotaThisMonthReturn
  end
end

# {https://adwords.google.com/api/adwords/v12}getMethodCost
#   service - SOAP::SOAPString
#   method - SOAP::SOAPString
#   date - SOAP::SOAPDate
class GetMethodCost
  attr_accessor :service
  attr_accessor :method
  attr_accessor :date

  def initialize(service = nil, method = nil, date = nil)
    @service = service
    @method = method
    @date = date
  end
end

# {https://adwords.google.com/api/adwords/v12}getMethodCostResponse
#   getMethodCostReturn - SOAP::SOAPInt
class GetMethodCostResponse
  attr_accessor :getMethodCostReturn

  def initialize(getMethodCostReturn = nil)
    @getMethodCostReturn = getMethodCostReturn
  end
end

# {https://adwords.google.com/api/adwords/v12}getOperationCount
#   startDate - SOAP::SOAPDate
#   endDate - SOAP::SOAPDate
class GetOperationCount
  attr_accessor :startDate
  attr_accessor :endDate

  def initialize(startDate = nil, endDate = nil)
    @startDate = startDate
    @endDate = endDate
  end
end

# {https://adwords.google.com/api/adwords/v12}getOperationCountResponse
#   getOperationCountReturn - SOAP::SOAPLong
class GetOperationCountResponse
  attr_accessor :getOperationCountReturn

  def initialize(getOperationCountReturn = nil)
    @getOperationCountReturn = getOperationCountReturn
  end
end

# {https://adwords.google.com/api/adwords/v12}getOperationsQuotaThisMonth
class GetOperationsQuotaThisMonth
  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v12}getOperationsQuotaThisMonthResponse
#   getOperationsQuotaThisMonthReturn - SOAP::SOAPLong
class GetOperationsQuotaThisMonthResponse
  attr_accessor :getOperationsQuotaThisMonthReturn

  def initialize(getOperationsQuotaThisMonthReturn = nil)
    @getOperationsQuotaThisMonthReturn = getOperationsQuotaThisMonthReturn
  end
end

# {https://adwords.google.com/api/adwords/v12}getUnitCount
#   startDate - SOAP::SOAPDate
#   endDate - SOAP::SOAPDate
class GetUnitCount
  attr_accessor :startDate
  attr_accessor :endDate

  def initialize(startDate = nil, endDate = nil)
    @startDate = startDate
    @endDate = endDate
  end
end

# {https://adwords.google.com/api/adwords/v12}getUnitCountForClients
#   clientEmails - SOAP::SOAPString
#   startDate - SOAP::SOAPDate
#   endDate - SOAP::SOAPDate
class GetUnitCountForClients
  attr_accessor :clientEmails
  attr_accessor :startDate
  attr_accessor :endDate

  def initialize(clientEmails = [], startDate = nil, endDate = nil)
    @clientEmails = clientEmails
    @startDate = startDate
    @endDate = endDate
  end
end

# {https://adwords.google.com/api/adwords/v12}getUnitCountForClientsResponse
class GetUnitCountForClientsResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v12}getUnitCountForMethod
#   service - SOAP::SOAPString
#   method - SOAP::SOAPString
#   startDate - SOAP::SOAPDate
#   endDate - SOAP::SOAPDate
class GetUnitCountForMethod
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

# {https://adwords.google.com/api/adwords/v12}getUnitCountForMethodResponse
#   getUnitCountForMethodReturn - SOAP::SOAPLong
class GetUnitCountForMethodResponse
  attr_accessor :getUnitCountForMethodReturn

  def initialize(getUnitCountForMethodReturn = nil)
    @getUnitCountForMethodReturn = getUnitCountForMethodReturn
  end
end

# {https://adwords.google.com/api/adwords/v12}getUnitCountResponse
#   getUnitCountReturn - SOAP::SOAPLong
class GetUnitCountResponse
  attr_accessor :getUnitCountReturn

  def initialize(getUnitCountReturn = nil)
    @getUnitCountReturn = getUnitCountReturn
  end
end

# {https://adwords.google.com/api/adwords/v12}getUsageQuotaThisMonth
class GetUsageQuotaThisMonth
  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v12}getUsageQuotaThisMonthResponse
#   getUsageQuotaThisMonthReturn - SOAP::SOAPLong
class GetUsageQuotaThisMonthResponse
  attr_accessor :getUsageQuotaThisMonthReturn

  def initialize(getUsageQuotaThisMonthReturn = nil)
    @getUsageQuotaThisMonthReturn = getUsageQuotaThisMonthReturn
  end
end


end; end
