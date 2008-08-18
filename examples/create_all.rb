#!/usr/bin/ruby
#
# Copyright 2008, Google Inc. All Rights Reserved.
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
# keywords, and website criteria, all in one fell swoop.

require 'rubygems'
gem 'soap4r', '>= 1.5.8'
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
    #   'developerToken' => 'user@domain.com++USD',
    #   'useragent' => 'Sample User Agent',
    #   'password' => 'password',
    #   'email' => 'user@domain.com',
    #   'clientEmail' => 'client_1+user@domain.com',
    #   'applicationToken' => 'IGNORED',
    #   'alternateUrl' => 'https://sandbox.google.com/api/adwords/v12/',
    # }
    # adwords = AdWords::API.new(AdWords::AdWordsCredentials.new(creds), 12)

    adwords = AdWords::API.new

    # Alternatively, you can create new AdWords::Campaign, AdWords::AdGroup,
    # etc. objects and set their properties instead of working with hashes.
    campaign_data = {
      :name => 'Sample Campaign %s' % Time.new.to_s, # Ensure name is unique.
      :budgetAmount => 1000000, # 1000000 micros = 1 unit of currency.
      :budgetPeriod => 'Daily',
      :languageTargeting => ['en'], # If the default all-language targeting is
                                    # used then website placements criteria
                                    # would not be supported.
      :status => 'Paused', # Pause the campaign so that it doesn't actually run.
      # Default geo and network targeting will be used.
    }

    campaign  = adwords.addCampaign(campaign_data).addCampaignReturn
    puts 'Campaign id %d was successfully added.' % campaign.id

    ad_group_data = {
      :name => 'Sample Ad Group %s' % Time.new.to_s, # Ensure name is unique.
      :keywordMaxCpc => 100000, # 100000 micros = 0.1 unit of currency.
      :siteMaxCpc => 100000, # 100000 micros = 0.1 unit of currency.
    }

    ad_group = adwords.addAdGroup(campaign.id, ad_group_data).addAdGroupReturn
    puts 'Ad group id %d was successfully added.' % ad_group.id

    ad_data = {
      :adGroupId => ad_group.id,
      :adType => 'TextAd',
      :headline => 'AdWords API Ruby Library',
      :description1 => 'Write AdWords API apps in Ruby.',
      :description2 => 'Use adwords4r!',
      :destinationUrl => 'http://code.google.com/p/google-api-adwords-ruby/',
      :displayUrl => 'http://code.google.com/',
    }

    ad = adwords.addAds([ad_data])[0]
    puts 'Text ad id %d was successfully added.' % ad.id

    keyword_data = {
      :adGroupId => ad_group.id,
      :criterionType => 'Keyword',
      :text => 'adwords4r',
      :type => 'Broad', # Or 'Phrase' or 'Exact' if desired.
      # Default ad destination URL and ad group CPC values will be used.
    }

    website_data = {
      :adGroupId => ad_group.id,
      :criterionType => 'Website',
      :url => 'http://www.ruby-forum.com/', # Target this site for ads.
      # Default ad destination URL and ad group CPC values will be used.
    }

    criteria = adwords.addCriteria([keyword_data, website_data])
    criteria.each do |criterion|
      puts 'Criterion id %d was successfully added.' % criterion.id
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
    # AdWords::API.get_total_units() returns a running total of units used in
    # the scope of the current program.
    # AdWords::API.get_last_units() returns the number used in the last call.

    puts
    puts '%d API units consumed total (%d in last call).' %
      [AdWords::API.get_total_units(), AdWords::API.get_last_units()]
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
