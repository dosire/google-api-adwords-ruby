require 'adwords4r/v11/SiteSuggestionService'
require 'adwords4r/v11/SiteSuggestionServiceMappingRegistry'
require 'soap/rpc/driver'

module AdWords
module SiteSuggestionService

class SiteSuggestionInterface < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://adwords.google.com/api/adwords/v11/SiteSuggestionService"

  Methods = [
    [ "",
      "getSitesByCategoryName",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v11", "getSitesByCategoryName"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v11", "getSitesByCategoryNameResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::SiteSuggestionService::ApiException"=>{:namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v11", :encodingstyle=>"document", :use=>"literal", :name=>"ApiException"}} }
    ],
    [ "",
      "getSitesByDemographics",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v11", "getSitesByDemographics"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v11", "getSitesByDemographicsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::SiteSuggestionService::ApiException"=>{:namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v11", :encodingstyle=>"document", :use=>"literal", :name=>"ApiException"}} }
    ],
    [ "",
      "getSitesByTopics",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v11", "getSitesByTopics"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v11", "getSitesByTopicsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::SiteSuggestionService::ApiException"=>{:namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v11", :encodingstyle=>"document", :use=>"literal", :name=>"ApiException"}} }
    ],
    [ "",
      "getSitesByUrls",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v11", "getSitesByUrls"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v11", "getSitesByUrlsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::SiteSuggestionService::ApiException"=>{:namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v11", :encodingstyle=>"document", :use=>"literal", :name=>"ApiException"}} }
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
