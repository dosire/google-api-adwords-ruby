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
# Contains extensions to the API, that is, service helper methods provided in
# client-side by the client library.

module AdWords

  module Extensions

    # Maintains a list of all extensions, indexed by version and service
    # Using camelCase to match API method names
    @@extensions = {
      [13, 'Report'] => ['downloadXmlReport']
    }

    # Defines the parameter list for every extension method
    @@methods = {
      'downloadXmlReport' => ['job_id']
    }

    def self.extensions
      return @@extensions
    end

    def self.methods
      return @@methods
    end

    # Download and return report data in XML format.
    # Warning: this method is blocking for the calling thread.
    def self.downloadXmlReport(wrapper, job_id)
      sleep_interval = 30

      # Repeatedly check the report status until it is finished.
      # 'Pending' and 'InProgress' statuses indicate the job is still being run.
      status = wrapper.getReportJobStatus(job_id).getReportJobStatusReturn
      while status != 'Completed' && status != 'Failed'
        sleep(sleep_interval)
        status = wrapper.getReportJobStatus(job_id).getReportJobStatusReturn
      end

      if status == 'Completed'
        report_url =
            wrapper.getReportDownloadUrl(job_id).getReportDownloadUrlReturn

        # Download the report via the HTTPClient library and return its
        # contents. The report is an XML document; the actual element names vary
        # depending on the type of report run and columns requested.
        begin
          client = HTTPClient.new
          return client.get_content(report_url)
        rescue Errno::ECONNRESET, SOAP::HTTPStreamError, SocketError => e
          # This exception indicates a connection-level error.
          # In general, it is likely to be transitory.
          raise AdWords::Error::Error, "Connection Error: %s\nSource: %s" %
              [e, e.backtrace.first]
        end
      else
        # Reports that pass validation will normally not fail, but if there is
        # an error in the report generation service it can sometimes happen.
        raise AdWords::Error::Error, 'Report generation failed.'
      end
    end
  end
end
