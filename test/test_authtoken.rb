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
# Tests the AdWords::AuthToken methods

require 'rubygems'
require 'test/unit'
require 'common_test_utils'
require 'adwords4r'

class TestAuthToken < Test::Unit::TestCase

  # Initialize tests
  def setup
    @adwords = CommonTestUtils.create_api_object(self)
  end

  # Test token generation
  def test_generation
    email = @adwords.credentials.credentials['email']
    password = @adwords.credentials.credentials['password']

    token = nil
    assert_nothing_raised do
      host, port, ssl = AdWords::Service.get_auth_server('SANDBOX')
      token = AdWords::AuthToken.get_token(email, password, host, port, ssl)
    end

    # Did we get back a non-empty string?
    assert((!token.nil? and !token.strip.empty?),
        'Null or empty token returned')
  end
end
