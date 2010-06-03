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
# Tests the functionality of the AdGroupService.

require 'rubygems'
require 'test/unit'
require 'fileutils'
require 'common_test_utils'
require 'adwords4r'

class TestAdGroupService200909 < Test::Unit::TestCase

  API_VERSION = 200909

  # Auxiliary method to check if an object matches an update operation
  def assert_updated_correctly(update_operation, updated_object,
      text = 'Ad group')
    operand = update_operation[:operand]
    assert_equal(operand[:id], updated_object.id, "#{text}: Incorrect ID")
    bids = update_operation[:operand][:bids]
    if bids.class.name.include?('ManualCPCAdGroupBids')
      if bids.keywordMaxCpc
        assert_equal(bids.keywordMaxCpc[:amount][:microAmount],
            updated_object.bids.keywordMaxCpc.amount.microAmount,
            "#{text}: Incorrect amount")
      elsif bids.siteMaxCpc
        assert_equal(bids.siteMaxCpc[:amount][:microAmount],
            updated_object.bids.siteMaxCpc.amount.microAmount,
            "#{text}: Incorrect amount")
      end
    elsif bids.class.name.include?('ManualCPMAdGroupBids')
      assert_equal(bids.maxCpm[:amount][:microAmount],
            updated_object.bids.maxCpm.amount.microAmount,
            "#{text}: Incorrect amount")
    end
  end

  # Auxiliary method to check if an object matches an add operation
  def assert_added_correctly(add_operation, added_object, text = 'Ad group')
    operand = add_operation[:operand]
    bids = add_operation[:operand][:bids]
    if bids.class.name.include?('ManualCPCAdGroupBids')
      if bids.keywordMaxCpc
        assert_equal(bids.keywordMaxCpc[:amount][:microAmount],
            added_object.bids.keywordMaxCpc.amount.microAmount,
            "#{text}: Incorrect amount")
      elsif bids.siteMaxCpc
        assert_equal(bids.siteMaxCpc[:amount][:microAmount],
            added_object.bids.siteMaxCpc.amount.microAmount,
            "#{text}: Incorrect amount")
      end
    elsif bids.class.name.include?('ManualCPMAdGroupBids')
      assert_equal(bids.maxCpm[:amount][:microAmount],
            added_object.bids.maxCpm.amount.microAmount,
            "#{text}: Incorrect amount")
    end
    assert_equal(operand[:name], added_object.name, "#{text}: Incorrect name")
    assert_equal(operand[:status], added_object.status,
        "#{text}: Incorrect status")
    assert_equal(operand[:campaignId], added_object.campaignId,
        "#{text}: Incorrect campaign ID")
  end

  # Initialize tests
  def setup
    @adwords = CommonTestUtils.create_api_object(self)
    @ad_group_srv = @adwords.get_service('AdGroup', API_VERSION)
    @cpc_campaign = nil
    @cpm_campaign = nil

    campaign_srv = @adwords.get_service('Campaign', API_VERSION)
    operation_cpc = {
      :operand => {
        :name => 'Campaign #%s' % (Time.new.to_f * 1000).to_i,
        :status => 'PAUSED',
        :biddingStrategy => campaign_srv.module::ManualCPC.new,
        :budget => {
          :period => 'DAILY',
          :amount => {
            :microAmount => 3000000
          },
          :deliveryMethod => 'STANDARD'
        }
      },
      :operator => 'ADD'
    }

    operation_cpm = {
      :operand => {
        :name => 'Campaign #%s' % (Time.new.to_f * 1000 + 1).to_i,
        :status => 'PAUSED',
        :biddingStrategy => campaign_srv.module::ManualCPM.new,
        :budget => {
          :period => 'DAILY',
          :amount => {
            :microAmount => 3000000
          },
          :deliveryMethod => 'STANDARD'
        }
      },
      :operator => 'ADD'
    }

    response = campaign_srv.mutate([operation_cpc, operation_cpm])
    campaigns = response.rval.value
    campaigns.each do |campaign|
      if campaign.biddingStrategy.biddingStrategy_Type == 'ManualCPC'
        @cpc_campaign = campaign
      elsif campaign.biddingStrategy.biddingStrategy_Type == 'ManualCPM'
        @cpm_campaign = campaign
      end
    end
  end

  # Tests whether we can add a CPC ad group.
  def test_add_ad_group_cpc
    bids = @ad_group_srv.module::ManualCPCAdGroupBids.new
    keyword_max_cpc = {
      :amount => {
        :microAmount => 1000000
      }
    }
    bids.keywordMaxCpc = keyword_max_cpc
    operation = {
      :operand => {
        :name => 'Ad Group #%s' % (Time.new.to_f * 1000).to_i,
        :status => 'PAUSED',
        :campaignId => @cpc_campaign.id,
        :bids => bids,
      },
      :operator => 'ADD'
    }

    # Add ad group.
    response = @ad_group_srv.mutate([operation])
    ad_group = response.rval.value.first

    assert_not_nil(ad_group, 'Invalid ad group returned')
    assert_added_correctly(operation, ad_group)
    @ad_group = ad_group
  end

  # Tests whether we can add a CPM ad group.
  def test_add_ad_group_cpm
    bids = @ad_group_srv.module::ManualCPMAdGroupBids.new
    max_cpm = {
      :amount => {
        :microAmount => 3000000
      }
    }
    bids.maxCpm = max_cpm
    operation = {
      :operand => {
        :name => 'Ad Group #%s' % (Time.new.to_f * 1000).to_i,
        :status => 'PAUSED',
        :campaignId => @cpm_campaign.id,
        :bids => bids,
      },
      :operator => 'ADD'
    }

    # Add ad group.
    response = @ad_group_srv.mutate([operation])
    ad_group = response.rval.value.first

    assert_not_nil(ad_group, 'Invalid ad group returned')
    assert_added_correctly(operation, ad_group)
  end

  # Tests whether we can add a site CPC ad group.
  def test_add_ad_group_site_cpc
    bids = @ad_group_srv.module::ManualCPCAdGroupBids.new
    site_max_cpc = {
      :amount => {
        :microAmount => 1000000
      }
    }
    bids.siteMaxCpc = site_max_cpc
    operation = {
      :operand => {
        :name => 'Ad Group #%s' % (Time.new.to_f * 1000).to_i,
        :status => 'PAUSED',
        :campaignId => @cpc_campaign.id,
        :bids => bids,
      },
      :operator => 'ADD'
    }

    # Add ad group.
    response = @ad_group_srv.mutate([operation])
    ad_group = response.rval.value.first

    assert_not_nil(ad_group, 'Invalid ad group returned')
    assert_added_correctly(operation, ad_group)
  end

  # Tests whether we can add several ad groups in one go.
  def test_add_ad_groups
    operations = []
    bid_1 = @ad_group_srv.module::ManualCPCAdGroupBids.new
    keyword_max_cpc = {
      :amount => {
        :microAmount => 1000000
      }
    }
    bid_1.keywordMaxCpc = keyword_max_cpc
    operations[0] = {
      :operand => {
        :name => 'Ad Group #%s' % (Time.new.to_f * 1000).to_i,
        :status => 'PAUSED',
        :campaignId => @cpc_campaign.id,
        :bids => bid_1,
      },
      :operator => 'ADD'
    }

    bid_2 = @ad_group_srv.module::ManualCPMAdGroupBids.new
    max_cpm = {
      :amount => {
        :microAmount => 2000000
      }
    }
    bid_2.maxCpm = max_cpm
    operations[1] = {
      :operand => {
        :name => 'Ad Group #%s' % (Time.new.to_f * 1000 + 1).to_i,
        :status => 'PAUSED',
        :campaignId => @cpm_campaign.id,
        :bids => bid_2,
      },
      :operator => 'ADD'
    }

    bid_3 = @ad_group_srv.module::ManualCPCAdGroupBids.new
    site_max_cpc = {
      :amount => {
        :microAmount => 1000000
      }
    }
    bid_3.siteMaxCpc = site_max_cpc
    operations[2] = {
      :operand => {
        :name => 'Ad Group #%s' % (Time.new.to_f * 1000 + 2).to_i,
        :status => 'PAUSED',
        :campaignId => @cpc_campaign.id,
        :bids => bid_3,
      },
      :operator => 'ADD'
    }

    # Add ad groups.
    response = @ad_group_srv.mutate(operations)
    ad_groups = response.rval.value
    assert_equal(3, response.rval.value.size,
        'Unexpected number of entries returned')
    0.upto(2) do |index|
      assert_not_nil(ad_groups[index], 'Invalid ad group returned')
      assert_added_correctly(operations[index], ad_groups[index],
          "Ad group ##{index + 1}")
    end

    @ad_group_1 = ad_groups[0]
    @ad_group_2 = ad_groups[1]
    @ad_group_3 = ad_groups[2]
  end

  # Tests whether we can fetch an existing ad group.
  def test_get_ad_group
    test_add_ad_group_cpc() unless @ad_group
    selector = @ad_group_srv.module::AdGroupSelector.new
    selector.adGroupIds = [@ad_group.id]
    response = @ad_group_srv.get(selector)
    assert_not_nil(response.rval.entries, 'Empty result set returned')
    assert_equal(1, response.rval.entries.size,
        'Unexpected number of entries returned')
    assert_equal(@ad_group.id, response.rval.entries.first.id)
  end

  # Tests whether we can fetch all existing ad groups.
  def test_get_all_ad_groups
    test_add_ad_groups() unless (@ad_group_1 and @ad_group_2 and @ad_group_3)
    found_1 = false
    found_2 = false
    found_3 = false
    selector = @ad_group_srv.module::AdGroupSelector.new
    response = @ad_group_srv.get(selector)
    assert_not_nil(response.rval.entries, 'Empty result set returned')
    response.rval.entries.each do |ad_group|
      found_1 = true if ad_group.id == @ad_group_1.id
      found_2 = true if ad_group.id == @ad_group_2.id
      found_3 = true if ad_group.id == @ad_group_3.id
    end
    assert(found_1, 'Ad group #1 not found in returned results')
    assert(found_2, 'Ad group #2 not found in returned results')
    assert(found_3, 'Ad group #3 not found in returned results')
  end

  # Tests whether we can update an ad group.
  def test_update_ad_group
    test_add_ad_group_cpc() unless @ad_group
    bids = @ad_group_srv.module::ManualCPCAdGroupBids.new
    keyword_max_cpc = {
      :amount => {
        :microAmount => 3000000
      }
    }
    bids.keywordMaxCpc = keyword_max_cpc
    operation = {
      :operand => {
        :id => @ad_group.id,
        :bids => bids,
      },
      :operator => 'SET'
    }

    # Update ad group.
    response = @ad_group_srv.mutate([operation])
    ad_group = response.rval.value.first

    assert_not_nil(ad_group, 'Invalid ad group returned')
    assert_updated_correctly(operation, ad_group)
  end

  # Tests whether we can update several ad groups in one go.
  def test_update_ad_groups
    test_add_ad_groups() unless @ad_group_1
    operations = []
    bid_1 = @ad_group_srv.module::ManualCPCAdGroupBids.new
    keyword_max_cpc = {
      :amount => {
        :microAmount => 3000000
      }
    }
    bid_1.keywordMaxCpc = keyword_max_cpc
    operations[0] = {
      :operand => {
        :id => @ad_group_1.id,
        :bids => bid_1,
      },
      :operator => 'SET'
    }

    bid_2 = @ad_group_srv.module::ManualCPMAdGroupBids.new
    max_cpm = {
      :amount => {
        :microAmount => 3000000
      }
    }
    bid_2.maxCpm = max_cpm
    operations[1] = {
      :operand => {
        :id => @ad_group_2.id,
        :bids => bid_2,
      },
      :operator => 'SET'
    }

    bid_3 = @ad_group_srv.module::ManualCPCAdGroupBids.new
    site_max_cpc = {
      :amount => {
        :microAmount => 3000000
      }
    }
    bid_3.siteMaxCpc = site_max_cpc
    operations[2] = {
      :operand => {
        :id => @ad_group_3.id,
        :bids => bid_3,
      },
      :operator => 'SET'
    }

    # Update ad groups.
    response = @ad_group_srv.mutate(operations)
    ad_groups = response.rval.value

    assert_equal(3, response.rval.value.size,
        'Unexpected number of entries returned')
    0.upto(2) do |index|
      assert_not_nil(ad_groups[index], 'Invalid ad group returned')
      assert_updated_correctly(operations[index], ad_groups[index],
          "Ad group ##{index + 1}")
    end
  end
end
