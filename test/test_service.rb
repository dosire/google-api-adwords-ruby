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
# Tests the AdWords::Service class

require 'rubygems'
require 'test/unit'
require 'fileutils'
require 'common_test_utils'
require 'adwords4r'

class TestService < Test::Unit::TestCase
  # Test the get_versions method
  def test_get_versions
    versions = AdWords::Service.get_versions
    assert_not_nil(versions, 'Nothing returned')
  end

  # Test the get_services method
  def test_get_services
    services =
        AdWords::Service.get_services(AdWords::Service.get_versions.first)

    assert_kind_of(Array, services, 'Service list is not an array')

    services.each do |service|
      assert_kind_of(String, service, 'Service name is not a string')
    end
  end

  # Test the do_require method
  def test_do_require
    AdWords::Service.do_require(200909)
    # Does the name exist after loading?
    assert_nothing_raised do
      AdWords::V200909::CampaignService::CampaignServiceWrapper
    end
  end

  # Test the get_module_name method
  def test_get_module_name
    name = AdWords::Service.get_module_name(200909, 'Campaign')
    # Does it match what we expect?
    assert_equal('AdWords::V200909::CampaignService', name,
        'Module name does not match expected output')
  end

  # Test the get_interface_name method
  def test_get_interface_name
    name = AdWords::Service.get_interface_name(200909, 'Campaign')
    # Does it match what we expect?
    assert_equal('AdWords::V200909::CampaignService::CampaignServiceInterface',
        name, 'Interface name does not match expected output')
  end

  # Test the get_wrapper_name method
  def test_get_wrapper_name
    name = AdWords::Service.get_wrapper_name(200909, 'Campaign')
    # Does it match what we expect?
    assert_equal('AdWords::V200909::CampaignService::CampaignServiceWrapper',
        name, 'Wrapper name does not match expected output')
  end

  # Test the get_namespace_v2009 method
  def test_get_namespace_v2009
    latest = AdWords::Service::latest_version
    services = AdWords::Service::services(latest)
    services.each do |service|
      driver_name = AdWords::Service.get_interface_name(latest, service)
      driver = eval("#{driver_name}.new")
      assert_match(
          /https:\/\/adwords.google.com\/api\/adwords\/\w+\/v#{latest}/,
          AdWords::Service.get_namespace_v2009(driver),
          'Invalid namespace')
    end
  end
end
