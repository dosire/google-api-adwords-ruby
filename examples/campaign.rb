#!/usr/bin/env ruby

require 'adwords4r'
require 'pp'

SEP = "---"

def dumpObj(o)
    str = ""
    o.instance_variables.each { |v| str << dumpAttr(o, v)}
    return str << SEP
end

def dumpAttr(o, v)
    name = v.sub(/@/,'')
    value = eval("o.#{name}.to_s")
    return "#{name}: #{value}\n"
end

begin
    adwords = AdWords::API.new
    
    res = adwords.getAllAdWordsCampaigns(123)
    res.each {|c| puts dumpObj(c)}
    #adwords.getAllAdWordsCampaigns(123).each {|c| puts dumpObj(c)}
    c = AdWords::Campaign.new
    c.dailyBudget = 10000
    c.status = 'Paused'
    c.name = "Test P@ #{rand(10000)}"
    c.endDay = SOAP::SOAPDate.new("2011-01-01+01:00")
    puts dumpObj(adwords.addCampaign(c).addCampaignReturn)

rescue AdWords::Error::UnknownAPICall => e
    puts e
rescue AdWords::Error::ApiError => e
    puts e.code
    puts e.message
end
