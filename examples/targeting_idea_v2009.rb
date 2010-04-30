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
    ti_srv = adwords.get_service('TargetingIdea', latest)

    # The 'module' method being called here provides a shortcut to the
    # module containing the classes for this service. This helps us avoid
    # typing the full class name every time we need to create an object,
    # e.g. AdWords::V200909::InfoService::InfoSelector
    # It also makes it easier to migrate code between API versions.
    selector = ti_srv.module::TargetingIdeaSelector.new

    # Create different search parameters
    # "Excluded keyword" search
    excluded_search = ti_srv.module::ExcludedKeywordSearchParameter.new
    excluded_kwd = ti_srv.module::Keyword.new
    excluded_kwd.text = 'media player'
    excluded_kwd.matchType = 'EXACT'
    excluded_search.keywords = [excluded_kwd]

    # "Keyword match type" search
    match_type_search = ti_srv.module::KeywordMatchTypeSearchParameter.new
    match_type_search.keywordMatchTypes = ['BROAD', 'EXACT']

    # "Related to keyword" search
    related_search = ti_srv.module::RelatedToKeywordSearchParameter.new
    base_kwd = ti_srv.module::Keyword.new
    base_kwd.text = 'dvd player'
    base_kwd.matchType = 'EXACT'
    related_search.keywords = [base_kwd]

    # Configure selector with search parameters and types
    selector.searchParameters =
        [excluded_search, match_type_search, related_search]
    selector.ideaType = 'KEYWORD'
    selector.requestType = 'IDEAS'

    # Configure paging
    paging = ti_srv.module::Paging.new
    paging.startIndex = 0
    paging.numberResults = 100
    selector.paging = paging

    # Get results
    index = 0
    results = []
    while true
      page = ti_srv.get(selector).rval
      raise 'Error retrieving results' if page.nil?
      results += page.entries if page.entries
      break if page.totalNumEntries < index
      index += paging.numberResults
      paging.startIndex = index
    end

    # Display results
    results.each do |result|
      puts 'Targeting idea:'
      result.each do |item|
        if item.key and item.key == 'AD_SHARE'
          puts "  Ad was shown #{item.value.value}% of the time."
        elsif item.key and item.key == 'COMPETITION'
          puts "  Competition value is #{item.value.value}."
        elsif item.key and item.key == 'EXTRACTED_FROM_WEBPAGE'
          puts "  Idea is from '#{item.value.url}'."
        elsif item.key and item.key == 'GLOBAL_MONTHLY_SEARCHES'
          puts "  Number of searches for idea is #{item.value.value}."
        elsif item.key and item.key == 'IDEA_TYPE'
          puts "  Idea type is '#{item.value.value}'."
        elsif item.key and item.key == 'KEYWORD'
          puts "  Idea is for keyword '%s' with match type '%s'." %
              [item.value.value.text, item.value.value.matchType]
        elsif item.key and item.key == 'KEYWORD_CATEGORY'
          puts '  Categories by id:'
          item.value.value.each do |id|
            puts "   '#{id}'"
          end
          puts ''
        elsif item.key and item.key == 'NGRAM_GROUP'
          puts "  Ngram group id is '#{item.value.value}'."
        elsif item.key and item.key == 'TARGETED_MONTHLY_SEARCHES'
          puts '  Number of searches:'
          item.value.value.each do |entry|
            puts "   #{item.month}/#{item.year}=#{item.count}"
          end
          puts ''
        elsif item.key and item.key == 'KEYWORD'
          puts "%s: %s '%s' with match type '%s'." %
              [item.key, item.value.value.criterion_Type, item.value.value.text,
               item.value.value.matchType]
        end
      end
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
