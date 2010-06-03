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
# This example adds a keywords performance report. To get ad groups, run
# get_all_ad_groups.rb. To get report fields, run get_report_fields.rb.
#
# Tags: ReportDefinitionService.mutate

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'

API_VERSION = 201003

def add_keywords_performance_report_definition()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new
  report_def_srv = adwords.get_service('ReportDefinition', API_VERSION)

  ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
  start_date = 'INSERT_START_DATE_HERE'
  end_date = 'INSERT_END_DATE_HERE'

  # Prepare for adding report definition.
  selector = report_def_srv.module::Selector.new
  selector.fields = ['AdGroupId', 'Id', 'KeywordText', 'KeywordMatchType',
                     'Impressions', 'Clicks', 'Cost']
  predicate = report_def_srv.module::Predicate.new
  predicate.field = 'AdGroupId'
  predicate.operator = 'EQUALS'
  predicate.values = [ad_group_id]
  selector.predicates = [predicate]
  selector.dateRange = {
    :min => start_date,
    :max => end_date
  }

  operation = {
    :operand => {
      :type => 'ReportDefinition',
      :reportName => 'Keywords performance report #%s' %
          (Time.new.to_f * 1000).to_i,
      :dateRangeType => 'CUSTOM_DATE',
      :reportType => 'KEYWORDS_PERFORMANCE_REPORT',
      :downloadFormat => 'XML',
      :selector => selector
    },
    :operator => 'ADD'
  }

  # Add report definition.
  response = report_def_srv.mutate([operation])
  if response
    response.each do |report_definition|
      puts 'Report definition with name \'%s\' and id \'%s\' was added' %
          [report_definition.reportName, report_definition.id]
    end
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    add_keywords_performance_report_definition()

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
