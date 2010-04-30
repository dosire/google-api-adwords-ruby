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
# Tests the AdWords::AdWordsLogger class

require 'rubygems'
require 'test/unit'
require 'fileutils'
require 'common_test_utils'
require 'adwords4r'

class TestLogger < Test::Unit::TestCase

  LOGFILE = 'testlog.tmp'

  # Test logging
  def test_logging
    # Remove logfile, if it exists
    FileUtils.rm(LOGFILE) if File.exist?(LOGFILE)

    logger = AdWords::AdWordsLogger.new(LOGFILE, false)
    # Log some text
    logger << 'test1'
    # and some more
    logger << 'test2'

    # This shouldn't have been logged, because we haven't enabled logging yet
    assert(!File.exist?(LOGFILE), "Logfile shouldn't exist yet")

    # Activate logging and log some more
    logger.log_to_file
    logger << 'test3'
    logger << 'test4'

    output = File.read(LOGFILE)

    # Do we have the expected output?
    assert(!output.include?('test1'), 'String should not be present')
    assert(!output.include?('test2'), 'String should not be present')
    assert(output.include?('test3'), 'String should be present')
    assert(output.include?('test4'), 'String should be present')

    FileUtils.rm(LOGFILE) if File.exist?(LOGFILE)
  end
end
