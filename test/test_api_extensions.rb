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
# Tests the various API extensions

require 'rubygems'
require 'test/unit'
require 'rexml/document'
require 'common_test_utils'
require 'adwords4r'

class TestApiExtensions < Test::Unit::TestCase

  # Initialize tests
  def setup
    @adwords = CommonTestUtils.create_api_object(self)
  end

  # Test downloadXmlReport extension method
  def test_downloadXmlReport
    report_srv = @adwords.get_service('Report', 13)

    # First we schedule a report
    job = AdWords::V13::ReportService::DefinedReportJob.new
    job.selectedReportType = 'Structure'
    job.aggregationTypes = 'Keyword'
    job.name = 'Report-%s' % DateTime.now.to_s
    job.selectedColumns = %w{Campaign AdGroup Keyword KeywordTypeDisplay}
    job.startDay = '2009-01-01'
    job.endDay = '2009-01-31'
    job_id = report_srv.scheduleReportJob(job).scheduleReportJobReturn

    # Now we use the downloadXmlReport method to download it
    report_data = report_srv.downloadXmlReport(job_id)

    # See if we got anything back
    assert((!report_data.nil? and !report_data.strip.empty?),
        'Empty report returned; unable to verify correctness')

    # Check if we received valid XML as a reply
    doc = REXML::Document.new(report_data)

    # See if what we got back was XML, as we expected
    assert_not_nil(doc, 'Invalid XML returned; unable to verify correctness')
  end

  # Test downloadCsvReport extension method
  def test_downloadCsvReport
    # Test method directly from the AdWords::Extensions module so that we can
    # use the optional parameter
    generated_csv =
        AdWords::Extensions.downloadCsvReport(nil, nil, File.read(
            File.join(CommonTestUtils::DATA_DIR, 'report_non_ascii.xml')))

    expected_csv = File.read(
        File.join(CommonTestUtils::DATA_DIR, 'report_non_ascii.csv'))

    # Check if the CSV matches the expected output
    assert_equal(expected_csv.strip, generated_csv.strip,
        'Generated CSV does not match expected output')
  end
end
