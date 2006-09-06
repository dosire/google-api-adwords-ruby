#!/usr/bin/env ruby

require 'adwords4r'
require 'pp'

begin
    adwords = AdWords::API.new
    puts "result = #{adwords.getUnitCount(Date.new(2006, 4,1), Date.new(2006,4,13)).getUnitCountReturn}"

rescue AdWords::Error::UnknownAPICall => e
    puts e
rescue AdWords::Error::ApiError => e
    puts e.code
    puts e.message
end

