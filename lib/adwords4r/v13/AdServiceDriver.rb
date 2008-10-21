require 'adwords4r/v13/AdService'
require 'adwords4r/v13/AdServiceMappingRegistry'
require 'soap/rpc/driver'

module AdWords
module AdService

class AdInterface < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://adwords.google.com/api/adwords/v13/AdService"

  Methods = [
    [ "",
      "addAds",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "addAds"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "addAdsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "checkAds",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "checkAds"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "checkAdsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "findBusinesses",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "findBusinesses"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "findBusinessesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "getActiveAds",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getActiveAds"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getActiveAdsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "getAd",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getAd"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getAdResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "getAdStats",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getAdStats"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getAdStatsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "getAllAds",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getAllAds"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getAllAdsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "getMyBusinesses",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getMyBusinesses"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getMyBusinessesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "getMyVideos",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getMyVideos"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getMyVideosResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
    ],
    [ "",
      "updateAds",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "updateAds"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "updateAdsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdService::ApiException"=>{:encodingstyle=>"document", :name=>"ApiException", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal"}} }
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
