require 'adwords4r/v9/CampaignService'
require 'adwords4r/v9/CampaignServiceMappingRegistry'

module AdWords
module CampaignService
require 'soap/rpc/driver'

class CampaignInterface < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://adwords.google.com/api/adwords/v9/CampaignService"

  Methods = [
    [ "",
      "addCampaign",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "addCampaign"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "addCampaignResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "addCampaignList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "addCampaignList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "addCampaignListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "getAllAdWordsCampaigns",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "getAllAdWordsCampaigns"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "getAllAdWordsCampaignsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "getCampaign",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "getCampaign"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "getCampaignResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "getCampaignList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "getCampaignList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "getCampaignListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "getCampaignStats",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "getCampaignStats"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "getCampaignStatsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "getOptimizeAdServing",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "getOptimizeAdServing"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "getOptimizeAdServingResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "setOptimizeAdServing",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "setOptimizeAdServing"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "setOptimizeAdServingResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "updateCampaign",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "updateCampaign"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "updateCampaignResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal }
    ],
    [ "",
      "updateCampaignList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "updateCampaignList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v9", "updateCampaignListResponse"]] ],
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
