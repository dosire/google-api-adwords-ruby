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
# This example illustrates override an ad extension for a specific ad, by
# creating an ad extension override. To create a campaign, run add_campaign.rb.
# To create an ad, run add_ads.rb.
#
# Tags: GeoLocationService.get, AdExtensionOverrideService.mutate

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'

API_VERSION = 201003

def add_ad_extension_override()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new
  ad_ext_override_srv = adwords.get_service('AdExtensionOverride', API_VERSION)

  ad_id = 'INSERT_AD_ID_HERE'.to_i
  campaign_ad_extension_id = 'INSERT_CAMPAIGN_AD_EXTENSION_ID_HERE'.to_i

  # Prepare for adding ad extension override.
  # The 'module' method being called here provides a shortcut to the
  # module containing the classes for this service. This helps us avoid
  # typing the full class name every time we need to create an object.
  override = ad_ext_override_srv.module::AdExtensionOverride.new
  override.adId = ad_id

  # Create an AdExtension object based on an existing id.
  ad_extension = ad_ext_override_srv.module::AdExtension.new
  ad_extension.id = campaign_ad_extension_id
  override.adExtension = ad_extension

  # Create operation.
  operation = {
    :operand => override,
    :operator => 'ADD'
  }

  # Add override.
  response = ad_ext_override_srv.mutate([operation])
  ad_ext_override = response.rval.value.first
  puts 'Ad extension override was successfully added.'
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    add_ad_extension_override()

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
