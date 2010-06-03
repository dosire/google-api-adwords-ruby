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
# This example adds geo, language and network targeting to an existing campaign.
# To create a campaign, run add_campaign.rb.
#
# Tags: CampaignTargetService.mutate

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'

API_VERSION = 200909

def set_campaign_targets()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new
  campaign_target_srv = adwords.get_service('CampaignTarget', API_VERSION)

  campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i

  # Language targeting
  # The 'module' method being called here provides a shortcut to the
  # module containing the classes for this service. This helps us avoid
  # typing the full class name every time we need to create an object.
  language_target_list = campaign_target_srv.module::LanguageTargetList.new
  language_target_list.campaignId = campaign_id
  language_target_list.targets = [
    {:languageCode => 'fr'},
    {:languageCode => 'ja'}
  ]
  language_operation = {
    :operand => language_target_list,
    :operator => 'SET'
  }

  # Geo targeting
  geo_target_list = campaign_target_srv.module::GeoTargetList.new
  geo_target_list.campaignId = campaign_id
  geo_target_us = campaign_target_srv.module::CountryTarget.new
  geo_target_us.excluded = false
  geo_target_us.countryCode = 'US'
  geo_target_jp = campaign_target_srv.module::CountryTarget.new
  geo_target_jp.excluded = false
  geo_target_jp.countryCode = 'JP'
  geo_target_list.targets = [geo_target_us, geo_target_jp]
  geo_operation = {
    :operand => geo_target_list,
    :operator => 'SET'
  }

  # Network targeting
  network_target_list = campaign_target_srv.module::NetworkTargetList.new
  network_target_list.campaignId = campaign_id
  network_target_list.targets = [
    {:networkCoverageType => 'GOOGLE_SEARCH'},
    {:networkCoverageType => 'SEARCH_NETWORK'}
  ]
  network_operation = {
    :operand => network_target_list,
    :operator => 'SET'
  }

  # Set campaign targeting.
  response = campaign_target_srv.mutate([language_operation, geo_operation,
      network_operation])
  targets = response.rval.value
  targets.each do |target|
    puts "Campaign target of type #{target.targetList_Type} for campaign id " +
         "#{target.campaignId} was set."
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    set_campaign_targets()

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
