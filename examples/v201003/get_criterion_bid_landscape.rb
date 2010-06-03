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
# This example gets a bid landscape for an ad group and a criterion. To get ad
# groups, run get_all_ad_groups.rb. To get criteria, run
# get_all_ad_group_criteria.rb.
#
# Tags: BidLandscapeService.getBidLandscape

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'

API_VERSION = 201003

def get_criterion_bid_landscapes()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new
  bid_landscape_srv = adwords.get_service('BidLandscape', API_VERSION)

  ad_group_id = 'INSERT_ADGROUP_ID_HERE'.to_i
  criterion_id = 'INSERT_CRITERION_ID_HERE'.to_i

  # Get criterion bid landscape.
  # The 'module' method being called here provides a shortcut to the
  # module containing the classes for this service. This helps us avoid
  # typing the full class name every time we need to create an object.
  selector = bid_landscape_srv.module::CriterionBidLandscapeSelector.new
  id_filter = {
    :adGroupId => ad_group_id,
    :criterionId => criterion_id
  }
  selector.idFilters = [id_filter]
  response = bid_landscape_srv.getBidLandscape(selector)
  if response
    puts "#{response.length} bid landscape(s) retrieved."
    response.each do |bid_landscape|
      puts "Retrieved criterion bid landscape with ad group id " +
           "'#{bid_landscape.adGroupId}', criterion id " +
           "'#{bid_landscape.criterionId}', start date " +
           "'#{bid_landscape.criterionId}', end date "+
           "'#{bid_landscape.criterionId}', with landscape points:"
      bid_landscape.landscapePoints.each do |point|
        puts "  #{point.bid.microAmount} => clicks: #{point.clicks}, cost: " +
             "#{point.cost.microAmount}, marginalCpc: " +
             "#{point.marginalCpc.microAmount}, impressions: " +
             "#{point.impressions}"
      end
    end
  else
      puts "No bid landscapes retrieved."
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    get_criterion_bid_landscapes()

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
