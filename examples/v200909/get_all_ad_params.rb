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
# This example illustrates how to retrieve all the ad parameters for an ad
# group. To create an ad parameter, run set_ad_params.rb.

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'

def get_all_ad_params()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new

  # Use the latest version for all services
  latest = AdWords::Service.latest_version
  ad_param_srv = adwords.get_service('AdParam', latest)

  ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i

  # Get all the ad parameters for this ad group
  # The 'module' method being called here provides a shortcut to the
  # module containing the classes for this service. This helps us avoid
  # typing the full class name every time we need to create an object,
  # e.g. AdWords::V200909::AdParamService::AdParamSelector
  selector = ad_param_srv.module::AdParamSelector.new
  selector.adGroupIds = [ad_group_id]
  response = ad_param_srv.get(selector)
  if response and response.rval and response.rval.entries
    ad_params = response.rval.entries
    puts "Ad group ##{ad_group_id} has #{ad_params.length} ad param(s)."
    ad_params.each do |ad_param|
      puts "  Ad param name for criterion ##{ad_param.criterionId} has " +
           "insertionText \"#{ad_param.insertionText}\" and " +
           "paramIndex #{ad_param.paramIndex}."
    end
  else
      puts "No ad params found for ad group ##{ad_group_id}."
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    get_all_ad_params()

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
