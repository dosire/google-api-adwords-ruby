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
# Tests the AdWords::Utils class

require 'rubygems'
require 'test/unit'
require 'fileutils'
require 'common_test_utils'
require 'adwords4r'

class TestUtils < Test::Unit::TestCase

  # Tests the get_categories method
  def test_get_categories
    data = AdWords::Utils.get_categories

    # Did we get anything back?
    assert_not_empty_list(data)

    # Did we get a list with the expected number of columns back?
    assert_column_number(2, data)
  end

  # Tests the get_countries method
  def test_get_countries
    data = AdWords::Utils.get_countries

    # Did we get anything back?
    assert_not_empty_list(data)

    # Did we get a list with the expected number of columns back?
    assert_column_number(2, data)
  end

  # Tests the get_currencies method
  def test_get_currencies
    data = AdWords::Utils.get_currencies

    # Did we get anything back?
    assert_not_empty_list(data)

    # Did we get a list with the expected number of columns back?
    assert_column_number(2, data)
  end

  # Tests the get_timezones method
  def test_get_timezones
    data = AdWords::Utils.get_timezones

    # Did we get anything back?
    assert_not_empty_list(data)
  end

  # Tests the get_us_cities method
  def test_get_us_cities
    data = AdWords::Utils.get_us_cities

    # Did we get anything back?
    assert_not_empty_list(data)

    # Did we get a list with the expected number of columns back?
    assert_column_number(2, data)
  end

  # Tests the get_us_metros method
  def test_get_us_metros
    data = AdWords::Utils.get_us_metros

    # Did we get anything back?
    assert_not_empty_list(data)

    # Did we get a list with the expected number of columns back?
    assert_column_number(3, data)
  end

  # Tests the get_world_cities method
  def test_get_world_cities
    data = AdWords::Utils.get_world_cities

    # Did we get anything back?
    assert_not_empty_list(data)

    # Did we get a list with the expected number of columns back?
    assert_column_number(2, data)
  end

  # Tests the get_world_regions method
  def test_get_world_regions
    data = AdWords::Utils.get_world_regions

    # Did we get anything back?
    assert_not_empty_list(data)

    # Did we get a list with the expected number of columns back?
    assert_column_number(3, data)
  end

  # Tests the get_operation_rates method
  def test_get_operation_rates
    data = AdWords::Utils.get_operation_rates

    # Did we get anything back?
    assert_not_empty_list(data)

    # Did we get a list with the expected number of columns back?
    assert_column_number(5, data)
  end

  private

  def assert_column_number(number_columns, data)
    data.each do |row|
      # Does this row have the right number of columns?
      assert_equal(number_columns, row.size,
          'Wrong number of columns returned. Line: ' + row.join(' || '))
    end
  end

  def assert_not_empty_list(data)
    assert_not_nil(data, 'No data returned: nil')
    assert(!data.empty?, 'No data returned: empty list')
    assert(!data.first.empty?, 'Invalid data returned: empty first row')
  end
end
