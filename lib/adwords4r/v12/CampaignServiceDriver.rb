require 'adwords4r/v12/CampaignService'
require 'adwords4r/v12/CampaignServiceMappingRegistry'
require 'soap/rpc/driver'

module AdWords
module CampaignService

class CampaignInterface < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://adwords.google.com/api/adwords/v12/CampaignService"

  Methods = [
    [ "",
      "addCampaign",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "addCampaign"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "addCampaignResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CampaignService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adwords.google.com/api/adwords/v12", :name=>"ApiException", :namespace=>nil}} }
    ],
    [ "",
      "addCampaignList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "addCampaignList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "addCampaignListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CampaignService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adwords.google.com/api/adwords/v12", :name=>"ApiException", :namespace=>nil}} }
    ],
    [ "",
      "getAllAdWordsCampaigns",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "getAllAdWordsCampaigns"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "getAllAdWordsCampaignsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CampaignService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adwords.google.com/api/adwords/v12", :name=>"ApiException", :namespace=>nil}} }
    ],
    [ "",
      "getCampaign",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "getCampaign"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "getCampaignResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CampaignService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adwords.google.com/api/adwords/v12", :name=>"ApiException", :namespace=>nil}} }
    ],
    [ "",
      "getCampaignList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "getCampaignList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "getCampaignListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CampaignService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adwords.google.com/api/adwords/v12", :name=>"ApiException", :namespace=>nil}} }
    ],
    [ "",
      "getCampaignStats",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "getCampaignStats"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "getCampaignStatsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CampaignService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adwords.google.com/api/adwords/v12", :name=>"ApiException", :namespace=>nil}} }
    ],
    [ "",
      "getConversionOptimizerEligibility",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "getConversionOptimizerEligibility"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "getConversionOptimizerEligibilityResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CampaignService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adwords.google.com/api/adwords/v12", :name=>"ApiException", :namespace=>nil}} }
    ],
    [ "",
      "getOptimizeAdServing",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "getOptimizeAdServing"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "getOptimizeAdServingResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CampaignService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adwords.google.com/api/adwords/v12", :name=>"ApiException", :namespace=>nil}} }
    ],
    [ "",
      "setOptimizeAdServing",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "setOptimizeAdServing"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "setOptimizeAdServingResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CampaignService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adwords.google.com/api/adwords/v12", :name=>"ApiException", :namespace=>nil}} }
    ],
    [ "",
      "updateCampaign",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "updateCampaign"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "updateCampaignResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CampaignService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adwords.google.com/api/adwords/v12", :name=>"ApiException", :namespace=>nil}} }
    ],
    [ "",
      "updateCampaignList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "updateCampaignList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "updateCampaignListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::CampaignService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adwords.google.com/api/adwords/v12", :name=>"ApiException", :namespace=>nil}} }
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
