require 'adwords4r/v10/AdService'
require 'adwords4r/v10/AdServiceMappingRegistry'

module AdWords
module AdService
require 'soap/rpc/driver'

class AdInterface < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://adwords.google.com/api/adwords/v10/AdService"

  Methods = [
    [ "",
      "addAds",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "addAds"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "addAdsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "checkAds",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "checkAds"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "checkAdsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "findBusinesses",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "findBusinesses"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "findBusinessesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "getActiveAds",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getActiveAds"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getActiveAdsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "getAd",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getAd"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getAdResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "getAdStats",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getAdStats"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getAdStatsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "getAllAds",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getAllAds"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getAllAdsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "getMyBusinesses",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getMyBusinesses"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getMyBusinessesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "getMyVideos",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getMyVideos"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getMyVideosResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "updateAds",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "updateAds"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "updateAdsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
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
