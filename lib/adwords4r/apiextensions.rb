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
# Contains extensions to the API, that is, service helper methods provided in
# client-side by the client library.

require 'rexml/document'
require 'csv'

module AdWords

  module Extensions

    # Maintains a list of all extension methods, indexed by version and service.
    # Using camelCase to match API method names.
    @@extensions = {
      [13, 'Report'] => ['downloadXmlReport', 'downloadCsvReport'],
    }

    # Defines the parameter list for every extension method
    @@methods = {
      'downloadXmlReport'   => ['job_id'],
      'downloadCsvReport'   => ['job_id'],
    }

    # Return list of all extension methods, indexed by version and service.
    def self.extensions
      return @@extensions
    end

    # Return the parameter list for every extension method.
    def self.methods
      return @@methods
    end

    #########################################################################
    # NOTE: The following extension methods shouldn't be used directly; they
    # should instead be used from the services wrappers they get mapped to.
    # For example, you should use ReportServiceWrapper::downloadXmlReport
    # instead of Extensions::downloadXmlReport.
    #########################################################################

    # <i>Extension method</i> -- Download and return report data in XML format.
    #
    # *Warning*: this method is blocking for the calling thread.
    #
    # Args:
    # - wrapper: the service wrapper object for any API methods that need to be
    #   called
    # - job_id: the job id for the report to be downloaded
    #
    # Returns:
    # The xml for the report (as a string)
    #
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

    # <i>Extension method</i> -- Download and return report data in CSV format.
    #
    # *Warning*: this method is blocking for the calling thread.
    #
    # Args:
    # - wrapper: the service wrapper object for any API methods that need to be
    #   called
    # - job_id: the job id for the report to be downloaded
    # - xml: optional parameter used for testing and debugging
    #
    # Returns:
    # The CSV data for the report (as a string)
    #
    def self.downloadCsvReport(wrapper, job_id, report_xml=nil)
      # Get XML report data.
      report_xml = downloadXmlReport(wrapper, job_id) if report_xml.nil?

      begin
        # Construct DOM object.
        doc = REXML::Document.new(report_xml)

        # Get data columns.
        columns = []
        doc.elements.each('report/table/columns/column') do |column_elem|
          name = column_elem.attributes['name']
          columns << name unless name.nil?
        end

        # Get data rows.
        rows = []
        doc.elements.each('report/table/rows/row') do |row_elem|
          rows << row_elem.attributes unless row_elem.attributes.nil?
        end

        # Build CSV
        csv = ''
        CSV::Writer.generate(csv) do |writer|
          writer << columns
          rows.each do |row|
            row_values = []
            columns.each { |column| row_values << row[column] }
            writer << row_values
          end
        end

        return csv
      rescue REXML::ParseException => e
        # Error parsing XML
        raise AdWords::Error::Error,
            "Error parsing report XML: %s\nSource: %s" % [e, e.backtrace.first]
      end
    end
  end
end
