#!/usr/bin/ruby
#
# Author:: jeffy@google.com (Jeffrey Posnick)
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
# This code sample illustrates how to get keyword variations for seed keyword(s)
# and then estimate the traffic that the "top" variations might receive.

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'


def main()
  begin
    # AdWords::AdWordsCredentials.new will read a credentials file from
    # ENV['HOME']/adwords.properties when called without parameters.
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
    #     'environment' => 'SANDBOX',
    # }
    # adwords = AdWords::API.new(AdWords::AdWordsCredentials.new(creds))
    adwords = AdWords::API.new

    kwdtool_srv = adwords.get_service('KeywordTool', 13)

    # Modify the following values to set the seed keywords, language,
    # country targeting, and synonyms options.
    keywords = ['new york']
    languages = %w{en}
    countries = %w{US}
    use_synonyms = false

    seed_keywords = []
    keywords.each do |keyword|
      # The 'module' method being called here provides a shortcut to the
      # module containing the classes for this service. This helps us avoid
      # typing the full class name every time we need to create an object, e.g.
      # AdWords::V13::KeywordToolService::SeedKeyword
      # It also makes it easier to migrate code between API versions.
      seed_keyword = kwdtool_srv.module::SeedKeyword.new
      seed_keyword.text = keyword
      seed_keyword.type = 'Broad'  # Or 'Phrase' or 'Exact' if desired.
      seed_keywords << seed_keyword
    end

    variations =
        kwdtool_srv.getKeywordVariations(seed_keywords, use_synonyms, languages,
                                         countries).getKeywordVariationsReturn

    # Sort the list of variations using the following criteria:
    #   - treat moreSpecific and additionalToConsider results identically
    #   - sort in descending value based on lastMonthSearchVolume
    #   - in case of ties, use avgSearchVolume
    variation_objects = []
    unless variations.moreSpecific.nil?
      variation_objects.concat(variations.moreSpecific)
    end
    unless variations.additionalToConsider.nil?
      variation_objects.concat(variations.additionalToConsider)
    end
    variation_objects.sort! do |a, b|
      if b.avgSearchVolume == a.avgSearchVolume
        a.lastMonthSearchVolume <=> b.lastMonthSearchVolume
      else
        b.avgSearchVolume <=> a.avgSearchVolume
      end
    end

    max_estimates = 5
    keywords_to_estimate = []
    variation_objects[0..max_estimates - 1].each do |variation_object|
      keywords_to_estimate << variation_object.text
    end

    traffic_est_srv = adwords.get_service('TrafficEstimator', 13)

    ad_group_request = traffic_est_srv.module::AdGroupRequest.new
    ad_group_request.maxCpc = 1000000
    keywords_to_estimate.each do |keyword_to_estimate|
      keyword_request = traffic_est_srv.module::KeywordRequest.new
      keyword_request.text = keyword_to_estimate
      keyword_request.type = 'Broad'  # Or 'Phrase' or 'Exact' if desired.
      ad_group_request.keywordRequests << keyword_request
    end

    geo_targeting = traffic_est_srv.module::GeoTarget.new
    countryTargets = traffic_est_srv.module::CountryTargets.new
    countryTargets.countries = countries
    geo_targeting.countryTargets = countryTargets

    campaign_request = traffic_est_srv.module::CampaignRequest.new
    campaign_request.adGroupRequests = ad_group_request
    campaign_request.geoTargeting = geo_targeting
    campaign_request.languageTargeting = languages
    campaign_request.networkTargeting = %w{SearchNetwork ContentNetwork}

    campaign_estimate =
        traffic_est_srv.estimateCampaignList([campaign_request]).first
    ad_group_estimate = campaign_estimate.adGroupEstimates.first
    keyword_estimates = ad_group_estimate.keywordEstimates
    for i in 0..keyword_estimates.length - 1
      estimate = keyword_estimates[i]
      text = keywords_to_estimate[i]

      puts "Keyword: %s\tClicks: %f - %f\tCPC: %d - %d\tPosition: %f - %f" %
          [text, estimate.lowerClicksPerDay, estimate.upperClicksPerDay,
           estimate.lowerCpc, estimate.upperCpc, estimate.lowerAvgPosition,
           estimate.upperAvgPosition]
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
