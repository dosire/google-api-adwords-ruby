require 'adwords4r/v13/InfoService'
require 'adwords4r/v13/InfoServiceMappingRegistry'
require 'soap/rpc/driver'

module AdWords
module InfoService

class InfoInterface < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://adwords.google.com/api/adwords/v13/InfoService"

  Methods = [
    [ "",
      "getFreeUsageQuotaThisMonth",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getFreeUsageQuotaThisMonth"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getFreeUsageQuotaThisMonthResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::InfoService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "getMethodCost",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getMethodCost"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getMethodCostResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::InfoService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "getOperationCount",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getOperationCount"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getOperationCountResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::InfoService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "getOperationsQuotaThisMonth",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getOperationsQuotaThisMonth"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getOperationsQuotaThisMonthResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::InfoService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "getUnitCount",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getUnitCount"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getUnitCountResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::InfoService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "getUnitCountForClients",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getUnitCountForClients"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getUnitCountForClientsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::InfoService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "getUnitCountForMethod",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getUnitCountForMethod"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getUnitCountForMethodResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::InfoService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "getUsageQuotaThisMonth",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getUsageQuotaThisMonth"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getUsageQuotaThisMonthResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::InfoService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
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
