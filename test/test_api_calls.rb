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
# Tests that the basic mechanism for API calls is working properly.

require 'rubygems'
require 'test/unit'
require 'fileutils'
require 'common_test_utils'
require 'adwords4r'

class TestApiCalls < Test::Unit::TestCase

  # Initialize tests
  def setup
    @adwords = CommonTestUtils.create_api_object(self)

    @selector = AdWords::V200902::CampaignService::CampaignSelector.new
    stats_selector = {
      :dateRange => {
        :min => {
          :day => 1,
          :month => 1,
          :year => Time.new.year
        },
        :max => {
          :day => 31,
          :month => 12,
          :year => Time.new.year
        }
      }
    }
    @selector.statsSelector = stats_selector
  end

  # Test accessing v13 and v200902 with bad logins
  def test_bad_login
    cred_hash = {
      'developerToken' => 'INVALID',
      'useragent' => 'INVALID',
      'password' => 'INVALID',
      'email' => 'INVALID',
      'clientEmail' => 'INVALID',
      'applicationToken' => 'IGNORED',
      'alternateUrl' => 'https://sandbox.google.com/api/adwords/v13/'
    }
    adwords = AdWords::API.new(AdWords::AdWordsCredentials.new(cred_hash))

    # See if we get the right error back from the v13 sandbox
    campaign_srv_v13 = adwords.get_service(13, 'Campaign')
    assert_raise(AdWords::Error::GoogleInternalError) do
      campaign_srv_v13.getAllAdWordsCampaigns(0)
    end

    # See if we get the right error back from the v200902 sandbox
    campaign_srv_v200902 = adwords.get_service(200902, 'Campaign')
    assert_raise(AdWords::Error::AuthError) do
      result = campaign_srv_v200902.get(@selector)
    end
  end

  # Test accessing v13 and v200902 with valid logins
  def test_good_login
    account_srv_v13 = @adwords.get_service(13, 'Account')
    result = account_srv_v13.getClientAccounts
    assert_not_nil(result, 'Invalid result set returned')

    campaign_srv_v200902 = @adwords.get_service(200902, 'Campaign')
    result = campaign_srv_v200902.get(@selector)
    assert_not_nil(result, 'Invalid result set returned')
  end

  # Test making an API call with wrong parameter types
  def test_wrong_type
    campaign_srv_v13 = @adwords.get_service(13, 'Campaign')
    assert_raise(ArgumentError) do
      result = campaign_srv_v13.getAllAdWordsCampaigns('Invalid')
    end
  end

  # Test making an API call with wrong number of parameters
  def test_wrong_number
    campaign_srv_v13 = @adwords.get_service(13, 'Campaign')
    assert_raise(ArgumentError) do
      result = campaign_srv_v13.getAllAdWordsCampaigns(0, 0)
    end
  end
end
