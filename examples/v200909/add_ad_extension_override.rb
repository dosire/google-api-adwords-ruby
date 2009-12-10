#!/usr/bin/ruby
#
# Author:: api.sgomes@gmail.com (Sérgio Gomes)
#
# Copyright:: Copyright 2009, Google Inc. All Rights Reserved.
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
# This example illustrates how to create a ad extension for a campaign, and
# then override it for a specific ad, by creating an ad extension override. To
# create a campaign, run add_campaign.rb. To create an ad, run add_ads.rb.

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'

def add_ad_extension_override()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new

  # Use the latest version for all services
  latest = AdWords::Service.latest_version
  geo_location_srv = adwords.get_service('GeoLocation', latest)
  ad_ext_override_srv = adwords.get_service('AdExtensionOverride', latest)

  ad_id = 'INSERT_AD_ID_HERE'.to_i
  campaign_ad_extension_id = 'INSERT_CAMPAIGN_AD_EXTENSION_ID_HERE'.to_i

  address = {
    :streetAddress => '1600 Amphitheatre Parkway',
    :cityName => 'Mountain View',
    :provinceCode => 'CA',
    :postalCode => '94043',
    :countryCode => 'US'
  }

  # Get the address information from the GeoLocationService.
  # The 'module' method being called here provides a shortcut to the
  # module containing the classes for this service. This helps us avoid
  # typing the full class name every time we need to create an object,
  # e.g. AdWords::V200909::GeoLocationService::GeoLocationSelector
  selector = geo_location_srv.module::GeoLocationSelector.new
  selector << address
  response = geo_location_srv.get(selector)
  geo_location = response.entries.first

  # Prepare for adding ad extension override.
  override = ad_ext_override_srv.module::LocationExtension.new
  override.id = campaign_ad_extension_id
  override.address = geo_location.address
  override.geoPoint = geo_location.geoPoint
  override.encodedLocation = geo_location.encodedLocation
  override.source = 'ADWORDS_FRONTEND'

  # Change the phone number.
  override.phoneNumber = '1-800-555-5556'
  operation = {
    :operand => {
      :adId => ad_id,
      :adExtension => override
    },
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
