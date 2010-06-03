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
# This example illustrates how to retrieve all the ad extension overrides
# for an existing campaign. To create an ad extension override run
# add_ad_extension_override.rb.
#
# Tags: AdExtensionOverrideService.get

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'

API_VERSION = 201003

def get_all_ad_extension_overrides()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new
  ad_ext_ovr_srv = adwords.get_service('AdExtensionOverride', API_VERSION)

  campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i

  # Get all the ad extension overrides for this campaign.
  # The 'module' method being called here provides a shortcut to the
  # module containing the classes for this service. This helps us avoid
  # typing the full class name every time we need to create an object.
  selector = ad_ext_ovr_srv.module::AdExtensionOverrideSelector.new
  selector.campaignIds = [campaign_id]
  response = ad_ext_ovr_srv.get(selector)
  if response and response.rval and response.rval.entries
    ext_overrides = response.rval.entries
    puts "Campaign ##{campaign_id} has #{ext_overrides.length} ad extension " +
         "override(s)."
    ext_overrides.each do |ext_override|
      puts "  Ad extension override for ad ##{ext_override.adId} " +
           "and ad extension ##{ext_override.adExtension.id}."
    end
  else
      puts "No ad extension overrides found for campaign ##{campaign_id}."
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    get_all_ad_extension_overrides()

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
