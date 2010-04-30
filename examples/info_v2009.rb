#!/usr/bin/ruby
#
# Author:: sgomes@google.com (Sérgio Gomes)
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
# This code sample illustrates how to use the different functionality of the
# v2009 InfoService.

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'


def main()
  begin
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
    # adwords = AdWords::API.new(AdWords::AdWordsCredentials.new(creds))
    adwords = AdWords::API.new

    # Use the latest version for the service
    latest = AdWords::Service.latest_version
    info_srv = adwords.get_service('Info', latest)

    # Get the total unit usage for the current year, up until now
    # The 'module' method being called here provides a shortcut to the
    # module containing the classes for this service. This helps us avoid
    # typing the full class name every time we need to create an object,
    # e.g. AdWords::V200909::InfoService::InfoSelector
    # It also makes it easier to migrate code between API versions.
    selector = info_srv.module::InfoSelector.new
    selector.apiUsageType = 'UNIT_COUNT'
    selector.dateRange = {
      :min => Time.new.strftime('%Y0101'),
      :max => Time.new.strftime('%Y%m%d'),
    }
    adwords.use_mcc do
      response = info_srv.get(selector)
      if response and response.rval
        puts "Total units used since the beginning of the year: " +
          response.rval.cost.to_s
      end
    end

    # Get the total unit usage for the current year, up until now, for all
    # client accounts
    selector = info_srv.module::InfoSelector.new
    selector.apiUsageType = 'UNIT_COUNT_FOR_CLIENTS'
    selector.dateRange = {
      :min => Time.new.strftime('%Y0101'),
      :max => Time.new.strftime('%Y%m%d'),
    }
    adwords.use_mcc do
      response = info_srv.get(selector)
      if response and response.rval
        if response.rval.apiUsageRecords
          response.rval.apiUsageRecords.each do |record|
            puts "Total units used for #{record.clientEmail} since the " +
                "beginning of the year: #{record.cost}"
          end
        else
          puts "No usage data for client emails found"
        end
      end
    end

    # Get the operation count for the current year, up until now
    selector = info_srv.module::InfoSelector.new
    selector.apiUsageType = 'OPERATION_COUNT'
    selector.dateRange = {
      :min => Time.new.strftime('%Y0101'),
      :max => Time.new.strftime('%Y%m%d'),
    }
    adwords.use_mcc do
      response = info_srv.get(selector)
      if response and response.rval
        puts "Total operations performed since the beginning of the year: " +
          response.rval.cost.to_s
      end
    end

    # Get the amount of total units allowed for this month
    selector = info_srv.module::InfoSelector.new
    selector.apiUsageType = 'TOTAL_USAGE_API_UNITS_PER_MONTH'
    adwords.use_mcc do
      response = info_srv.get(selector)
      if response and response.rval
        puts "Total units available this month: " + response.rval.cost.to_s
      end
    end

    # Get the amount of free units available this month
    selector = info_srv.module::InfoSelector.new
    selector.apiUsageType = 'FREE_USAGE_API_UNITS_PER_MONTH'
    adwords.use_mcc do
      response = info_srv.get(selector)
      if response and response.rval
        puts "Free units available this month: " + response.rval.cost.to_s
      end
    end

    # Get the cost for a method, namely a mutate ADD on the CampaignService
    selector = info_srv.module::InfoSelector.new
    selector.apiUsageType = 'METHOD_COST'
    selector.dateRange = {
      :min => Time.new.strftime('%Y%m%d'),
      :max => Time.new.strftime('%Y%m%d'),
    }
    selector.serviceName = 'CampaignService'
    selector.methodName = 'mutate'
    selector.operator = 'ADD'
    response = info_srv.get(selector)
    if response and response.rval
      puts "CampaignService.mutate ADD cost: " + response.rval.cost.to_s
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
  # To enable this, set the ADWORDS4R_DEBUG environement variable to 'true'.
  # This can be done either from your operating system environment or via
  # code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  main()
end
