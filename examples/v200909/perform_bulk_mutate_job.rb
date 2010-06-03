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
# This code sample illustrates how to perform asynchronous requests in v2009
# using the BulkMutateJobService.
#
# Tags: BulkMutateJobService.mutate

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'

API_VERSION = 200909

def perform_bulk_mutate_job()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new
  bulk_mutate_job_srv = adwords.get_service('BulkMutateJob', API_VERSION)

  campaign_id = 'INSERT_CAMPAIGN_ID_HERE'.to_i
  ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i

  # Create an AdGroupAdOperation to add a text ad.
  ad_operation = bulk_mutate_job_srv.module::AdGroupAdOperation.new
  ad_operand = bulk_mutate_job_srv.module::AdGroupAd.new
  ad_operand.adGroupId = ad_group_id

  text_ad = bulk_mutate_job_srv.module::TextAd.new
  text_ad.url = 'http://www.example.com'
  text_ad.displayUrl = 'www.example.com'
  text_ad.headline = 'Luxury Cruise to Mars'
  text_ad.description1 = 'Visit the Red Planet in style.'
  text_ad.description2 = 'Low-gravity fun for everyone!'

  ad_operand.ad = text_ad
  ad_operation.operand = ad_operand
  ad_operation.operator = 'ADD'

  # Create an operation stream for the ads.
  ad_stream = bulk_mutate_job_srv.module::OperationStream.new
  ad_stream.scopingEntityId = {
    :type => 'CAMPAIGN_ID',
    :value => campaign_id
  }
  ad_stream.operations = [ad_operation]

  # Create AdGroupCriterionOperations to add keywords.
  # First keyword.
  kwd_operation_1 = bulk_mutate_job_srv.module::AdGroupCriterionOperation.new
  kwd_operand_1 = bulk_mutate_job_srv.module::BiddableAdGroupCriterion.new
  kwd_operand_1.adGroupId = ad_group_id

  keyword_1 = bulk_mutate_job_srv.module::Keyword.new
  keyword_1.matchType = 'BROAD'
  keyword_1.text = 'mars'

  kwd_operand_1.criterion = keyword_1
  kwd_operation_1.operand = kwd_operand_1
  kwd_operation_1.operator = 'ADD'

  # Second keyword.
  kwd_operation_2 = bulk_mutate_job_srv.module::AdGroupCriterionOperation.new
  kwd_operand_2 = bulk_mutate_job_srv.module::BiddableAdGroupCriterion.new
  kwd_operand_2.adGroupId = ad_group_id

  keyword_2 = bulk_mutate_job_srv.module::Keyword.new
  keyword_2.matchType = 'BROAD'
  keyword_2.text = 'cruise'

  kwd_operand_2.criterion = keyword_2
  kwd_operation_2.operand = kwd_operand_2
  kwd_operation_2.operator = 'ADD'

  # Create an operation stream for the keywords.
  kwd_stream = bulk_mutate_job_srv.module::OperationStream.new
  kwd_stream.scopingEntityId = {
    :type => 'CAMPAIGN_ID',
    :value => campaign_id
  }
  kwd_stream.operations = [kwd_operation_1, kwd_operation_2]

  # Create a job.
  # a. Create a bulk job object.
  job = bulk_mutate_job_srv.module::BulkMutateJob.new
  job.numRequestParts = 2

  # b. Create a part of the job.
  bulk_request_1 = bulk_mutate_job_srv.module::BulkMutateRequest.new
  bulk_request_1.partIndex = 0
  bulk_request_1.operationStreams = [ad_stream]
  job.request = bulk_request_1

  # c. Create job operation.
  job_operation_1 = bulk_mutate_job_srv.module::JobOperation.new
  job_operation_1.operator = 'ADD'
  job_operation_1.operand = job

  # d. Call mutate().
  response_1 = bulk_mutate_job_srv.mutate(job_operation_1)
  job_id = response_1.rval.id
  puts 'Job id %d was successfully created.' % job_id

  # Similarly, create the next part of the job.
  # Note: since we already created a job earlier, this time we modify it.
  job = bulk_mutate_job_srv.module::BulkMutateJob.new
  job.numRequestParts = 2
  job.id = job_id

  # Create the part.
  bulk_request_2 = bulk_mutate_job_srv.module::BulkMutateRequest.new
  bulk_request_2.partIndex = 1
  bulk_request_2.operationStreams = [kwd_stream]
  job.request = bulk_request_2

  job_operation_2 = bulk_mutate_job_srv.module::JobOperation.new
  job_operation_2.operator = 'SET'
  job_operation_2.operand = job

  response_2  = bulk_mutate_job_srv.mutate(job_operation_2)
  puts 'Second part of job %d successfully submitted.' % job_id

  # Wait for the job to complete.
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
    # Retrieve the results for the parts.
    0.upto(1) do |part_index|
      selector = bulk_mutate_job_srv.module::BulkMutateJobSelector.new
      selector.jobIds = [job_id]
      # Retrieve results for the first part.
      selector.resultPartIndex = part_index
      results = bulk_mutate_job_srv.get(selector)
      if results and results.entries and
        results.each do |result|
          puts 'Part %d/%d of job #%d has successfully completed' %
              [part_index + 1, job.numRequestParts, job_id]
        end
      else
        raise 'Error retrieving job results; aborting.'
      end
    end
  else
    puts 'Job failed: ' + get_response.entries[0].failureReason
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    perform_bulk_mutate_job()

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
