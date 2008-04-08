require 'adwords4r/v12/SiteSuggestionService'
require 'adwords4r/v12/SiteSuggestionServiceMappingRegistry'
require 'soap/rpc/driver'

module AdWords
module SiteSuggestionService

class SiteSuggestionInterface < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://adwords.google.com/api/adwords/v12/SiteSuggestionService"

  Methods = [
    [ "",
      "getSitesByCategoryName",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "getSitesByCategoryName"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "getSitesByCategoryNameResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::SiteSuggestionService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adwords.google.com/api/adwords/v12", :name=>"ApiException", :namespace=>nil}} }
    ],
    [ "",
      "getSitesByDemographics",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "getSitesByDemographics"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "getSitesByDemographicsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::SiteSuggestionService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adwords.google.com/api/adwords/v12", :name=>"ApiException", :namespace=>nil}} }
    ],
    [ "",
      "getSitesByTopics",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "getSitesByTopics"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "getSitesByTopicsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::SiteSuggestionService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adwords.google.com/api/adwords/v12", :name=>"ApiException", :namespace=>nil}} }
    ],
    [ "",
      "getSitesByUrls",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "getSitesByUrls"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "getSitesByUrlsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::SiteSuggestionService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adwords.google.com/api/adwords/v12", :name=>"ApiException", :namespace=>nil}} }
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
