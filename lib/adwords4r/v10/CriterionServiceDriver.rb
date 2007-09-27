require 'adwords4r/v10/CriterionService'
require 'adwords4r/v10/CriterionServiceMappingRegistry'

module AdWords
module CriterionService
require 'soap/rpc/driver'

class CriterionInterface < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://adwords.google.com/api/adwords/v10/CriterionService"

  Methods = [
    [ "",
      "addCriteria",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "addCriteria"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "addCriteriaResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CriterionService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "checkCriteria",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "checkCriteria"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "checkCriteriaResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CriterionService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "getAllCriteria",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getAllCriteria"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getAllCriteriaResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CriterionService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "getCampaignNegativeCriteria",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getCampaignNegativeCriteria"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getCampaignNegativeCriteriaResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CriterionService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "getCriteria",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getCriteria"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getCriteriaResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CriterionService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "getCriterionStats",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getCriterionStats"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getCriterionStatsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CriterionService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "removeCriteria",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "removeCriteria"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "removeCriteriaResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CriterionService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "setCampaignNegativeCriteria",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "setCampaignNegativeCriteria"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "setCampaignNegativeCriteriaResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CriterionService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "updateCriteria",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "updateCriteria"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "updateCriteriaResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CriterionService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
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
