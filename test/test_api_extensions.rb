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
    report_srv = @adwords.get_service(13, 'Report')

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

  # Test getMethodUsage extension method
  def test_getMethodUsage
    info_srv = @adwords.get_service(13, 'Info')
    start_day = Date.new(Date.today.year, 1, 1)
    end_day = Date.today
    usage_map = info_srv.getMethodUsage(start_day, end_day)

    # Did we get back a hash?
    assert_instance_of(Hash, usage_map,
        "Unexpected object type returned: #{usage_map.class}")

    # Retrieve list of all operation rates
    op_rates = AdWords::Utils.get_operation_rates

    # Check if the operations in the rates match the operations in the usage map
    op_rates.each do |line|
      service, name = line
      operation = "#{service}.#{name}"
      assert_not_nil(usage_map[operation],
          "Operation missing from usage map: #{operation}")
    end
  end

  # Test getClientUnitsUsage extension method
  def test_getClientUnitsUsage
    info_srv = @adwords.get_service(13, 'Info')
    start_day = Date.new(Date.today.year, 1, 1)
    end_day = Date.today
    usage_map, doubles = info_srv.getClientUnitsUsage(start_day, end_day)

    # Did we get back a hash and an array?
    assert_instance_of(Hash, usage_map,
        "Unexpected object type returned: #{usage_map.class}")
    assert_instance_of(Array, doubles,
        "Unexpected object type returned: #{doubles.class}")

    email = @adwords.credentials.credentials['email']

    # There should be 6 items in there, one for the main MCC and one for each
    # of the 5 client accounts
    assert_not_nil(usage_map[email],
        'Root MCC account was not present in usage map')
    1.upto(5) do |index|
      assert_not_nil(usage_map["client_#{index}+#{email}"],
        "Client account #{index} was not present in usage map")
    end
    assert_equal(usage_map.size, 6, 'Unexpected number of entries returned')
  end
end
