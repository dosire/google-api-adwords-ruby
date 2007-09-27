require 'adwords4r/v9/CriterionService'
require 'adwords4r/v9/CriterionServiceMappingRegistry'

module AdWords
module CriterionService
require 'soap/rpc/driver'

class CriterionInterface < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://adwords.google.com/api/adwords/v9/CriterionService"

  Methods = [
    [ "",
      "addCriteria",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "addCriteria"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "addCriteriaResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "checkCriteria",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "checkCriteria"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "checkCriteriaResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "getAllCriteria",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "getAllCriteria"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "getAllCriteriaResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "getCampaignNegativeCriteria",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "getCampaignNegativeCriteria"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "getCampaignNegativeCriteriaResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "getCriteria",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "getCriteria"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "getCriteriaResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "getCriterionStats",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "getCriterionStats"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "getCriterionStatsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "removeCriteria",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "removeCriteria"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "removeCriteriaResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "setCampaignNegativeCriteria",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "setCampaignNegativeCriteria"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "setCampaignNegativeCriteriaResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "updateCriteria",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "updateCriteria"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "updateCriteriaResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
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
