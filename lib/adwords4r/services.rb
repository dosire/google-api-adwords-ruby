module AdWords
  class Service

    @services = {
      12 => ["Account", "AdGroup", "Ad", "Campaign", "Criterion", "Info",
        "KeywordTool", "Report", "SiteSuggestion", "TrafficEstimator"]
    }

    def self.getVersions
      @services.keys
    end

    def self.getServices(version)
      @services[version]
    end

    def self.doRequire(version)
      getServices(version).each do |s|
        eval("require 'adwords4r/v#{version}/#{s}ServiceDriver'")
      end
    end

    def self.getMethodMap(drivers)
      methodMap = Hash.new
      drivers.each_value {|d| d.class::Methods.each {|m| methodMap[m[1]] = d}}
      return methodMap
    end
  end
end
