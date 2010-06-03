#!/usr/bin/ruby
#
# Author:: api.sgomes@gmail.com (Sérgio Gomes)
#
# Copyright:: Copyright 2010, Google Inc. All Rights Reserved.
#
# License:: Licensed under the Apache License, Version 2.0 (the "License");
#           you may not use this file except in compliance with the License.
#           You may obtain a copy of the License at
#
#           http://www.apache.org/licenses/LICENSE-2.0
#
#           Unless required by applicable law or agreed to in writing, software
#           distributed under the License is distributed on an "AS IS" BASIS,
#           WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
#           implied.
#           See the License for the specific language governing permissions and
#           limitations under the License.
#
# This example illustrates how to update an ad, setting its status to 'PAUSED'.
# To create ads, run add_ads.rb.
#
# Tags: AdGroupAdService.mutate

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'

API_VERSION = 200909

def update_ad()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new
  ad_group_ad_srv = adwords.get_service('AdGroupAd', API_VERSION)

  ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
  ad_id = 'INSERT_AD_ID_HERE'.to_i

  # Prepare for updating ad.
  # The 'module' method being called here provides a shortcut to the
  # module containing the classes for this service. This helps us avoid
  # typing the full class name every time we need to create an object.
  operation = ad_group_ad_srv.module::AdGroupAdOperation.new
  operation.operator = 'SET'
  operation.operand = ad_group_ad_srv.module::AdGroupAd.new
  operation.operand.status = 'PAUSED'
  operation.operand.adGroupId = ad_group_id
  ad = ad_group_ad_srv.module::Ad.new
  ad.id = ad_id
  operation.operand.ad = ad

  # Update ad group.
  response = ad_group_ad_srv.mutate([operation])
  ad = response.rval.value.first
  puts 'Ad id %d was successfully updated, status set to %s.' %
      [ad.ad.id, ad.status]
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    update_ad()

  # Connection error. Likely transitory.
  rescue Errno::ECONNRESET, SOAP::HTTPStreamError, SocketError => e
    puts 'Connection Error: %s' % e
    puts 'Source: %s' % e.backtrace.first

  # API Error.
  rescue AdWords::Error::ApiError => e
    puts 'SOAP Error: %s (code: %d)' % [e.soap_faultstring_ex, e.code_ex]
    puts 'Trigger: %s' % e.trigger_ex unless e.trigger_ex.nil?
    puts 'Source: %s' % e.backtrace.first
  end
end
