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
    
    res = adwords.estimateKeywordList([AdWords::KeywordRequest.new(nil, 50000, false, 'flowers', 'Broad')])
    res.each {|c| puts dumpObj(c)}

rescue AdWords::Error::UnknownAPICall => e
    puts e
rescue AdWords::Error::ApiError => e
    puts e.code
    puts e.message
end
