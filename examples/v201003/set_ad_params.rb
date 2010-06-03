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
# This example illustrates how to create a text ad with ad parameters. To add an
# ad group, run add_ad_group.rb. To add an ad group criterion, run
# add_ad_group_criterion.rb.
#
# Tags: AdGroupAdService.mutate, AdParamService.mutate

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'

API_VERSION = 201003

def set_ad_params()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new
  ad_group_ad_srv = adwords.get_service('AdGroupAd', API_VERSION)
  ad_param_srv = adwords.get_service('AdParam', API_VERSION)

  ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
  criterion_id = 'INSERT_CRITERION_ID_HERE'.to_i

  # Prepare for adding ad.
  # The 'module' method being called here provides a shortcut to the
  # module containing the classes for this service. This helps us avoid
  # typing the full class name every time we need to create an object.
  ad_operation = ad_group_ad_srv.module::AdGroupAdOperation.new
  ad_operand = ad_group_ad_srv.module::AdGroupAd.new
  ad_operand.adGroupId = ad_group_id
  text_ad = ad_group_ad_srv.module::TextAd.new
  text_ad.url = 'http://www.example.com'
  text_ad.displayUrl = 'example.com'
  text_ad.headline = 'Luxury Mars Cruises'
  text_ad.description1 = 'Low-gravity fun for {param1:cheap}.'
  text_ad.description2 = 'Only {param2:a few} seats left!'
  ad_operand.ad = text_ad
  ad_operand.status = 'ENABLED'
  ad_operation.operand = ad_operand
  ad_operation.operator = 'ADD'

  # Add ad.
  response = ad_group_ad_srv.mutate([ad_operation])
  ad = response.rval.value.first.ad
  puts 'Text ad id %d was successfully added.' % ad.id

  # Prepare for setting ad parameters
  price_operation = {
    :operand => {
      :adGroupId => ad_group_id,
      :criterionId => criterion_id,
      :paramIndex => 1,
      :insertionText => "$100"
    },
    :operator => 'SET'
  }

  seat_operation = {
    :operand => {
      :adGroupId => ad_group_id,
      :criterionId => criterion_id,
      :paramIndex => 2,
      :insertionText => "50"
    },
    :operator => 'SET'
  }

  # Set ad parameters.
  response = ad_param_srv.mutate([price_operation, seat_operation])
  puts 'Parameters were successfully updated.'
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    set_ad_params()

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
