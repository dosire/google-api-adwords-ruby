require 'adwords4r/v10/ReportService'
require 'adwords4r/v10/ReportServiceMappingRegistry'

module AdWords
module ReportService
require 'soap/rpc/driver'

class ReportInterface < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://adwords.google.com/api/adwords/v10/ReportService"

  Methods = [
    [ "",
      "deleteReport",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "deleteReport"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "deleteReportResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::ReportService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "getAllJobs",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getAllJobs"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getAllJobsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::ReportService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "getGzipReportDownloadUrl",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getGzipReportDownloadUrl"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getGzipReportDownloadUrlResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::ReportService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "getReportDownloadUrl",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getReportDownloadUrl"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getReportDownloadUrlResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::ReportService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "getReportJobStatus",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getReportJobStatus"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "getReportJobStatusResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::ReportService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
    ],
    [ "",
      "scheduleReportJob",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "scheduleReportJob"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v10", "scheduleReportJobResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdWords::ReportService::ApiException"=>{:name=>"ApiException", :use=>"literal", :namespace=>nil, :encodingstyle=>"document", :ns=>"https://adwords.google.com/api/adwords/v10"}} }
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
