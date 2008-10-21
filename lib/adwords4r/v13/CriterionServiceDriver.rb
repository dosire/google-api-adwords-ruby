require 'adwords4r/v13/CriterionService'
require 'adwords4r/v13/CriterionServiceMappingRegistry'
require 'soap/rpc/driver'

module AdWords
module CriterionService

class CriterionInterface < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://adwords.google.com/api/adwords/v13/CriterionService"

  Methods = [
    [ "",
      "addCriteria",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "addCriteria"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "addCriteriaResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CriterionService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "checkCriteria",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "checkCriteria"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "checkCriteriaResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CriterionService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "getAllCriteria",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getAllCriteria"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getAllCriteriaResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CriterionService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "getCampaignNegativeCriteria",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getCampaignNegativeCriteria"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getCampaignNegativeCriteriaResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CriterionService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "getCriteria",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getCriteria"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getCriteriaResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CriterionService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "getCriterionStats",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getCriterionStats"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getCriterionStatsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CriterionService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "removeCriteria",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "removeCriteria"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "removeCriteriaResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CriterionService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "setCampaignNegativeCriteria",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "setCampaignNegativeCriteria"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "setCampaignNegativeCriteriaResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CriterionService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "updateCriteria",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "updateCriteria"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "updateCriteriaResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CriterionService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
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
