require 'soap/soap'
require 'adwords4r/credentials'
require 'adwords4r/services'

# Fix an issue with SOAPDate. Google complains of the dates have any timezone
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
        
        def initialize(*parm)
            if parm[0] 
                @credentials = parm[0]
            else
                @credentials = AdWordsCredentials.new
            end
            if parm[1] 
                @version = parm[1]
            else
                @version = Service.getVersions.sort.last
            end
            @drivers = Hash.new
            prepareDrivers
            fix_soap4r
        end
        
        def method_missing(m, *args)
            methodName = m.id2name
            requestName = AdWords::fix_case_up(m.id2name) # upper first character
            if valid_call?(methodName)
                constructor = eval("AdWords::#{requestName}.method(\"new\")")
                req = constructor.call(*args)
                resp = eval("getDriver(methodName).#{methodName}(req)")
                return resp
            else
                raise(Error::UnknownAPICall, "Unknown API Call: #{requestName}", caller)
            end
            # Handle AdWords Application-level error
            rescue SOAP::FaultError => fault
                raise(Error::ApiError.new(fault), "#{methodName} Call Failed: #{fault.faultstring.to_s}", caller)
        end
        
        private
        
        #nasty but does the job
        #Todo: remove when Hiroshi fix soap4r bug
        #Todo: it would be more elegant to use alias_method but I could not
        #make it work with class methods
        #Todo: could also check if the class is in my module before adding it
        def fix_soap4r
          a = %q{
          def self.class_from_name(name, lenient = false)
            const = const_from_name('AdWords::' + name, lenient)
            if const.is_a?(::Class)
              const
            else
              nil
            end
          end
          }
          
          SOAP::Mapping.module_eval(a)
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
            #driver = eval("AdWordsV#{@version}::#{getServiceName(s)}.new")
            #set alternateurl if it has been set in credentials
            if (@credentials.alternateUrl) then
               endpointUrl = @credentials.alternateUrl + s + 'Service'
               driver = eval("#{getServiceName(s)}.new(\"#{endpointUrl}\")")
            elsif
                driver = eval("#{getServiceName(s)}.new")
            end
            @credentials.handlers.each {|h| driver.headerhandler << h}
            #driver.wiredump_dev = STDOUT if @debug
            driver.wiredump_file_base = "log"
            driver.options['protocol.http.ssl_config.verify_mode'] = nil
            #set driver.proxy if you are behing a proxy
            return driver
        end
        
        #workaround the bug: some services do not follow the naming convention
        def getServiceName(s)
            if @version < 8
              if s == "TrafficEstimator" then "TrafficEstimatorInterface"
              elsif s == "Report" then "ReportServiceInterface"
              elsif s == "Info" then "InfoServiceInterface"
              elsif s == "KeywordTool" then "KeywordToolInterface"
              else (s + "Service")
              end
            else
              s + "Interface"
            end
        end
        
        def valid_call?(call)
            return @methodMap.has_key?(call)
        end
    
    end

    #copied and adapted from ebay4r
    #maybe these type of handlers should be generalized and put in soap4r 
    #for other api projects to be able to get started more quickly
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
            attr_accessor :code
            attr_accessor :internal
            attr_accessor :message
            attr_accessor :index
            attr_accessor :field
            attr_accessor :trigger
            attr_accessor :isExemptable
            attr_accessor :textIndex
            attr_accessor :textLength
            attr_accessor :detail
            
            def initialize(fault)
                @soap_faultcode = getOrNil(fault, 'faultcode')
                @soap_faultstring = getOrNil(fault, 'faultstring')
                if getOrNil(fault.detail, 'fault')
                    @code = getOrNil(fault.detail.fault, 'code')
                    @internal = getOrNil(fault.detail.fault,'internal')
                    @message = getOrNil(fault.detail.fault,'message')
                    if getOrNil(fault.detail.fault, 'errors')
                        @index = getOrNil(fault.detail.fault.errors,'index')
                        @field = getOrNil(fault.detail.fault.errors,'field');
                        @trigger = getOrNil(fault.detail.fault.errors,'trigger')
                        @isExemptable = getOrNil(fault.detail.fault.errors,'isExemptable');
                        @textIndex = getOrNil(fault.detail.fault.errors,'textIndex');
                        @textLength = getOrNil(fault.detail.fault.errors,'textLength');
                        @detail = getOrNil(fault.detail.fault.errors,'detail');
                    end
                end
            end
            
            private
            def getOrNil(obj, meth)
                obj.respond_to?(meth) ? eval("obj.#{meth}") : nil
            end
        end
    end

    # These class module methods are helper functions
    class <<self 
    
      def fix_case_up(name)
        name[0] = name[0,1].upcase # upper first character
        name
      end
    
      def fix_case_down(name)
        name[0] = name[0,1].downcase
        name
      end
    end
end
