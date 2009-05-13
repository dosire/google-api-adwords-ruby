#!/usr/bin/ruby
#
# Copyright 2009, Google Inc. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# This code sample illustrates how to create a new campaign, ad group, text ad,
# keywords, and website criteria, all in one fell swoop, in the v200902 sandbox.

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'


def main()
  begin
    # AdWords::AdWordsCredentials.new will read a credentials file from
    # ENV['HOME']/adwords.properties when called without parameters.
    # The latest versioned release of the API will be assumed.
    #
    # In this case, we'll assume v200902 sandbox credentials, so only the
    # email, password and clientEmail fields are used.
    # v2009 Sandbox environment credentials overview:
    # http://code.google.com/apis/adwords/v2009/docs/headers.html
    #
    # Instead of reading them from a file, the credentials can be
    # specified inline as a hash:
    #
    # creds = {
    #     'email' => 'user@domain.com',
    #     'password' => 'password',
    #     'clientEmail' => 'client_1+user@domain.com'
    # }
    # adwords = AdWords::API.new(AdWords::AdWordsCredentials.new(creds))
    adwords = AdWords::API.new

    campaign_srv = adwords.get_service(200902, 'Campaign')
    ad_group_srv = adwords.get_service(200902, 'AdGroup')
    ad_group_ad_srv = adwords.get_service(200902, 'AdGroupAd')
    ad_group_criterion_srv = adwords.get_service(200902, 'AdGroupCriterion')

    # You can create the required items either via hashes or as new Campaign,
    # AdGroup, etc. objects and set their properties. You can even mix both
    # approaches, as is done below.

    # Prepare for adding campaign.
    operation = {
      :operand => {
        :name => 'Sample Campaign - %s' % Time.new,
        :status => 'ACTIVE',
        :biddingStrategy => AdWords::V200902::CampaignService::ManualCPC.new,
        :budget => {
          :period => 'DAILY',
          :amount => {
            :currencyCode => 'EUR',
            :microAmount => 50000000
          },
          :deliveryMethod => 'STANDARD'
        }
      },
      :operator => 'ADD'
    }
    # Add campaign.
    response = campaign_srv.mutate([operation])
    campaign = response.rval.value.first
    puts 'Campaign id %d was successfully added.' % campaign.id.id

    # Prepare for adding ad group.
    bids = AdWords::V200902::AdGroupService::ManualCPCAdGroupBids.new
    keyword_max_cpc = {
      :amount => {
        :currencyCode => 'USD',
        :microAmount => 10000000
      }
    }
    bids.keywordMaxCpc = keyword_max_cpc
    operation = {
      :operand => {
        :name => 'Sample Ad Group - %s' % Time.new,
        :status => 'ENABLED',
        :campaignId => {
          :id => campaign.id.id
        },
        :bids => bids,
      },
      :operator => 'ADD'
    }
    # Add ad group.
    response = ad_group_srv.mutate([operation])
    ad_group = response.rval.value.first
    puts 'Ad group id %d was successfully added.' % ad_group.id.id

    # Prepare for adding ad.
    text_ad = AdWords::V200902::AdGroupAdService::TextAd.new
    text_ad.url = 'http://www.example.com'
    text_ad.displayUrl = 'www.example.com'
    text_ad.headline = 'Luxury Cruise to Mars'
    text_ad.description1 = 'Visit the Red Planet in style.'
    text_ad.description2 = 'Low-gravity fun for everyone!'
    operation = {
      :operand => {
        :adGroupId => {
          :id => ad_group.id.id
        },
        :ad => text_ad
      },
      :operator => 'ADD'
    }
    # Add ad.
    response = ad_group_ad_srv.mutate([operation])
    ad = response.rval.value.first.ad
    puts 'Text ad id %d was successfully added.' % ad.id.id

    # Prepare for adding keyword.
    kwd_operation =
        AdWords::V200902::AdGroupCriterionService::AdGroupCriterionOperation.new
    kwd_operand =
        AdWords::V200902::AdGroupCriterionService::BiddableAdGroupCriterion.new
    kwd_operand.adGroupId = { :id => ad_group.id.id }
    keyword = AdWords::V200902::AdGroupCriterionService::Keyword.new
    keyword.matchType = 'BROAD'
    keyword.text = 'mars cruise'
    kwd_operand.criterion = keyword
    kwd_operation.operand = kwd_operand
    kwd_operation.operator = 'ADD'
    kwd_operation.exemptionRequests = []
    # Prepare for adding placement.
    plc_operation =
        AdWords::V200902::AdGroupCriterionService::AdGroupCriterionOperation.new
    plc_operand =
        AdWords::V200902::AdGroupCriterionService::BiddableAdGroupCriterion.new
    plc_operand.adGroupId = { :id => ad_group.id.id }
    placement = AdWords::V200902::AdGroupCriterionService::Placement.new
    placement.url = 'http://www.ruby-forum.com/'
    plc_operand.criterion = placement
    plc_operation.operand = plc_operand
    plc_operation.operator = 'ADD'
    plc_operation.exemptionRequests = []
    # Add both criteria.
    response = ad_group_criterion_srv.mutate([kwd_operation, plc_operation])
    criteria = response.rval.value
    criteria.each do |criterion|
      puts 'Criterion id %d was successfully added.' % criterion.criterion.id.id
    end

  rescue Errno::ECONNRESET, SOAP::HTTPStreamError, SocketError => e
    # This exception indicates a connection-level error.
    # In general, it is likely to be transitory.
    puts 'Connection Error: %s' % e
    puts 'Source: %s' % e.backtrace.first

  rescue AdWords::Error::UnknownAPICall => e
    # This exception is thrown when an unknown SOAP method is invoked.
    puts e
    puts 'Source: %s' % e.backtrace.first

  rescue AdWords::Error::ApiError => e
    # This exception maps to receiving a SOAP Fault back from the service.
    # The e.soap_faultstring_ex, e.code_ex, and potentially e.trigger_ex
    # attributes are the most useful, but other attributes may be populated
    # as well. To display all attributes, the following can be used:
    #
    # e.instance_variables.each do |var|
    #   value = e.instance_variable_get(var)
    #   if ! value.nil?
    #     puts '%s => %s' % [var, value]
    #   end
    # end
    puts 'SOAP Error: %s (code: %d)' % [e.soap_faultstring_ex, e.code_ex]
    puts 'Trigger: %s' % e.trigger_ex unless e.trigger_ex.nil?
    puts 'Source: %s' % e.backtrace.first

  ensure
    # Display API unit usage info. This data is stored as a class variable
    # in the AdWords::API class and accessed via static methods.
    # total_units() returns a running total of units used in the scope of the
    # current program. last_units() returns the number used in the last call.
    puts
    puts '%d API units consumed total (%d in last call).' %
        [adwords.total_units, adwords.last_units]
  end
end


if __FILE__ == $0
  # The adwords4r library can log all SOAP requests and responses to files.
  # This is often useful for debugging purposes.
  # To enable this, set the ADWORDS4R_DEBUG environement varaible to 'true'.
  # This can be done either from your operating system environment or via
  # code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  main()
end
