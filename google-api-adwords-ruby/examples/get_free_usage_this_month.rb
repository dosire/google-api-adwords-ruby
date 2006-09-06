#!/usr/bin/env ruby

require 'adwords4r'
require 'pp'

begin
    adwords = AdWords::API.new
    puts "result = #{adwords.getFreeUsageQuotaThisMonth().getFreeUsageQuotaThisMonthReturn}"

rescue AdWords::Error::UnknownAPICall => e
    puts e
rescue AdWords::Error::ApiError => e
    puts e.code
    puts e.message
end

