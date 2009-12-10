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
# This example shows how to use the 'validate only' header. No objects will be
# created, but exceptions will still be thrown.

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'

def check_campaigns()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new

  # Use the latest version for all services
  latest = AdWords::Service.latest_version
  campaign_srv = adwords.get_service('Campaign', latest)

  # Enable 'validate only'
  adwords.validate_only = true

  # Prepare for adding campaign.
  operation = {
    :operand => {
      :name => 'Interplanetary Cruise #%s' % (Time.new.to_f * 1000).to_i,
      :status => 'PAUSED',
      # The 'module' method being called here provides a shortcut to the
      # module containing the classes for this service. This helps us avoid
      # typing the full class name every time we need to create an object,
      # e.g. AdWords::V200909::CampaignService::ManualCPC
      # It also makes it easier to migrate code between API versions.
      :biddingStrategy => campaign_srv.module::ManualCPC.new,
      :budget => {
        :period => 'DAILY',
        :amount => {
          :microAmount => 50000000
        },
        :deliveryMethod => 'STANDARD'
      }
    },
    :operator => 'ADD'
  }

  # Validate campaign add operation.
  response = campaign_srv.mutate([operation])
  if response and response.rval and response.rval.value
    campaigns = response.rval.value
    campaigns.each do |campaign|
      puts "Created campaign with name \"#{campaign.name}\", id " +
           "#{campaign.id} and status is \"#{campaign.status}\"."
  end
  else
    puts 'No campaigns created.'
  end

  # Provide an invalid bidding strategy that will cause an exception during
  # validation.
  operation = {
    :operand => {
      :name => 'Interplanetary Cruise #%s' % (Time.new.to_f * 1000).to_i,
      :status => 'PAUSED',
      :biddingStrategy => nil,
      :budget => {
        :period => 'DAILY',
        :amount => {
          :microAmount => 50000000
        },
        :deliveryMethod => 'STANDARD'
      }
    },
    :operator => 'ADD'
  }

  # Validate campaign add operation.
  begin
    response = campaign_srv.mutate([operation])
  rescue AdWords::Error::ApiError => e
    puts "Validation failed for reason: #{e.soap_faultstring_ex}"
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    check_campaigns()

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
