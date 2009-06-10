require 'adwords4r/v13/KeywordToolService'
require 'adwords4r/v13/KeywordToolServiceMappingRegistry'
require 'soap/rpc/driver'

module AdWords
module V13
module KeywordToolService

class KeywordToolInterface < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://adwords.google.com/api/adwords/v13/KeywordToolService"

  Methods = [
    [ "",
      "getKeywordVariations",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getKeywordVariations"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getKeywordVariationsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::V13::KeywordToolService::ApiException"=>{:ns=>"https://adwords.google.com/api/adwords/v13", :namespace=>nil, :use=>"literal", :name=>"ApiException", :encodingstyle=>"document"}} }
    ],
    [ "",
      "getKeywordsFromSite",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getKeywordsFromSite"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getKeywordsFromSiteResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::V13::KeywordToolService::ApiException"=>{:ns=>"https://adwords.google.com/api/adwords/v13", :namespace=>nil, :use=>"literal", :name=>"ApiException", :encodingstyle=>"document"}} }
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
