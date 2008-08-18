require 'soap/header/simplehandler'

module AdWords

  class HeaderHandler < SOAP::Header::SimpleHandler
    attr_reader :tag
    attr_writer :value

    def initialize(tag, value)
      super(XSD::QName.new(nil, tag))
      @tag = tag
      @value = value
    end

    #the initial handler from the sample was wrong, it generated 2 level of tags
    def on_simple_outbound
      @value
    end
  end

  class AdWordsCredentials
    attr_reader :handlers, :alternateUrl

    def getDefaults()
      cred = Hash.new
      IO.foreach("#{ENV['HOME']}/adwords.properties") {|line|
        addCredential(cred, line.split('=')) if !(line =~ /^#/)}
      return cred
    end

    def addCredential(cred, arr)
      cred[arr[0]] = arr[1].strip
    end

    def initialize(*parm)
      @handlers = []
      @alternateUrl = nil
      if parm[0] 
        credentials = parm[0]
      else
        credentials = getDefaults()
      end
      credentials.each {|key, value|
        @handlers << HeaderHandler.new(key, value) if !(key =~ /^alternateUrl/)}
      @alternateUrl = credentials['alternateUrl']
    end

    def setHeader(header, value)
      handlers.each do |handler|
        if handler.tag == header then
          handler.value = value
        end
      end
    end
  end
end
