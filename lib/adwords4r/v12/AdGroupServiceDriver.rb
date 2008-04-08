require 'adwords4r/v12/AdGroupService'
require 'adwords4r/v12/AdGroupServiceMappingRegistry'
require 'soap/rpc/driver'

module AdWords
module AdGroupService

class AdGroupInterface < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://adwords.google.com/api/adwords/v12/AdGroupService"

  Methods = [
    [ "",
      "addAdGroup",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "addAdGroup"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "addAdGroupResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdGroupService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adwords.google.com/api/adwords/v12", :name=>"ApiException", :namespace=>nil}} }
    ],
    [ "",
      "addAdGroupList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "addAdGroupList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "addAdGroupListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdGroupService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adwords.google.com/api/adwords/v12", :name=>"ApiException", :namespace=>nil}} }
    ],
    [ "",
      "getAdGroup",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "getAdGroup"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "getAdGroupResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdGroupService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adwords.google.com/api/adwords/v12", :name=>"ApiException", :namespace=>nil}} }
    ],
    [ "",
      "getAdGroupList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "getAdGroupList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "getAdGroupListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdGroupService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adwords.google.com/api/adwords/v12", :name=>"ApiException", :namespace=>nil}} }
    ],
    [ "",
      "getAdGroupStats",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "getAdGroupStats"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "getAdGroupStatsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdGroupService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adwords.google.com/api/adwords/v12", :name=>"ApiException", :namespace=>nil}} }
    ],
    [ "",
      "getAllAdGroups",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "getAllAdGroups"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "getAllAdGroupsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdGroupService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adwords.google.com/api/adwords/v12", :name=>"ApiException", :namespace=>nil}} }
    ],
    [ "",
      "updateAdGroup",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "updateAdGroup"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "updateAdGroupResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdGroupService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adwords.google.com/api/adwords/v12", :name=>"ApiException", :namespace=>nil}} }
    ],
    [ "",
      "updateAdGroupList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "updateAdGroupList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v12", "updateAdGroupListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::AdGroupService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :ns=>"https://adwords.google.com/api/adwords/v12", :name=>"ApiException", :namespace=>nil}} }
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
