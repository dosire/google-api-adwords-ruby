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
# Tests the functionality of the CampaignService.

require 'rubygems'
require 'test/unit'
require 'fileutils'
require 'common_test_utils'
require 'adwords4r'

class TestCampaignService201003 < Test::Unit::TestCase

  API_VERSION = 201003

  # Auxiliary method to check if an object matches an update operation
  def assert_updated_correctly(update_operation, updated_object,
      text = 'Campaign')
    operand = update_operation[:operand]
    assert_equal(operand[:id], updated_object.id, "#{text}: Incorrect ID")
    assert_equal(operand[:budget][:deliveryMethod],
        updated_object.budget.deliveryMethod,
        "#{text}: Incorrect delivery method")
  end

  # Auxiliary method to check if an object matches an add operation
  def assert_added_correctly(add_operation, added_object, text = 'Campaign')
    operand = add_operation[:operand]
    assert_equal(operand[:name], added_object.name, "#{text}: Incorrect name")
    assert_equal(operand[:status], added_object.status,
        "#{text}: Incorrect status")
    assert_equal(operand[:biddingStrategy].class,
        added_object.biddingStrategy.class,
        "#{text}: Incorrect bidding strategy")
    assert_equal(operand[:budget][:period], added_object.budget.period,
        "#{text}: Incorrect period")
    assert_equal(operand[:budget][:amount][:microAmount],
        added_object.budget.amount.microAmount, "#{text}: Incorrect amount")
    assert_equal(operand[:budget][:deliveryMethod],
        added_object.budget.deliveryMethod,
        "#{text}: Incorrect delivery method")
  end

  # Initialize tests
  def setup
    @adwords = CommonTestUtils.create_api_object(self)
    @campaign_srv = @adwords.get_service('Campaign', API_VERSION)
  end

  # Tests whether we can add a campaign.
  def test_add_campaign
    operation = {
      :operand => {
        :name => 'Interplanetary Cruise #%s' % (Time.new.to_f * 1000).to_i,
        :status => 'PAUSED',
        :biddingStrategy => @campaign_srv.module::ManualCPC.new,
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

    # Add campaign.
    response = @campaign_srv.mutate([operation])
    campaign = response.rval.value.first

    assert_not_nil(campaign, 'Invalid campaign returned')
    assert_added_correctly(operation, campaign)
    @campaign = campaign
  end

  # Tests whether we can add several campaigns in one go.
  def test_add_campaigns
    operations = []
    operations[0] = {
      :operand => {
        :name => 'Interplanetary Cruise #%s' % (Time.new.to_f * 1000).to_i,
        :status => 'PAUSED',
        :biddingStrategy => @campaign_srv.module::ManualCPC.new,
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

    operations[1] = {
      :operand => {
        :name => 'Interplanetary Cruise #%s' % (Time.new.to_f * 1000 + 1).to_i,
        :status => 'PAUSED',
        :biddingStrategy => @campaign_srv.module::ManualCPC.new,
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

    # Add ad groups.
    response = @campaign_srv.mutate(operations)
    campaigns = response.rval.value
    assert_equal(2, response.rval.value.size,
        'Unexpected number of entries returned')
    0.upto(1) do |index|
      assert_not_nil(campaigns[index], 'Invalid campaign returned')
      assert_added_correctly(operations[index], campaigns[index],
          "Campaign ##{index + 1}")
    end

    @campaign_1 = campaigns[0]
    @campaign_2 = campaigns[1]
  end

  # Tests whether we can fetch an existing campaign.
  def test_get_campaign
    test_add_campaign() unless @campaign
    selector = @campaign_srv.module::CampaignSelector.new
    selector.ids = [@campaign.id]
    response = @campaign_srv.get(selector)
    assert_not_nil(response.rval.entries, 'Empty result set returned')
    assert_equal(1, response.rval.entries.size,
        'Unexpected number of entries returned')
    assert_equal(@campaign.id, response.rval.entries.first.id)
  end

  # Tests whether we can fetch all existing campaigns.
  def test_get_all_campaigns
    test_add_campaigns() unless (@campaign_1 and @campaign_2)
    found_1 = false
    found_2 = false
    selector = @campaign_srv.module::CampaignSelector.new
    response = @campaign_srv.get(selector)
    assert_not_nil(response.rval.entries, 'Empty result set returned')
    response.rval.entries.each do |campaign|
      found_1 = true if campaign.id == @campaign_1.id
      found_2 = true if campaign.id == @campaign_2.id
    end
    assert(found_1, 'Campaign #1 not found in returned results')
    assert(found_2, 'Campaign #2 not found in returned results')
  end

  # Tests whether we can update a campaign.
  def test_update_campaign
    test_add_campaign() unless @campaign
    operation = {
      :operand => {
        :id => @campaign.id,
        :budget => {
          :deliveryMethod => 'ACCELERATED'
        }
      },
      :operator => 'SET'
    }

    # Update campaign.
    response = @campaign_srv.mutate([operation])
    campaign = response.rval.value.first

    assert_not_nil(campaign, 'Invalid campaign returned')
    assert_updated_correctly(operation, campaign)
  end

  # Tests whether we can update several campaigns in one go.
  def test_update_campaigns
    test_add_campaigns() unless @campaign_1 and @campaign_2
    operations = []
    operations[0] = {
      :operand => {
        :id => @campaign_1.id,
        :budget => {
          :deliveryMethod => 'ACCELERATED'
        }
      },
      :operator => 'SET'
    }

    operations[1] = {
      :operand => {
        :id => @campaign_2.id,
        :budget => {
          :deliveryMethod => 'ACCELERATED'
        }
      },
      :operator => 'SET'
    }

    # Update campaigns.
    response = @campaign_srv.mutate(operations)
    campaigns = response.rval.value

    assert_equal(2, response.rval.value.size,
        'Unexpected number of entries returned')
    0.upto(1) do |index|
      assert_not_nil(campaigns[index], 'Invalid campaign returned')
      assert_updated_correctly(operations[index], campaigns[index],
          "Campaign ##{index + 1}")
    end
  end
end
