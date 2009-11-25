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
# This example illustrates how to create a text ad with ad parameters. To add an
# ad group, run add_ad_group.rb. To add an ad group criterion, run
# add_ad_group_criterion.rb.

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'

def set_ad_params()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  #
  # Instead of reading them from a file, the credentials can be
  # specified inline as a hash:
  #
  # creds = {
  #     'developerToken' => 'user@domain.com++USD',
  #     'useragent' => 'Sample User Agent',
  #     'password' => 'password',
  #     'email' => 'user@domain.com',
  #     'clientEmail' => 'client_1+user@domain.com',
  #     'applicationToken' => 'IGNORED',
  #     'environment' => 'SANDBOX',
  # }
  # $adwords = AdWords::API.new(AdWords::AdWordsCredentials.new(creds))
  $adwords = AdWords::API.new

  # Use the latest version for all services
  latest = AdWords::Service.latest_version
  ad_group_ad_srv = $adwords.get_service('AdGroupAd', latest)
  ad_param_srv = $adwords.get_service('AdParam', latest)

  # Prepare for adding ad.
  # The 'module' method being called here provides a shortcut to the
  # module containing the classes for this service. This helps us avoid
  # typing the full class name every time we need to create an object,
  # e.g. AdWords::V200909::AdGroupAdService::AdGroupAdOperation
  ad_operation = ad_group_ad_srv.module::AdGroupAdOperation.new
  ad_operand = ad_group_ad_srv.module::AdGroupAd.new
  ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
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
  criterion_id = 'INSERT_CRITERION_ID_HERE'.to_i

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
  # The adwords4r library can log all SOAP requests and responses to files.
  # This is often useful for debugging purposes.
  # To enable this, set the ADWORDS4R_DEBUG environement variable to 'true'.
  # This can be done either from your operating system environment or via
  # code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    set_ad_params()

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
    if $adwords
      # Display API unit usage info. This data is stored as a class variable
      # in the AdWords::API class and accessed via static methods.
      # total_units() returns a running total of units used in the scope of the
      # current program. last_units() returns the number used in the last call.
      puts
      puts '%d API units consumed total (%d in last call).' %
          [$adwords.total_units, $adwords.last_units]
    end
  end
end
