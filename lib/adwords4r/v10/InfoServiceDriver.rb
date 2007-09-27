require 'adwords4r/v10/InfoService'
require 'adwords4r/v10/InfoServiceMappingRegistry'

module AdWords
module InfoService
require 'soap/rpc/driver'

class InfoInterface < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://adwords.google.com/api/adwords/v10/InfoService"

  Methods = [
    [ "",
      "getFreeUsageQuotaThisMonth",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getFreeUsageQuotaThisMonth"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getFreeUsageQuotaThisMonthResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::InfoService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "getMethodCost",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getMethodCost"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getMethodCostResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::InfoService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "getOperationCount",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getOperationCount"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getOperationCountResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::InfoService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "getOperationsQuotaThisMonth",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getOperationsQuotaThisMonth"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getOperationsQuotaThisMonthResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::InfoService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "getUnitCount",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getUnitCount"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getUnitCountResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::InfoService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "getUnitCountForClients",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getUnitCountForClients"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getUnitCountForClientsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::InfoService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "getUnitCountForMethod",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getUnitCountForMethod"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getUnitCountForMethodResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::InfoService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "getUsageQuotaThisMonth",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getUsageQuotaThisMonth"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getUsageQuotaThisMonthResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::InfoService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end


end
end
