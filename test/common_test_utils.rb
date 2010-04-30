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
# Common methods used in several tests.

$:.unshift File.join(File.dirname(__FILE__), '../lib')

require 'rubygems'
require 'adwords4r'
require 'test/unit'

module CommonTestUtils

  DATA_DIR = File.join(File.dirname(__FILE__), 'data')

  def self.create_api_object(test)
    adwords = AdWords::API.new
    test.assert_equal('SANDBOX', adwords.credentials.environment,
        'ERROR: Please use the sandbox environment when running unit tests')
    return adwords
  end
end
