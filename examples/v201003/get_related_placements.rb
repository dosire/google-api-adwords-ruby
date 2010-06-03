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
# This example retrieves URLs that have content keywords related to a given
# website.
#
# Tags: TargetingIdeaService.get

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'

API_VERSION = 201003

def get_related_placements()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new
  targeting_idea_srv = adwords.get_service('TargetingIdea', API_VERSION)

  results_per_page = 10
  url = 'mars.google.com'

  # Construct selector object.
  # The 'module' method being called here provides a shortcut to the
  # module containing the classes for this service. This helps us avoid
  # typing the full class name every time we need to create an object.
  selector = targeting_idea_srv.module::TargetingIdeaSelector.new
  parameter = targeting_idea_srv.module::RelatedToUrlSearchParameter.new
  parameter.includeSubUrls = false
  parameter.urls = [url]
  selector.searchParameters = [parameter]
  selector.ideaType = 'PLACEMENT'
  selector.requestType = 'IDEAS'
  selector.requestedAttributeTypes = ['PLACEMENT']
  selector.paging = targeting_idea_srv.module::Paging.new
  selector.paging.startIndex = 0
  selector.paging.numberResults = results_per_page

  # Perform request.
  results = []
  index = 0
  while true
    page = targeting_idea_srv.get(selector)
    if page and page.rval and page.rval.entries
      results += page.rval.entries.entries
    end
    break if page.rval.totalNumEntries <= index
    index += results_per_page
    selector.paging.startIndex = index
  end

  # Display results.
  results.each do |result|
    item = result.first.value
    puts " Related content keywords were found at URL \"%s\"" % item.value.url
  end
  puts "Total keywords related to \"%s\": %d." % [url, results.length]
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    get_related_placements()

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
