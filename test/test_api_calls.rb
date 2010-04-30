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

    @latest_version = AdWords::Service.get_latest_version

    campaign_srv_v2009 = @adwords.get_service('Campaign', @latest_version)
    @selector = campaign_srv_v2009.module::CampaignSelector.new
    stats_selector = {
      :dateRange => {
        :min => Time.new.strftime('%Y0101'),
        :max => Time.new.strftime('%Y1231'),
      }
    }
    @selector.statsSelector = stats_selector
  end

  # Test accessing v13 with bad login
  def test_bad_login_v13
    cred_hash = {
      'developerToken' => 'invalid@domain.tld++USD',
      'useragent' => 'INVALID',
      'password' => 'INVALID',
      'email' => 'invalid@domain.tld',
      'clientEmail' => 'client_1+invalid@domain.tld',
      'applicationToken' => 'IGNORED',
      'environment' => 'SANDBOX'
    }
    adwords = AdWords::API.new(AdWords::AdWordsCredentials.new(cred_hash))

    # See if we get the right error back from the v13 sandbox
    account_srv_v13 = adwords.get_service('Account', 13)
    assert_raise(AdWords::Error::GoogleInternalError) do
      adwords.use_mcc do
        account_srv_v13.getClientAccounts()
      end
    end
  end

  # Test accessing v2009 with bad login
  def test_bad_login_v2009
    cred_hash = {
      'developerToken' => 'invalid@domain.tld++USD',
      'useragent' => 'INVALID',
      'password' => 'INVALID',
      'email' => 'invalid@domain.tld',
      'clientEmail' => 'client_1+invalid@domain.tld',
      'applicationToken' => 'IGNORED',
      'environment' => 'SANDBOX'
    }
    adwords = AdWords::API.new(AdWords::AdWordsCredentials.new(cred_hash))

    # See if we get the right error back from the v2009 sandbox
    campaign_srv_v2009 = adwords.get_service('Campaign', @latest_version)
    assert_raise(AdWords::Error::AuthError) do
      result = campaign_srv_v2009.get(@selector)
    end
  end

  # Test accessing v13 with valid logins
  def test_good_login_v13
    account_srv_v13 = @adwords.get_service('Account', 13)
    result = nil
    @adwords.use_mcc do
      result = account_srv_v13.getClientAccounts
    end
    assert_not_nil(result, 'Invalid result set returned')
  end

  # Test accessing v2009 with valid logins
  def test_good_login_v2009
    campaign_srv_v2009 = @adwords.get_service('Campaign', @latest_version)
    result = campaign_srv_v2009.get(@selector)
    assert_not_nil(result, 'Invalid result set returned')
  end

  # Test accessing an invalid environment
  def test_invalid_environment
    cred_hash = {
      'developerToken' => 'invalid@domain.tld++USD',
      'useragent' => 'INVALID',
      'password' => 'INVALID',
      'email' => 'invalid@domain.tld',
      'clientEmail' => 'client_1+invalid@domain.tld',
      'applicationToken' => 'IGNORED',
      'environment' => 'INVALID'
    }
    assert_raise(AdWords::Error::Error) do
      adwords = AdWords::API.new(AdWords::AdWordsCredentials.new(cred_hash))
    end
  end

  # Test accessing an invalid version
  def test_invalid_version
    assert_raise(AdWords::Error::Error) do
      @adwords.get_service('Campaign', 200101)
    end
  end

  # Test accessing an invalid service
  def test_invalid_service
    assert_raise(AdWords::Error::Error) do
      @adwords.get_service('Invalid')
    end
  end

  # Test accessing an invalid service for a given version
  def test_invalid_service_for_version
    assert_raise(AdWords::Error::Error) do
      @adwords.get_service('KeywordTool', @latest_version)
    end
  end

  # Test making an API call with wrong number of parameters
  def test_wrong_number
    campaign_srv = @adwords.get_service('Campaign', @latest_version)
    assert_raise(ArgumentError) do
      result = campaign_srv.get(0, 0)
    end
  end
end
