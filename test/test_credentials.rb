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

    # Look for environment, should be defined for the tests anyway
    assert_not_nil(credentials.environment,
        "'environment' not defined in credentials")
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
      'environment' => 'SANDBOX'
    }

    credentials = AdWords::AdWordsCredentials.new(cred_hash)

    cred_hash.each do |key, value|
      # Is environment present and correct?
      if key == 'environment'
        assert_not_nil(credentials.environment,
            "'#{key}' not defined in credentials")
        assert_equal(value, credentials.environment,
            "'#{key}' has different value in credentials")
      # The useragent is prepended with 'adwords4r: ' so it won't be an
      # exact match.
      elsif key == 'useragent'
        assert_match(/#{cred_hash[key]}$/, credentials.credentials[key],
                     "useragent is not properly populated in credentials.")
      # Is every other key present and correct?
      else
        assert_not_nil(credentials.credentials[key],
            "'#{key}' not present in credentials")
        assert_equal(value, credentials.credentials[key],
            "'#{key}' has different value in credentials")
      end
    end
  end

  # Test errors when trying to use sandbox credentials in production
  def test_sandbox_credentials_in_production
    cred_hash = {
      'developerToken' => 'user@domain.com++USD',
      'useragent' => 'Sample User Agent',
      'password' => 'password',
      'email' => 'user@domain.com',
      'clientEmail' => 'client_1+user@domain.com',
      'applicationToken' => 'IGNORED',
      'environment' => 'PRODUCTION'
    }

    # This should raise an error, because the developer token is wrong.
    assert_raise(AdWords::Error::EnvironmentMismatchError) do
      credentials = AdWords::AdWordsCredentials.new(cred_hash)
    end

    cred_hash = {
      'developerToken' => 'user@domain.com++USD',
      'useragent' => 'Sample User Agent',
      'password' => 'password',
      'email' => 'user@domain.com',
      'clientEmail' => 'user_2@domain.com',
      'applicationToken' => 'IGNORED',
      'environment' => 'PRODUCTION'
    }

    # This should raise an error, because the developer token is wrong.
    assert_raise(AdWords::Error::EnvironmentMismatchError) do
      credentials = AdWords::AdWordsCredentials.new(cred_hash)
    end

    cred_hash = {
      'developerToken' => 'xxxxxxxxxxx',
      'useragent' => 'Sample User Agent',
      'password' => 'password',
      'email' => 'user@domain.com',
      'clientEmail' => 'client_1+user@domain.com',
      'applicationToken' => 'IGNORED',
      'environment' => 'PRODUCTION'
    }

    # This should NOT raise an error, because it could be a valid client email.
    assert_nothing_raised do
      credentials = AdWords::AdWordsCredentials.new(cred_hash)
    end
  end

  # Test errors when trying to use production credentials in the sandbox
  def test_production_credentials_in_sandbox
    cred_hash = {
      'developerToken' => 'xxxxxxxxxxx',
      'useragent' => 'Sample User Agent',
      'password' => 'password',
      'email' => 'user@domain.com',
      'clientEmail' => 'user_2@domain.com',
      'applicationToken' => 'IGNORED',
      'environment' => 'SANDBOX'
    }

    # This should raise an error because the developer token and client email
    # are wrong.
    assert_raise(AdWords::Error::EnvironmentMismatchError) do
      credentials = AdWords::AdWordsCredentials.new(cred_hash)
    end

    cred_hash = {
      'developerToken' => 'xxxxxxxxxxx',
      'useragent' => 'Sample User Agent',
      'password' => 'password',
      'email' => 'user@domain.com',
      'clientEmail' => 'client_1+user@domain.com',
      'applicationToken' => 'IGNORED',
      'environment' => 'SANDBOX'
    }

    # This should raise an error because the developer token is wrong.
    assert_raise(AdWords::Error::EnvironmentMismatchError) do
      credentials = AdWords::AdWordsCredentials.new(cred_hash)
    end

    cred_hash = {
      'developerToken' => 'user@domain.com++USD',
      'useragent' => 'Sample User Agent',
      'password' => 'password',
      'email' => 'user@domain.com',
      'clientEmail' => 'user_2@domain.com',
      'applicationToken' => 'IGNORED',
      'environment' => 'SANDBOX'
    }

    # This should raise an error because the client email is wrong.
    assert_raise(AdWords::Error::EnvironmentMismatchError) do
      credentials = AdWords::AdWordsCredentials.new(cred_hash)
    end

    cred_hash = {
      'developerToken' => 'user@domain.com++USD',
      'useragent' => 'Sample User Agent',
      'password' => 'password',
      'email' => 'user@domain.com',
      'clientEmail' => '',
      'applicationToken' => 'IGNORED',
      'environment' => 'SANDBOX'
    }

    # This should NOT raise an error, as they're valid credentials.
    assert_nothing_raised do
      credentials = AdWords::AdWordsCredentials.new(cred_hash)
    end
  end
end
