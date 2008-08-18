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
# This code sample illustrates how to get keyword variations for seed keyword(s)
# and then estimate the traffic that the "top" variations might receive.

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

    # Modify the following values to set the seed keywords, language,
    # country targeting, and synonyms options.

    keywords = ['hot dog']
    languages = %w{en}
    countries = %w{US}
    use_synonyms = false

    seed_keywords = []
    keywords.each do |keyword|
      seed_keyword = AdWords::KeywordToolService::SeedKeyword.new
      seed_keyword.text = keyword
      seed_keyword.type = 'Broad'  # Or 'Phrase' or 'Exact' if desired.
      seed_keywords << seed_keyword
    end

    variations = adwords.getKeywordVariations(seed_keywords, use_synonyms,
					      languages, countries
					      ).getKeywordVariationsReturn

    variation_objects = []
    unless variations.moreSpecific.nil?
      variation_objects.concat(variations.moreSpecific)
    end
    unless variations.additionalToConsider.nil?
      variation_objects.concat(variations.additionalToConsider)
    end
    variation_objects.sort! do |a, b|
      if b.searchVolumeScale == a.searchVolumeScale
	a.advertiserCompetitionScale <=> b.advertiserCompetitionScale
      else
	b.searchVolumeScale <=> a.searchVolumeScale
      end
    end

    max_estimates = 3
    keywords_to_estimate = []
    variation_objects[0..max_estimates - 1].each do |variation_object|
      keywords_to_estimate << variation_object.text
    end

    ad_group_request = AdWords::TrafficEstimatorService::AdGroupRequest.new
    ad_group_request.maxCpc = 1000000
    keywords_to_estimate.each do |keyword_to_estimate|
      keyword_request = AdWords::TrafficEstimatorService::KeywordRequest.new
      keyword_request.text = keyword_to_estimate
      keyword_request.type = 'Broad'  # Or 'Phrase' or 'Exact' if desired.
      ad_group_request.keywordRequests << keyword_request
    end

    geo_targeting = AdWords::TrafficEstimatorService::GeoTarget.new
    geo_targeting.countryTargets = countries

    campaign_request = AdWords::TrafficEstimatorService::CampaignRequest.new
    campaign_request.adGroupRequests = ad_group_request
    campaign_request.geoTargeting = geo_targeting
    campaign_request.languageTargeting = languages
    campaign_request.networkTargeting = %w{SearchNetwork ContentNetwork}

    campaign_estimate = adwords.estimateCampaignList([campaign_request]).first
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
