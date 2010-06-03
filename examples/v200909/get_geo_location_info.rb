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
# This example illustrates how to retrieve geo location information for
# addresses.
#
# Tags: GeoLocationService.get

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'

API_VERSION = 200909

def get_geo_location_info()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new
  geo_location_srv = adwords.get_service('GeoLocation', API_VERSION)

  addresses = [
    {
      :streetAddress => '1600 Amphitheatre Parkway',
      :cityName => 'Mountain View',
      :provinceCode => 'US-CA',
      :provinceName => 'California',
      :postalCode => '94043',
      :countryCode => 'US'
    },
    {
      :streetAddress => '76 Ninth Avenue',
      :cityName => 'New York',
      :provinceCode => 'US-NY',
      :provinceName => 'New York',
      :postalCode => '10011',
      :countryCode => 'US'
    },
    {
      :streetAddress => '五四大街1号, Beijing东城区',
      :countryCode => 'CN'
    }
  ]

  # Get the geo location info for the various addresses.
  response = geo_location_srv.get(addresses)
  if response and response.entries
    locations = response.entries
    locations.each do |location|
      puts "Address \"#{location.address.streetAddress}\" has latitude " +
           "#{location.geoPoint.latitudeInMicroDegrees} and longitude " +
           "#{location.geoPoint.longitudeInMicroDegrees}."
    end
  else
      puts "No geo locations were returned."
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    get_geo_location_info()

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
