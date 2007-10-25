require 'rubygems'
begin
  gem 'soap4r'
rescue
  require_gem 'soap4r'
end
require 'soap/soap'
require 'soap/mapping'
require 'adwords4r/credentials'
require 'adwords4r/services'

# Fix an issue with SOAPDate. Google complains if the dates have any timezone
# info in them. There are probably better ways to fix this.
module SOAP
  class SOAPDate
    def of2tz(offset)
      diffmin = offset * 24 * 60
      if diffmin.zero?
        ''
      else
        ((diffmin < 0) ? '-' : '+') << format('%02d:%02d',
          (diffmin.abs / 60.0).to_i, (diffmin.abs % 60.0).to_i)
      end
    end
  end
end

module AdWords

  class API
    attr_reader :credentials, :drivers, :version
    @methodMap = Hash.new

    def initialize(credentials = AdWordsCredentials.new, version = Service.getVersions.sort.last)
      @credentials, @version = credentials, version
      @drivers = Hash.new
      prepareDrivers
    end

    def method_missing(m, *args)
      methodName = m.id2name
      requestName = AdWords::fix_case_up(m.id2name) # upper first character
      if valid_call?(methodName)
        driver = getDriver(methodName)
        moduleName = driver.class.name.split("::")[0..-2].join("::")
        constructor = eval("#{moduleName}::#{requestName}.method('new')")
        req = constructor.call(*args)
        return driver.send(methodName, req)
      else
        raise(Error::UnknownAPICall, "Unknown API Call: #{requestName}", caller)
      end
      # Handle AdWords Application-level error
    rescue SOAP::FaultError => fault
      raise(Error::ApiError.new(fault), "#{methodName} Call Failed: #{fault.faultstring.to_s}", caller)
    end

    def prepareDrivers()
      Service.doRequire(@version)
      Service.getServices(@version).each {|s| @drivers[s] = prepareDriver(s)}
      @methodMap = Service.getMethodMap(@drivers)
    end

    #pass in call name, get the driver back
    def getDriver(call)
      return @methodMap[call]
    end

    def prepareDriver(s)
      # Include the module for this service
      AdWords.class_eval("include #{s}Service")

      #set alternateurl if it has been set in credentials
      if (@credentials.alternateUrl) then
        endpointUrl = @credentials.alternateUrl + s + 'Service'
        driver = eval("AdWords::#{getServiceName(s)}.new(\"#{endpointUrl}\")")
      elsif
        driver = eval("AdWords::#{getServiceName(s)}.new")
      end
      @credentials.handlers.each {|h| driver.headerhandler << h}

      if ENV['ADWORDS4R_DEBUG'].upcase == 'TRUE'
	driver.wiredump_file_base = "SOAP_#{$$}"
      end

      driver.options['protocol.http.ssl_config.verify_mode'] = nil
      #set driver.proxy if you are behing a proxy
      return driver
    end

    def getServiceName(s)
      s + "Interface"
    end

    def valid_call?(call)
      return @methodMap.has_key?(call)
    end

  end

  class Error
    class Error < StandardError; end

    # Raised if a call is made to a method that does not exist in the AdWords SOAP API
    class UnknownAPICall < Error; end

    # Raised if an attempt is made to instantiate a type that does not exist in the AdWords SOAP API
    class UnknownType < Error; end

    # Raised if a call returns with a SOAP error, gives you easy access to adwords error fields
    class ApiError < Error

      attr_accessor :soap_faultcode
      attr_accessor :soap_faultstring
      attr_accessor :top_code
      attr_accessor :internal
      attr_accessor :message
      attr_accessor :code
      attr_accessor :detail
      attr_accessor :field
      attr_accessor :index
      attr_accessor :isExemptable
      attr_accessor :textIndex
      attr_accessor :textLength
      attr_accessor :trigger

      def initialize(soap_fault)
        @soap_faultcode = protect { soap_fault.faultcode }
        @soap_faultstring = protect { soap_fault.faultstring }
        if protect { soap_fault.detail and soap_fault.detail.fault }
          fault = soap_fault.detail.fault
          @top_code = protect { fault.code }
          @internal = protect { fault.internal }
          @message = protect { fault.message }
          if protect { fault.errors and fault.errors.size > 0 }
            error = fault.errors.first
            @code = protect { error.code }
            @detail = protect { error.detail }
            @field = protect { error.field }
            @index = protect { error.index }
            @isExemptable = protect { error.isExemptable }
            @textIndex = protect { error.textIndex }
            @textLength = protect { error.textLength }
            @trigger = protect { error.trigger }
          end
        end
      end

      private
      def protect(&block)
        begin
          block.call
        rescue
          nil
        end
      end
    end
  end

  # These class module methods are helper functions
  class <<self 

    def fix_case_up(name)
      name[0] = name[0, 1].upcase # upper first character
      name
    end

    def fix_case_down(name)
      name[0] = name[0, 1].downcase
      name
    end
  end
end
