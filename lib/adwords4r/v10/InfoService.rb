require 'xsd/qname'

module AdWords; module InfoService


# {https://adwords.google.com/api/adwords/v10}ApiError
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

# {https://adwords.google.com/api/adwords/v10}ApiException
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

# {https://adwords.google.com/api/adwords/v10}ClientUsageRecord
class ClientUsageRecord
  attr_accessor :clientEmail
  attr_accessor :quotaUnits

  def initialize(clientEmail = nil, quotaUnits = nil)
    @clientEmail = clientEmail
    @quotaUnits = quotaUnits
  end
end

# {https://adwords.google.com/api/adwords/v10}getFreeUsageQuotaThisMonth
class GetFreeUsageQuotaThisMonth
  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v10}getFreeUsageQuotaThisMonthResponse
class GetFreeUsageQuotaThisMonthResponse
  attr_accessor :getFreeUsageQuotaThisMonthReturn

  def initialize(getFreeUsageQuotaThisMonthReturn = nil)
    @getFreeUsageQuotaThisMonthReturn = getFreeUsageQuotaThisMonthReturn
  end
end

# {https://adwords.google.com/api/adwords/v10}getMethodCost
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

# {https://adwords.google.com/api/adwords/v10}getMethodCostResponse
class GetMethodCostResponse
  attr_accessor :getMethodCostReturn

  def initialize(getMethodCostReturn = nil)
    @getMethodCostReturn = getMethodCostReturn
  end
end

# {https://adwords.google.com/api/adwords/v10}getOperationCount
class GetOperationCount
  attr_accessor :startDate
  attr_accessor :endDate

  def initialize(startDate = nil, endDate = nil)
    @startDate = startDate
    @endDate = endDate
  end
end

# {https://adwords.google.com/api/adwords/v10}getOperationCountResponse
class GetOperationCountResponse
  attr_accessor :getOperationCountReturn

  def initialize(getOperationCountReturn = nil)
    @getOperationCountReturn = getOperationCountReturn
  end
end

# {https://adwords.google.com/api/adwords/v10}getOperationsQuotaThisMonth
class GetOperationsQuotaThisMonth
  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v10}getOperationsQuotaThisMonthResponse
class GetOperationsQuotaThisMonthResponse
  attr_accessor :getOperationsQuotaThisMonthReturn

  def initialize(getOperationsQuotaThisMonthReturn = nil)
    @getOperationsQuotaThisMonthReturn = getOperationsQuotaThisMonthReturn
  end
end

# {https://adwords.google.com/api/adwords/v10}getUnitCount
class GetUnitCount
  attr_accessor :startDate
  attr_accessor :endDate

  def initialize(startDate = nil, endDate = nil)
    @startDate = startDate
    @endDate = endDate
  end
end

# {https://adwords.google.com/api/adwords/v10}getUnitCountForClients
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

# {https://adwords.google.com/api/adwords/v10}getUnitCountForClientsResponse
class GetUnitCountForClientsResponse < ::Array
end

# {https://adwords.google.com/api/adwords/v10}getUnitCountForMethod
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

# {https://adwords.google.com/api/adwords/v10}getUnitCountForMethodResponse
class GetUnitCountForMethodResponse
  attr_accessor :getUnitCountForMethodReturn

  def initialize(getUnitCountForMethodReturn = nil)
    @getUnitCountForMethodReturn = getUnitCountForMethodReturn
  end
end

# {https://adwords.google.com/api/adwords/v10}getUnitCountResponse
class GetUnitCountResponse
  attr_accessor :getUnitCountReturn

  def initialize(getUnitCountReturn = nil)
    @getUnitCountReturn = getUnitCountReturn
  end
end

# {https://adwords.google.com/api/adwords/v10}getUsageQuotaThisMonth
class GetUsageQuotaThisMonth
  def initialize
  end
end

# {https://adwords.google.com/api/adwords/v10}getUsageQuotaThisMonthResponse
class GetUsageQuotaThisMonthResponse
  attr_accessor :getUsageQuotaThisMonthReturn

  def initialize(getUsageQuotaThisMonthReturn = nil)
    @getUsageQuotaThisMonthReturn = getUsageQuotaThisMonthReturn
  end
end


end; end
