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
# This example illustrates how to update an ad group criterion, setting its
# bid. To create an ad group criterion, run add_ad_group_criterion.rb.
#
# Tags: AdGroupCriterionService.mutate

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'

API_VERSION = 200909

def update_ad_group_criterion()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new
  ad_group_criterion_srv = adwords.get_service('AdGroupCriterion', API_VERSION)

  ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
  criterion_id = 'INSERT_CRITERION_ID_HERE'.to_i

  # Prepare for updating ad group criterion.
  # The 'module' method being called here provides a shortcut to the
  # module containing the classes for this service. This helps us avoid
  # typing the full class name every time we need to create an object.
  bid = ad_group_criterion_srv.module::ManualCPCAdGroupCriterionBids.new
  bid.maxCpc = {
    :amount => {
      :microAmount => 1000000
    }
  }
  criterion = ad_group_criterion_srv.module::Criterion.new
  criterion.id = criterion_id
  ad_group_criterion =
      ad_group_criterion_srv.module::BiddableAdGroupCriterion.new
  ad_group_criterion.adGroupId = ad_group_id
  ad_group_criterion.criterion = criterion
  ad_group_criterion.bids = bid
  operation = ad_group_criterion_srv.module::AdGroupCriterionOperation.new
  operation.operator = 'SET'
  operation.operand = ad_group_criterion

  # Update criterion.
  response = ad_group_criterion_srv.mutate([operation])
  criterion = response.rval.value.first
  puts 'Criterion id %d was successfully updated, bid set to %d.' %
      [criterion.criterion.id, criterion.bids.maxCpc.amount.microAmount]
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    update_ad_group_criterion()

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
