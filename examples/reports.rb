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
# This code sample illustrates how to schedule and download an AdWords report
# using the adwords4r client library.

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
    
    report_name = 'Report-%s' % DateTime.now.to_s
    
    # The following example creates a Structure report with Keyword aggregation.
    # Because it is a Structure report, startDay and endDay values are ignored.
    # See http://www.google.com/apis/adwords/developer/ReportService.html for
    # more information about the different reports you can create.

    job = AdWords::DefinedReportJob.new
    job.selectedReportType = 'Structure'
    job.aggregationTypes = 'Keyword'
    job.name = report_name
    job.selectedColumns = %w{Campaign AdGroup Keyword KeywordTypeDisplay}
    job.startDay = '2008-01-01'
    job.endDay = '2008-01-31'
    
    # Validate the report definition to make sure it is valid.
    # If it is not, an AdWords::Error::ApiError will be thrown.

    adwords.validateReportJob(job)
    
    # Since validation passed, schedule the report.

    job_id = adwords.scheduleReportJob(job).scheduleReportJobReturn
    sleep_interval = 10
    puts 'Scheduled report with id %d. Now sleeping %d seconds.' %
      [job_id, sleep_interval]
    sleep(sleep_interval)
    
    # Repeatedly check the report status until it is finished.
    # 'Pending' and 'InProgress' statuses indicate the job is still being run.

    status = adwords.getReportJobStatus(job_id).getReportJobStatusReturn
    while status != 'Completed' && status != 'Failed'
      puts 'Report status is %s. Now sleeping another %d seconds.' %
	[status, sleep_interval]
      sleep(sleep_interval)
      status = adwords.getReportJobStatus(job_id).getReportJobStatusReturn
    end
    
    if status == 'Completed'
      report_url = adwords.getReportDownloadUrl(job_id).
        getReportDownloadUrlReturn
      puts 'Report is completed. Downloading report from %s' % report_url
      
      # Download the report via the HTTPClient library and write it to disk.
      # The report is an XML document; the actual element names vary depending
      # on what type of report run and columns requested.

      client = HTTPClient.new
      report_data = client.get_content(report_url)
      file_name = '%s.xml' % report_name  # Add path to write report elsewhere.
      begin
        open(file_name, 'w') {|file| file.puts(report_data)}
        puts 'Report has been written to %s' % file_name

      rescue Errno::ENOENT, Errno::EACCES => e
	puts 'Unable to write file: %s' % e
      end
    else
      # Reports that pass validation will normally not fail, but if there is
      # an error in the report generation service it can sometimes happen.

      puts 'Report generation failed.'
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
    # Display API unit usage information. This data is stored as a class
    # variable in the AdWords::API class and accessed via static methods.
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
