require 'xsd/qname'

module AdWords; module V13; module InfoService


# ApiError
# - code - SOAP::SOAPInt
# - detail - SOAP::SOAPString
# - field - SOAP::SOAPString
# - index - SOAP::SOAPInt
# - isExemptable - SOAP::SOAPBoolean
# - textIndex - SOAP::SOAPInt
# - textLength - SOAP::SOAPInt
# - trigger - SOAP::SOAPString
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

# ApiException
# - code - SOAP::SOAPInt
# - errors - AdWords::V13::InfoService::ApiError
# - internal - SOAP::SOAPBoolean
# - message - SOAP::SOAPString
# - trigger - SOAP::SOAPString
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

# ClientUsageRecord
# - clientEmail - SOAP::SOAPString
# - quotaUnits - SOAP::SOAPLong
class ClientUsageRecord
  attr_accessor :clientEmail
  attr_accessor :quotaUnits

  def initialize(clientEmail = nil, quotaUnits = nil)
    @clientEmail = clientEmail
    @quotaUnits = quotaUnits
  end
end

# getFreeUsageQuotaThisMonth
class GetFreeUsageQuotaThisMonth #:nodoc: all
  def initialize
  end
end

# getFreeUsageQuotaThisMonthResponse
# - getFreeUsageQuotaThisMonthReturn - SOAP::SOAPLong
class GetFreeUsageQuotaThisMonthResponse #:nodoc: all
  attr_accessor :getFreeUsageQuotaThisMonthReturn

  def initialize(getFreeUsageQuotaThisMonthReturn = nil)
    @getFreeUsageQuotaThisMonthReturn = getFreeUsageQuotaThisMonthReturn
  end
end

# getMethodCost
# - service - SOAP::SOAPString
# - method - SOAP::SOAPString
# - date - SOAP::SOAPDate
class GetMethodCost #:nodoc: all
  attr_accessor :service
  attr_accessor :method
  attr_accessor :date

  def initialize(service = nil, method = nil, date = nil)
    @service = service
    @method = method
    @date = date
  end
end

# getMethodCostResponse
# - getMethodCostReturn - SOAP::SOAPInt
class GetMethodCostResponse #:nodoc: all
  attr_accessor :getMethodCostReturn

  def initialize(getMethodCostReturn = nil)
    @getMethodCostReturn = getMethodCostReturn
  end
end

# getOperationCount
# - startDate - SOAP::SOAPDate
# - endDate - SOAP::SOAPDate
class GetOperationCount #:nodoc: all
  attr_accessor :startDate
  attr_accessor :endDate

  def initialize(startDate = nil, endDate = nil)
    @startDate = startDate
    @endDate = endDate
  end
end

# getOperationCountResponse
# - getOperationCountReturn - SOAP::SOAPLong
class GetOperationCountResponse #:nodoc: all
  attr_accessor :getOperationCountReturn

  def initialize(getOperationCountReturn = nil)
    @getOperationCountReturn = getOperationCountReturn
  end
end

# getOperationsQuotaThisMonth
class GetOperationsQuotaThisMonth #:nodoc: all
  def initialize
  end
end

# getOperationsQuotaThisMonthResponse
# - getOperationsQuotaThisMonthReturn - SOAP::SOAPLong
class GetOperationsQuotaThisMonthResponse #:nodoc: all
  attr_accessor :getOperationsQuotaThisMonthReturn

  def initialize(getOperationsQuotaThisMonthReturn = nil)
    @getOperationsQuotaThisMonthReturn = getOperationsQuotaThisMonthReturn
  end
end

# getUnitCount
# - startDate - SOAP::SOAPDate
# - endDate - SOAP::SOAPDate
class GetUnitCount #:nodoc: all
  attr_accessor :startDate
  attr_accessor :endDate

  def initialize(startDate = nil, endDate = nil)
    @startDate = startDate
    @endDate = endDate
  end
end

# getUnitCountForClients
# - clientEmails - SOAP::SOAPString
# - startDate - SOAP::SOAPDate
# - endDate - SOAP::SOAPDate
class GetUnitCountForClients #:nodoc: all
  attr_accessor :clientEmails
  attr_accessor :startDate
  attr_accessor :endDate

  def initialize(clientEmails = [], startDate = nil, endDate = nil)
    @clientEmails = clientEmails
    @startDate = startDate
    @endDate = endDate
  end
end

# getUnitCountForClientsResponse
class GetUnitCountForClientsResponse < ::Array #:nodoc: all
end

# getUnitCountForMethod
# - service - SOAP::SOAPString
# - method - SOAP::SOAPString
# - startDate - SOAP::SOAPDate
# - endDate - SOAP::SOAPDate
class GetUnitCountForMethod #:nodoc: all
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

# getUnitCountForMethodResponse
# - getUnitCountForMethodReturn - SOAP::SOAPLong
class GetUnitCountForMethodResponse #:nodoc: all
  attr_accessor :getUnitCountForMethodReturn

  def initialize(getUnitCountForMethodReturn = nil)
    @getUnitCountForMethodReturn = getUnitCountForMethodReturn
  end
end

# getUnitCountResponse
# - getUnitCountReturn - SOAP::SOAPLong
class GetUnitCountResponse #:nodoc: all
  attr_accessor :getUnitCountReturn

  def initialize(getUnitCountReturn = nil)
    @getUnitCountReturn = getUnitCountReturn
  end
end

# getUsageQuotaThisMonth
class GetUsageQuotaThisMonth #:nodoc: all
  def initialize
  end
end

# getUsageQuotaThisMonthResponse
# - getUsageQuotaThisMonthReturn - SOAP::SOAPLong
class GetUsageQuotaThisMonthResponse #:nodoc: all
  attr_accessor :getUsageQuotaThisMonthReturn

  def initialize(getUsageQuotaThisMonthReturn = nil)
    @getUsageQuotaThisMonthReturn = getUsageQuotaThisMonthReturn
  end
end


end; end; end
