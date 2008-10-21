require 'adwords4r/v13/CampaignService'
require 'adwords4r/v13/CampaignServiceMappingRegistry'
require 'soap/rpc/driver'

module AdWords
module CampaignService

class CampaignInterface < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://adwords.google.com/api/adwords/v13/CampaignService"

  Methods = [
    [ "",
      "addCampaign",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "addCampaign"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "addCampaignResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CampaignService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "addCampaignList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "addCampaignList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "addCampaignListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CampaignService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "getActiveAdWordsCampaigns",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getActiveAdWordsCampaigns"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getActiveAdWordsCampaignsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CampaignService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "getAllAdWordsCampaigns",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getAllAdWordsCampaigns"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getAllAdWordsCampaignsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CampaignService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "getCampaign",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getCampaign"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getCampaignResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CampaignService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "getCampaignList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getCampaignList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getCampaignListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CampaignService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "getCampaignStats",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getCampaignStats"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getCampaignStatsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CampaignService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "getConversionOptimizerEligibility",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getConversionOptimizerEligibility"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getConversionOptimizerEligibilityResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CampaignService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "getOptimizeAdServing",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getOptimizeAdServing"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getOptimizeAdServingResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CampaignService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "getRecommendedBudgetList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getRecommendedBudgetList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getRecommendedBudgetListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CampaignService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "setOptimizeAdServing",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "setOptimizeAdServing"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "setOptimizeAdServingResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CampaignService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "updateCampaign",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "updateCampaign"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "updateCampaignResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CampaignService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "updateCampaignList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "updateCampaignList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "updateCampaignListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CampaignService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
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
