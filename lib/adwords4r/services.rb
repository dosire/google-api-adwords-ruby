module AdWords

    class Service
        
        @@services = {
          6 => ['Creative', 'Criterion', 'AdGroup', 'Campaign', 'TrafficEstimator', 'Report', 'Info', 'Account', 'KeywordTool'],
          7 => ['Creative', 'Criterion', 'AdGroup', 'Campaign', 'TrafficEstimator', 'Report', 'Info', 'Account', 'KeywordTool'],
          8 => ['Creative', 'Criterion', 'AdGroup', 'Campaign', 'TrafficEstimator', 'Report', 'Info', 'Account', 'KeywordTool', 'Ad'],
          9 => ['Criterion', 'AdGroup', 'Campaign', 'TrafficEstimator', 'Report', 'Info', 'Account', 'KeywordTool', 'Ad']
        }
        
        def Service.getVersions
            @@services.keys
        end

        def Service.getServices(version)
            @@services[version]
        end
        
        def Service.doRequire(version)
            req = []
            Service.getServices(version).each {|s| req << "require 'adwords4r/v#{version}/#{s}ServiceDriver'"} 
            req.each {|r| eval(r)}
        end
        
        def Service.getService(version, method)
        
        end
        
        def Service.getMethodMap(drivers)
            #Service.getVersions.each do |v|
            methodMap = Hash.new
            drivers.each_value {|d| d.class::Methods.each {|m| methodMap[m[1]] = d}}
            return methodMap
        end
    end
    
end
