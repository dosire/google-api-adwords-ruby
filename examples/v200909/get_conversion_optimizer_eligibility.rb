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
# This example shows how to check for conversion optimizer eligibility by
# attempting to set the bidding transition with the validate only header set to
# true.

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'

def get_conversion_optimizer_eligibility()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new

  # Use the latest version for all services
  latest = AdWords::Service.latest_version
  campaign_srv = adwords.get_service('Campaign', latest)

  campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i

  # Enable 'validate only'
  adwords.validate_only = true

  # Prepare for "updating" campaign.
  # The 'module' method being called here provides a shortcut to the
  # module containing the classes for this service. This helps us avoid
  # typing the full class name every time we need to create an object,
  # e.g. AdWords::V200909::CampaignService::Campaign
  campaign = campaign_srv.module::Campaign.new
  campaign.id = campaign_id

  # Create bidding transition.
  bidding_transition =
      campaign_srv.module::ConversionOptimizerBiddingTransition.new

  # Create conversion optimizer bidding strategy.
  conversion_optimizer = campaign_srv.module::ConversionOptimizer.new
  conversion_optimizer.pricingModel = 'CONVERSIONS'
  bidding_transition.targetBiddingStrategy = conversion_optimizer

  # Create conversion optimizer ad group bids.
  ad_group_bids = campaign_srv.module::ConversionOptimizerAdGroupBids.new
  bidding_transition.explicitAdGroupBids = ad_group_bids

  # Create operation.
  operation = {
    :operand => campaign,
    :operator => 'SET',
    :biddingTransition => bidding_transition
  }

  # Check that campaign is eligible for conversion optimization.
  begin
    response = campaign_srv.mutate([operation])
    puts 'Campaign id %d is eligible to use conversion optimizer.' % campaign.id
  rescue AdWords::Error::ApiError => e
    error = e.soap_faultstring_ex
    if error.include? 'BiddingTransitionError'
      puts "Campaign id #{campaign.id} is not eligible to use conversion " +
            "optimizer. Error: #{error}."
    else
      raise e
    end
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    get_conversion_optimizer_eligibility()

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
