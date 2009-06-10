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
# This code sample illustrates how to fetch all the client accounts under an
# MCC account, and then iteratively retrieves information about each account.

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'


def main()
  begin
    # AdWords::AdWordsCredentials.new will read a credentials file from
    # ENV['HOME']/adwords.properties when called without parameters.
    # The latest versioned release of the API will be assumed.
    #
    # Credentials can be either for the production or Sandbox environments.
    # Production environment credentials overview:
    # http://www.google.com/apis/adwords/developer/index.html
    # Sandbox environment credentials overview:
    # http://www.google.com/apis/adwords/developer/adwords_api_sandbox.html
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
    #     'alternateUrl' => 'https://sandbox.google.com/api/adwords/v13/',
    # }
    # adwords = AdWords::API.new(AdWords::AdWordsCredentials.new(creds))
    adwords = AdWords::API.new

    # Clear out the clientEmail header temporarily so that we run under the
    # context of the MCC user.
    adwords.credentials.set_header('clientEmail', '')

    info_srv = adwords.get_service(13, 'Info')

    start_date = Time.new.year.to_s + '-01-01'
    end_date = Time.new.year.to_s + '-01-31'

    # Get a breakdown of API usage per method, to see which ones are being used
    # the most. This method is a client-side extension to the API.
    method_usage = info_srv.getMethodUsage(start_date, end_date)

    # Display results. Ignore methods with no usage.
    if !method_usage.nil? and method_usage.size > 0
      puts "Unit usage per method from #{start_date} to #{end_date}:"
      sorted_results = method_usage.sort { |a, b| b[1] <=> a[1] }
      if sorted_results.first[1] == 0
        puts 'All methods have zero usage'
      else
        sorted_results.each do |tuple|
          method, usage = tuple
          puts "#{method}: #{usage} units" if usage > 0
        end
      end
    else
      puts 'No usage data retrieved.'
    end

    puts ''

    # Get a breakdown of API usage per client account, to see where units are
    # being spent. This method is a client-side extension to the API.
    # Sub-MCCs have the total of their clients added to them.
    client_usage, dups = info_srv.getClientUnitsUsage(start_date, end_date)

    # Display results. Ignore clients with no usage.
    if !client_usage.nil? and client_usage.size > 0
      puts "Unit usage per client from #{start_date} to #{end_date}:"
      sorted_results = client_usage.sort { |a, b| b[1] <=> a[1] }
      if sorted_results.first[1] == 0
        puts 'All clients have zero usage'
      else
        sorted_results.each do |tuple|
          method, usage = tuple
          puts "#{method}: #{usage} units" if usage > 0
        end
      end
    else
      puts 'No usage data retrieved.'
    end

    # Display possible duplicates.
    if !dups.nil? and dups.size > 0
      puts "The following clients had their data counted more than once when " +
           "aggregating:"
      puts dups.join(', ')
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
