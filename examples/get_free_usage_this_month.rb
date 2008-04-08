#!/usr/bin/env ruby

# Use adwords4r in parent dir
$LOAD_PATH.unshift '../lib/'

require 'adwords4r'

begin
  adwords = AdWords::API.new
  result = adwords.getFreeUsageQuotaThisMonth().
    getFreeUsageQuotaThisMonthReturn
  puts "result = #{result}"
  
rescue AdWords::Error::UnknownAPICall => e
  puts e
rescue AdWords::Error::ApiError => e
  puts e.code
  puts e.message
end

