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
# This code sample illustrates how to perform asynchronous requests in v2009
# using the BulkMutateJobService.

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

    # Use the latest version for all services
    latest = AdWords::Service.latest_version
    bulk_mutate_job_srv = adwords.get_service('BulkMutateJob', latest)
    campaign_srv = adwords.get_service('Campaign', latest)
    ad_group_srv = adwords.get_service('AdGroup', latest)

    # You can create the required items either via hashes or as new Campaign,
    # AdGroup, etc. objects and set their properties. You can even mix both
    # approaches, as is done below.

    # Prepare for adding campaign.
    operation = {
      :operand => {
        :name => 'Sample Campaign - %s' % Time.new,
        :status => 'PAUSED',
        # The 'module' method being called here provides a shortcut to the
        # module containing the classes for this service. This helps us avoid
        # typing the full class name every time we need to create an object,
        # e.g. AdWords::V200906::CampainService::ManualCPC
        # It also makes it easier to migrate code between API versions.
        :biddingStrategy => campaign_srv.module::ManualCPC.new,
        :budget => {
          :period => 'DAILY',
          :amount => {
            :microAmount => 50000000
          },
          :deliveryMethod => 'STANDARD'
        }
      },
      :operator => 'ADD'
    }
    # Add campaign normally, synchronously (we can't do it simultaneously with
    # other operations because we need the campaign's ID to continue).
    response = campaign_srv.mutate([operation])
    campaign = response.rval.value.first
    puts 'Campaign id %d was successfully added.' % campaign.id

    # Prepare for adding ad group.
    bids = ad_group_srv.module::ManualCPCAdGroupBids.new
    keyword_max_cpc = {
      :amount => {
        :microAmount => 10000000
      }
    }
    bids.keywordMaxCpc = keyword_max_cpc
    operation = {
      :operand => {
        :name => 'Sample Ad Group - %s' % Time.new,
        :status => 'ENABLED',
        :campaignId =>  campaign.id,
        :bids => bids,
      },
      :operator => 'ADD'
    }

    # Add ad group normally, synchronously (we can't do it simultaneously with
    # other operations because we need the ad group's ID to continue).
    response = ad_group_srv.mutate([operation])
    ad_group = response.rval.value.first
    puts 'Ad group id %d was successfully added.' % ad_group.id

    # Prepare several new ads.
    ad_operations = []
    1.upto(10) do |i|
      ad_operation = bulk_mutate_job_srv.module::AdGroupAdOperation.new
      ad_operand = bulk_mutate_job_srv.module::AdGroupAd.new
      ad_operand.adGroupId = ad_group.id
      text_ad = bulk_mutate_job_srv.module::TextAd.new
      text_ad.url = 'http://www.example.com'
      text_ad.displayUrl = 'www.example.com'
      text_ad.headline = "Cruise to Mars Sector #{i}"
      text_ad.description1 = 'Visit the Red Planet in style.'
      text_ad.description2 = 'Low-gravity fun for everyone!'
      ad_operand.ad = text_ad
      ad_operand.status = 'ENABLED'
      ad_operation.operand = ad_operand
      ad_operation.operator = 'ADD'
      ad_operations[i-1] = ad_operation
    end

    # Create an operation stream for the ads
    ad_stream = bulk_mutate_job_srv.module::OperationStream.new
    ad_stream.scopingEntityId = {
      :type => 'CAMPAIGN_ID',
      :value => campaign.id
    }
    ad_stream.operations = ad_operations

    # Prepare several keywords.
    kwd_operations = []
    1.upto(10) do |i|
      kwd_operation =
          bulk_mutate_job_srv.module::AdGroupCriterionOperation.new
      kwd_operand = bulk_mutate_job_srv.module::BiddableAdGroupCriterion.new
      kwd_operand.adGroupId = ad_group.id
      keyword = bulk_mutate_job_srv.module::Keyword.new
      keyword.matchType = 'BROAD'
      keyword.text = "mars sector #{i}"
      kwd_operand.criterion = keyword
      kwd_operation.operand = kwd_operand
      kwd_operation.operator = 'ADD'
      kwd_operation.exemptionRequests = []
      kwd_operations[i-1] = kwd_operation
    end

    # Create an operation stream for the keywords
    kwd_stream = bulk_mutate_job_srv.module::OperationStream.new
    kwd_stream.scopingEntityId = {
      :type => 'CAMPAIGN_ID',
      :value => campaign.id
    }
    kwd_stream.operations = kwd_operations

    # Prepare a placement too.
    plc_operation = bulk_mutate_job_srv.module::AdGroupCriterionOperation.new
    plc_operand = bulk_mutate_job_srv.module::BiddableAdGroupCriterion.new
    plc_operand.adGroupId = ad_group.id
    placement = bulk_mutate_job_srv.module::Placement.new
    placement.url = 'http://www.ruby-forum.com/'
    plc_operand.criterion = placement
    plc_operation.operand = plc_operand
    plc_operation.operator = 'ADD'
    plc_operation.exemptionRequests = []

    # Create an operation stream for the placement
    plc_stream = bulk_mutate_job_srv.module::OperationStream.new
    plc_stream.scopingEntityId = {
      :type => 'CAMPAIGN_ID',
      :value => campaign.id
    }
    plc_stream.operations = [plc_operation]

    # Now, since we have all the objects ready to send, let's start preparing
    # the job

    # BulkMutateJob object for the first part (10 ads)
    job_1 = bulk_mutate_job_srv.module::BulkMutateJob.new
    job_1.numRequestParts = 2

    # Create the part
    ad_part = bulk_mutate_job_srv.module::BulkMutateRequest.new
    ad_part.partIndex = 0
    ad_part.operationStreams = ad_stream
    job_1.request = ad_part

    # Create job operation for the first part
    # This creates a new job in the queue and therefore uses 'ADD' as the
    # operation
    job_operation_1 = bulk_mutate_job_srv.module::JobOperation.new
    job_operation_1.operator = 'ADD'
    job_operation_1.operand = job_1

    # Schedule the first part of the job
    response_1 = bulk_mutate_job_srv.mutate(job_operation_1)
    job_id = response_1.rval.id
    puts 'Job id %d was successfully created.' % job_id

    # BulkMutateJob object for the second part (10 keywords and 1 placement)
    job_2 = bulk_mutate_job_srv.module::BulkMutateJob.new
    job_2.numRequestParts = 2
    # Set the job ID from the response on the second part, so that the service
    # knows which job this part belongs to
    job_2.id = job_id

    # Create the part
    criteria_part = bulk_mutate_job_srv.module::BulkMutateRequest.new
    criteria_part.partIndex = 1
    criteria_part.operationStreams = [kwd_stream, plc_stream]
    job_2.request = criteria_part

    # Create job operation for the second part part
    # This modifies an existing job in the queue, by submitting a new part, and
    # therefore uses 'SET' as the operation
    job_operation_2 = bulk_mutate_job_srv.module::JobOperation.new
    job_operation_2.operator = 'SET'
    job_operation_2.operand = job_2

    # Schedule the second part of the job
    response_2  = bulk_mutate_job_srv.mutate(job_operation_2)
    puts 'Second part of job %d successfully submitted.' % job_id

    # Since we have added all the parts, the job will now start automatically.
    # At this point we'll go into a loop, and periodically poll for completion.
    # 'PENDING' and 'PROCESSING' statuses indicate the job is still being run.
    sleep_interval = 10
    selector = bulk_mutate_job_srv.module::BulkMutateJobSelector.new
    selector.jobIds = [job_id]
    status = nil
    get_response = nil
    while status != 'COMPLETED' && status != 'FAILED'
      unless status.nil?
        puts "Current status is #{status}, waiting #{sleep_interval} seconds"
        sleep(sleep_interval) unless status.nil?
      end
      get_response = bulk_mutate_job_srv.get(selector)
      if get_response and get_response.entries and
        get_response.entries.size > 0
        status = get_response.entries[0].status
      else
        raise 'Error retrieving job status; aborting.'
      end
    end

    if status == 'COMPLETED'
      puts 'Job completed!'
      # Job complete, let's retrieve the results for the parts
      selector = bulk_mutate_job_srv.module::BulkMutateJobSelector.new
      selector.jobIds = [job_id]
      # Retrieve results for the first part
      selector.resultPartIndex = 0
      ad_part_results = bulk_mutate_job_srv.get(selector)
      if ad_part_results and ad_part_results.entries and
         ad_part_results.entries.size > 0
        job_result = ad_part_results.entries[0].result
        job_result.operationStreamResults.each do |stream_res|
          stream_res.each do |op_res|
            if op_res.is_a? bulk_mutate_job_srv.module::ReturnValueResult
              puts "Success adding ad id #{op_res.returnValue.adGroupAd.ad.id}."
            elsif op_res.is_a? bulk_mutate_job_srv.module::FailureResult
              puts "#{op_res.cause.errors.size} error(s) adding ad(s). " +
                   "Message: #{op_res.cause.message}"
            elsif op_res.is_a? bulk_mutate_job_srv.module::BatchFailureResult
              # Do nothing, covered above
            else
              puts "Unknown error adding ad. Got a #{op_res.class.to_s}."
            end
          end
        end
      else
        raise 'Error retrieving job results; aborting.'
      end
      # Retrieve results for the second part
      selector.resultPartIndex = 1
      criteria_part_results = bulk_mutate_job_srv.get(selector)
      if criteria_part_results and criteria_part_results.entries and
         criteria_part_results.entries.size > 0
        job_result = criteria_part_results.entries[0].result
        job_result.operationStreamResults.each do |stream_res|
          stream_res.each do |op_res|
            if op_res.is_a? bulk_mutate_job_srv.module::ReturnValueResult
              puts "Success adding criterion id " +
                   op_res.returnValue.adGroupCriterion.criterion.id.to_s
            elsif op_res.is_a? bulk_mutate_job_srv.module::FailureResult
              puts "#{op_res.cause.errors.size} error(s) adding ad(s). " +
                   "Message: #{op_res.cause.message}"
            elsif op_res.is_a? bulk_mutate_job_srv.module::BatchFailureResult
              # Do nothing, covered above
            else
              puts "Unknown error adding criterion. Got a #{op_res.class.to_s}"
            end
          end
        end
      else
        raise 'Error retrieving job results; aborting.'
      end
    else
      puts 'Job failed: ' + get_response.entries[0].failureReason
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
