#!/usr/bin/ruby
#
# Author:: jeffy@google.com (Jeffrey Posnick)
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
# This code sample illustrates how to schedule and download an AdWords report
# using the adwords4r client library.

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

    report_name = 'Report-%s' % DateTime.now.to_s

    report_srv = adwords.get_service('Report', 13)

    # The following example creates a Structure report with Keyword aggregation.
    # Because it is a Structure report, startDay and endDay values are ignored.
    # See http://www.google.com/apis/adwords/developer/ReportService.html for
    # more information about the different reports you can create.
    #
    # The 'module' method being called here provides a shortcut to the
    # module containing the classes for this service. This helps us avoid typing
    # the full class name every time we need to create an object, e.g.
    # AdWords::V13::ReportService::DefinedReportJob
    # It also makes it easier to migrate code between API versions.
    job = report_srv.module::DefinedReportJob.new
    job.selectedReportType = 'Structure'
    job.aggregationTypes = 'Keyword'
    job.name = report_name
    job.selectedColumns = %w{Campaign AdGroup Keyword KeywordTypeDisplay}
    job.startDay = Time.new.year.to_s + '-01-01'
    job.endDay = Time.new.year.to_s + '-01-31'

    # Validate the report definition to make sure it is valid.
    # If it is not, an AdWords::Error::ApiError will be thrown.
    report_srv.validateReportJob(job)

    # Since validation passed, schedule the report.
    job_id = report_srv.scheduleReportJob(job).scheduleReportJobReturn
    sleep_interval = 10
    puts 'Scheduled report with id %d. Now sleeping %d seconds.' %
        [job_id, sleep_interval]
    sleep(sleep_interval)

    puts 'Waiting for report to become available for download...'
    begin
      # Invoke client-side method that handles waiting and downloading the
      # report. This method is blocking for the calling thread.
      report_data = report_srv.downloadXmlReport(job_id)
      file_name = '%s.xml' % report_name  # Add path to write report elsewhere.
      open(file_name, 'w') { |file| file.puts(report_data) }
      puts 'Report has been written to %s' % file_name
    rescue AdWords::Error::Error => e
      puts 'Error downloading report: %s' % e
    rescue Errno::ENOENT, Errno::EACCES => e
      puts 'Unable to write file: %s' % e
    end

    begin
      # Invoke client-side method that handles waiting and downloading the
      # report in CSV format. This method is blocking for the calling thread.
      report_data = report_srv.downloadCsvReport(job_id)
      file_name = '%s.csv' % report_name  # Add path to write report elsewhere.
      open(file_name, 'w') { |file| file.puts(report_data) }
      puts 'Report has been written to %s' % file_name
    rescue AdWords::Error::Error => e
      puts 'Error downloading report: %s' % e
    rescue Errno::ENOENT, Errno::EACCES => e
      puts 'Unable to write file: %s' % e
    end

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
