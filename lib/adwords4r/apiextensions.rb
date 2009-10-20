#!/usr/bin/ruby
#
# Author:: sgomes@google.com (Sérgio Gomes)
#
# Copyright:: Copyright 2009, Google Inc. All Rights Reserved.
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
      [13, 'Info']   => ['getMethodUsage', 'getClientUnitsUsage']
    }

    # Defines the parameter list for every extension method
    @@methods = {
      'downloadXmlReport'   => ['job_id'],
      'downloadCsvReport'   => ['job_id'],
      'getMethodUsage'      => ['start_date', 'end_date'],
      'getClientUnitsUsage' => ['start_date', 'end_date']
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

    # <i>Extension method</i> -- Get a mapping between API methods and the
    # number of units used through them for a given amount of time.
    #
    # Running this helper method will consume 71 units.
    #
    # *Note*: unit data is not available in real time.
    #
    # Args:
    # - wrapper: the service wrapper object for any API methods that need to be
    #   called
    # - start_date: starting date for unit spend count (as a Date)
    # - end_date: starting date for unit spend count (as a Date)
    #
    # Returns:
    # Hash of <i>service</i>.<i>method</i> to the number of units used, e.g.,
    #  { 'AccountService.getAccountInfo' => 10,
    #    'AccountService.getClientAccountInfos' => 0, ...}
    #
    def self.getMethodUsage(wrapper, start_date, end_date)
      op_rates = AdWords::Utils.get_operation_rates
      usage = {}

      op_rates.each do |op|
        version, service, method = op
        if version == 'v13'
          usage[service + '.' + method] = wrapper.getUnitCountForMethod(service,
              method, start_date, end_date).getUnitCountForMethodReturn
        end
      end

      return usage
    end

    # <i>Extension method</i> -- Gets the quota usage per child of the entire
    # account tree below the root user. That is, for each child that is a client
    # manager, all units below that client manager are summed upwards. The
    # result is very useful for invoicing sub-MCCs that may have many clients
    # that units may be spent on.
    #
    # *Note*: unit data is not available in real time.
    #
    # Args:
    # - wrapper: the service wrapper object for any API methods that need to be
    #   called
    # - start_date: starting date for unit spend count (as a Date)
    # - end_date: starting date for unit spend count (as a Date)
    #
    # Returns:
    # - Hash of account to unit usage,
    #  { 'account1@domain.tld' => 10,
    #    'account2@domain.tld' => 0, ...}
    # - List of double counted children (account emails)
    #
    def self.getClientUnitsUsage(wrapper, start_date, end_date)
      # Create a new AdWords::API object to ensure thread-safety (we'll need to
      # change the clientEmail)
      adwords = AdWords::API.new(wrapper.api.credentials.dup)
      adwords.credentials.set_header('clientEmail', '')
      # Call unit_adder on the main user
      unit_map = client_unit_adder(adwords, start_date, end_date)
      # Pass back the spent unit information to the main AdWords::API object
      wrapper.api.mutex.synchronize do
        wrapper.api.last_units = adwords.total_units
        wrapper.api.total_units += adwords.total_units
      end
      return unit_map
    end

    private

    # Auxiliary recursive method to get the sum of units for an account and all
    # those under it, if any.
    #
    # Args:
    # - adwords: the AdWords::API object to be used for retrieving the client
    #   data
    # - start_date: starting date for unit spend count (as a Date)
    # - end_date: starting date for unit spend count (as a Date)
    #
    # Returns:
    # - Hash of account to unit usage,
    #  { 'account1@domain.tld' => 10,
    #    'account2@domain.tld' => 0, ...}
    # - List of double counted children (account emails)
    #
    def self.client_unit_adder(adwords, start_date, end_date)
      account_srv = adwords.get_service('Account', 13)
      if adwords.credentials.credentials['clientEmail'] == ''
        account_email = adwords.credentials.credentials['email']
      else
        account_email = adwords.credentials.credentials['clientEmail']
      end
      # Get list of accounts under the current one
      accounts = account_srv.getClientAccountInfos
      unit_map = {}
      doubles = []
      clients = accounts.select { |account| !account.isCustomerManager }
      managers = accounts.select { |account| account.isCustomerManager }
      client_emails = clients.map { |account| account.emailAddress }
      info_srv = adwords.get_service('Info', 13)

      # Get usage for clients
      client_usage =
          info_srv.getUnitCountForClients(client_emails, start_date, end_date)

      client_usage.each do |record|
        unit_map[record.clientEmail] = record.quotaUnits
      end

      managers.each do |account|
        # Create a new AdWords::API object to ensure thread-safety (we'll need
        # to change the clientEmail)
        sub_mcc = AdWords::API.new(adwords.credentials.dup)
        sub_mcc.credentials.set_header('clientEmail', account.emailAddress)
        # Recurse for sub-MCCs
        sub_unit_map, sub_doubles =
            client_unit_adder(sub_mcc, start_date, end_date)
        sub_unit_map.each_key do |entry|
          # Add any accounts already accounted for to the doubles list
          unless unit_map[entry].nil?
            doubles << entry unless doubles.include?(entry)
          end
        end
        # Merge unit maps, doubles and unit spend from the sub with the main
        unit_map.merge! sub_unit_map
        sub_doubles.each do |entry|
          doubles << entry unless doubles.include?(entry)
        end
        doubles += sub_doubles
        adwords.mutex.synchronize do
          adwords.total_units += sub_mcc.total_units
        end
      end

      # Calculate the sum for this account and add it to the hash as well
      sum = accounts.inject(0) do |result, account|
        result + unit_map[account.emailAddress]
      end
      unit_map[account_email] = sum
      return unit_map, doubles
    end
  end
end
