require 'adwords4r/v200906/AdGroupAdService'
require 'adwords4r/v200906/AdGroupAdServiceMappingRegistry'
require 'soap/rpc/driver'

module AdWords
module V200906
module AdGroupAdService

class AdGroupAdServiceInterface < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://adwords.google.com/api/adwords/cm/v200906/AdGroupAdService"

  Methods = [
    [ "",
      "get",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/cm/v200906", "get"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/cm/v200906", "getResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::V200906::AdGroupAdService::ApiException"=>{:ns=>"https://adwords.google.com/api/adwords/cm/v200906", :encodingstyle=>"document", :namespace=>nil, :name=>"ApiException", :use=>"literal"}} }
    ],
    [ "",
      "mutate",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/cm/v200906", "mutate"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/cm/v200906", "mutateResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::V200906::AdGroupAdService::ApiException"=>{:ns=>"https://adwords.google.com/api/adwords/cm/v200906", :encodingstyle=>"document", :namespace=>nil, :name=>"ApiException", :use=>"literal"}} }
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
end
