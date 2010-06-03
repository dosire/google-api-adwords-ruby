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
# This example illustrates how to create a campaign ad extension for an existing
# campaign. To create a campaign, run add_campaign.rb.
#
# Tags: GeoLocationService.get, CampaignAdExtensionService.mutate

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'

API_VERSION = 201003

def add_campaign_ad_extension()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new
  campaign_ad_ext_srv = adwords.get_service('CampaignAdExtension', API_VERSION)
  geo_location_srv = adwords.get_service('GeoLocation', API_VERSION)

  campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i

  addresses = [
    {
      :streetAddress => '1600 Amphitheatre Parkway',
      :cityName => 'Mountain View',
      :provinceCode => 'CA',
      :postalCode => '94043',
      :countryCode => 'US'
    },
    {
      :streetAddress => "38 Avenue de l'Opéra",
      :cityName => 'Paris',
      :postalCode => '75002',
      :countryCode => 'FR'
    }
  ]

  # Get the geo location info for the various addresses
  response = geo_location_srv.get(addresses)
  if response and response.entries
    locations = response.entries
    operations = []
    locations.each do |location|
      # The 'module' method being called here provides a shortcut to the
      # module containing the classes for this service. This helps us avoid
      # typing the full class name every time we need to create an object.
      location_extension = campaign_ad_ext_srv.module::LocationExtension.new
      location_extension.address = location.address
      location_extension.geoPoint = location.geoPoint
      location_extension.encodedLocation = location.encodedLocation
      location_extension.source = 'ADWORDS_FRONTEND'

      campaing_ad_extension =
          campaign_ad_ext_srv.module::CampaignAdExtension.new
      campaing_ad_extension.campaignId = campaign_id
      campaing_ad_extension.status = 'ACTIVE'
      campaing_ad_extension.adExtension = location_extension

      operation = {
        :operand => campaing_ad_extension,
        :operator => 'ADD'
      }
      operations << operation
    end
  else
      puts "Unable to retrieve geo locations."
  end

  # Add campaign ad extensions.
  response = campaign_ad_ext_srv.mutate(operations)
  extensions = response.rval.value
  extensions.each do |extension|
    puts "Campaign extension id #{extensionadExtension.id} and status " +
         "#{extension.status} successfully added."
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    add_campaign_ad_extension()

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
