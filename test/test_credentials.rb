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
# Tests AdWords::AdWordsCredentials and associated classes

require 'rubygems'
require 'test/unit'
require 'fileutils'
require 'common_test_utils'
require 'adwords4r'

class TestCredentials < Test::Unit::TestCase

  # Test loading of credentials from the default location
  def test_credentials_from_file
    # Make sure that the adwords.properties file exists
    assert(File.exists?(File.join(ENV['HOME'], 'adwords.properties')),
        "adwords.properties not found in #{ENV['HOME']} . " +
        "Please create it for the test to proceed.")

    credentials = AdWords::AdWordsCredentials.new

    # This should have generated some sandbox credentials for us
    assert_not_nil(credentials, 'Error loading credentials from file')

    # Look for compulsory headers
    assert_not_nil(credentials.credentials['email'],
        "'email' not present in credentials")
    assert_not_nil(credentials.credentials['password'],
        "'password' not present in credentials")
    assert_not_nil(credentials.credentials['applicationToken'],
        "'applicationToken' not present in credentials")
        assert_not_nil(credentials.credentials['useragent'],
        "'useragent' not present in credentials")
    assert(!(credentials.credentials['token'].nil? and
        credentials.credentials['developerToken'].nil?),
        "Neither 'token' nor 'developerToken' present in credentials")

    # Look for alternateUrl, should be defined for the tests anyway
    assert_not_nil(credentials.alternateUrl,
        "'alternateUrl' not present in credentials")
  end

  # Test loading credentials from a hash
  def test_credentials_from_hash
    cred_hash = {
      'developerToken' => 'user@domain.com++USD',
      'useragent' => 'Sample User Agent',
      'password' => 'password',
      'email' => 'user@domain.com',
      'clientEmail' => 'client_1+user@domain.com',
      'applicationToken' => 'IGNORED',
      'alternateUrl' => 'https://sandbox.google.com/api/adwords/v13/'
    }

    credentials = AdWords::AdWordsCredentials.new(cred_hash)

    cred_hash.each do |key, value|
      # Is alternateUrl present and correct?
      if key == 'alternateUrl'
        assert_not_nil(credentials.alternateUrl,
            "'#{key}' not present in credentials")
        assert_equal(value, credentials.alternateUrl,
            "'#{key}' has different value in credentials")
      # Is every other key present and correct?
      else
        assert_not_nil(credentials.credentials[key],
            "'#{key}' not present in credentials")
        assert_equal(value, credentials.credentials[key],
            "'#{key}' has different value in credentials")
      end
    end
  end
end
