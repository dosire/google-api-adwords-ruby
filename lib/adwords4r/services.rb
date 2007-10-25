module AdWords
  class Service

    @services = {
      10 => ['Criterion', 'AdGroup', 'Campaign', 'TrafficEstimator', 'Report', 'Info', 'Account', 'KeywordTool', 'Ad', 'Campaign'],
      11 => ['Criterion', 'AdGroup', 'Campaign', 'TrafficEstimator', 'Report', 'Info', 'Account', 'KeywordTool', 'Ad', 'Campaign']
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
