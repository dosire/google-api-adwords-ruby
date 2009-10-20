#!/usr/bin/ruby
#
# Authors:: sgomes@google.com (Sérgio Gomes)
#           jeffy@google.com (Jeffrey Posnick)
#           chanezon@google.com (Patrick Chanezon)
#           leavengood@gmail.com (Ryan Leavengood)
#
# Copyright:: Copyright 2009, Google Inc. All Rights Reserved.
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
# Helper methods for loading and managing the available services.

module AdWords

  # Contains helper methods for loading and managing the available services.
  module Service

    # Set defaults
    DEFAULT_VERSION = 13
    DEFAULT_ENVIRONMENT = 'PRODUCTION'

    # Configure the services available to each version
    @@services = {
      13 => ['Account', 'AdGroup', 'Ad', 'Campaign', 'Criterion', 'Info',
             'KeywordTool', 'Report', 'SiteSuggestion', 'TrafficEstimator'],
      200906 => ['AdGroupAd', 'AdGroupCriterion', 'AdGroup',
                 'CampaignCriterion', 'Campaign', 'CampaignTarget'],
      200909 => ['AdExtensionOverride', 'AdGroupAd', 'AdGroupCriterion',
                 'AdGroup', 'BulkMutateJob', 'CampaignAdExtension',
                 'CampaignCriterion', 'Campaign', 'CampaignTarget',
                 'GeoLocation', 'Info', 'TargetingIdea']
    }

    # Configure the different environments, with the base URL for each one
    @@environments = {
      'PRODUCTION' => {
        13 => 'https://adwords.google.com/api/adwords/',
        200906 => 'https://adwords.google.com/api/adwords/',
        200909 => 'https://adwords.google.com/api/adwords/'
      },
      'SANDBOX' => {
        13 => 'https://sandbox.google.com/api/adwords/',
        200906 => 'https://adwords-sandbox.google.com/api/adwords/',
        200909 => 'https://adwords-sandbox.google.com/api/adwords/'
      }
    }

    # Configure the subdirectories for each version / service pair.
    # A missing pair means that only the base URL is used.
    @@subdirs = {
      # v13
      [13, 'Account'] => 'v13/',
      [13, 'AdGroup'] => 'v13/',
      [13, 'Ad'] => 'v13/',
      [13, 'Campaign'] => 'v13/',
      [13, 'Criterion'] => 'v13/',
      [13, 'Info'] => 'v13/',
      [13, 'KeywordTool'] => 'v13/',
      [13, 'Report'] => 'v13/',
      [13, 'SiteSuggestion'] => 'v13/',
      [13, 'TrafficEstimator'] => 'v13/',
      # v200906
      [200906, 'AdGroupAd'] => 'cm/v200906/',
      [200906, 'AdGroupCriterion'] => 'cm/v200906/',
      [200906, 'AdGroup'] => 'cm/v200906/',
      [200906, 'CampaignCriterion'] => 'cm/v200906/',
      [200906, 'Campaign'] => 'cm/v200906/',
      [200906, 'CampaignTarget'] => 'cm/v200906/',
      # v200909
      [200909, 'AdExtensionOverride'] => 'cm/v200909/',
      [200909, 'AdGroupAd'] => 'cm/v200909/',
      [200909, 'AdGroupCriterion'] => 'cm/v200909/',
      [200909, 'AdGroup'] => 'cm/v200909/',
      [200909, 'BulkMutateJob'] => 'job/v200909/',
      [200909, 'CampaignAdExtension'] => 'cm/v200909/',
      [200909, 'CampaignCriterion'] => 'cm/v200909/',
      [200909, 'Campaign'] => 'cm/v200909/',
      [200909, 'CampaignTarget'] => 'cm/v200909/',
      [200909, 'GeoLocation'] => 'cm/v200909/',
      [200909, 'Info'] => 'info/v200909/',
      [200909, 'TargetingIdea'] => 'o/v200909/'
    }

    # Configure the auth servers to use for each environment
    # The tuplet should be (hostname, port, use_ssl?)
    @@auth_servers = {
      'PRODUCTION' => ['www.google.com', 443, true],
      'SANDBOX' => ['www.google.com', 443, true]
    }

    public

    # Get the available API versions.
    #
    # Returns:
    # List of versions available (as integers)
    #
    def self.get_versions
      @@services.keys
    end

    # Get the latest API version.
    #
    # Returns:
    # Latest version (as an integer)
    #
    def self.get_latest_version
      @@services.keys.select { |service| service.is_a? Integer }.max
    end

    # Does the given environment exist and contain the given version?
    #
    # Returns:
    # Boolean indicating whether the given environment exists and contains the
    # given version
    #
    def self.environment_has_version(environment, version)
      return (!@@environments[environment].nil? and
              !@@environments[environment][version].nil?)
    end

    # Does the given version exist and contain the given service?
    #
    # Returns:
    # Boolean indicating whether the given version exists and contains the
    # given service
    #
    def self.version_has_service(version, service)
      return (!@@services[version].nil? and
              @@services[version].include?(service))
    end

    # Get the default API version.
    #
    # Returns:
    # Default version (as an integer)
    #
    def self.get_default_version
      return DEFAULT_VERSION
    end

    # Get the list of service names for a given version
    #
    # Args:
    # - version: the API version (as an integer)
    #
    # Returns:
    # List of names of services (as strings) available for given version
    #
    def self.get_services(version)
      @@services[version]
    end

    # Get the available environments.
    #
    # Returns:
    # List of available environments (as strings)
    #
    def self.get_environments
      @@environments.keys
    end

    # Get the default environment.
    #
    # Returns:
    # Default environment (as a string)
    #
    def self.get_default_environment
      return DEFAULT_ENVIRONMENT
    end

    # Get the endpoint for a service on a given environment and API version.
    #
    # Args:
    # - environment: the service environment to be used (as a string)
    # - version: the API version (as an integer)
    # - service: the name of the API service (as a string)
    #
    # Returns:
    # The endpoint URL (as a string)
    #
    def self.get_endpoint(environment, version, service)
      base = @@environments[environment][version]
      path = @@subdirs[[version, service]]
      return base.to_s + path.to_s if base
    end

    # Get the subdirectory for a service, for a given API version.
    #
    # Args:
    # - version: the API version (as an integer)
    # - service: the name of the API service (as a string)
    #
    # Returns:
    # The endpoint URL (as a string)
    #
    def self.get_subdir(version, service)
      return @@subdirs[[version, service]]
    end

    # Get the authentication server details for an environment
    #
    # Args:
    # - environment: the service environment to be used (as a string)
    #
    # Returns:
    # Array containing
    # - the hostname for the auth server (as a string)
    # - the port for the auth server (as an integer)
    # - whether to use SSL or not (as a boolean)
    #
    def self.get_auth_server(environment)
      # If we don't have an entry for this environment, we just return the
      # default server (the same one being used for the default environment)
      if @@auth_servers[environment].nil?
        return @@auth_servers[DEFAULT_ENVIRONMENT]
      end

      return @@auth_servers[environment]
    end

    # Add a new environment to the list.
    #
    # Args:
    # - name: the name for the new environment
    # - endpoint_hash: a hash of base endpoint URLs, indexed by version number,
    #   e.g.:
    #    { 13 => 'URL_FOR_v13', 200906 => 'URL_FOR_v200906' }
    #
    def self.add_environment(name, endpoint_hash)
      @@environments[name] = endpoint_hash
    end

    # Perform the loading of the necessary source files for a version
    #
    # Args:
    # - version: the API version (as an integer)
    #
    def self.do_require(version)
      get_services(version).each do |service|
        eval("require 'adwords4r/v#{version}/#{service}ServiceWrapper.rb'")
      end
    end

    # Returns the full module name for a given service
    #
    # Args:
    # - version: the API version (as an integer)
    # - service: the service name (as a string)
    #
    # Returns:
    # The full module name for the given service (as a string)
    #
    def self.get_module_name(version, service)
      return "AdWords::V#{version.to_s}::#{service}Service"
    end

    # Returns the full interface class name for a given service
    #
    # Args:
    # - version: the API version (as an integer)
    # - service: the service name (as a string)
    #
    # Returns:
    # The full interface class name for the given service (as a string)
    #
    def self.get_interface_name(version, service)
      if version.is_a? Integer and version <= 13
        return get_module_name(version, service) + "::#{service}Interface"
      else
        return get_module_name(version, service) +
            "::#{service}ServiceInterface"
      end
    end

    # Returns the full wrapper class name for a given service
    #
    # Args:
    # - version: the API version (as an integer)
    # - service: the service name (as a string)
    #
    # Returns:
    # The full wrapper class name for the given service (as a string)
    #
    def self.get_wrapper_name(version, service)
      return get_module_name(version, service) + "::#{service}ServiceWrapper"
    end

    # Returns the namespace for a version and service
    #
    # Args:
    # - driver: the service driver
    #
    # Returns:
    # String with the namespace
    def self.get_namespace_v2009(driver)
      # This is a huge hack to get the correct namespace for a given service,
      # but short from configuring it ourselves there seems to be no other
      # option. This accesses one of the fields in the description of the
      # service's methods, which indicates the namespace.
      # Thankfully, since it's a constant and checked as part of our unit tests,
      # it should always work.
      return driver.class::Methods[0][2][0][2][1]
    end

    # Validates whether a parameter is of the correct type
    # This method is invoked by the wrappers during runtime to check the
    # validity of every parameter.
    #
    # Args:
    # - param_name: the parameter name (as a String)
    # - param: the parameter value
    # - type: the expected type (the class object itself)
    #
    # Returns:
    # nil, upon success
    #
    # Raises:
    # - ArgumentError: in case of an unexpected type
    #
    def self.validate_param(param_name, param, type)
      return nil if param.is_a? type

      begin
        type.new(param)
      rescue
        raise ArgumentError, "Parameter '#{param_name}'" +
            " should be convertible into type #{type.to_s}"
      end
      return nil
    end

    # Create a bunch of aliases for the static methods
    class << Service
      alias versions get_versions
      alias latest_version get_latest_version
      alias default_version get_default_version
      alias services get_services
      alias environments get_environments
      alias default_environment get_default_environment
      alias endpoint get_endpoint
      alias subdir get_subdir
      alias auth_server get_auth_server
      alias module_name get_module_name
      alias interface_name get_interface_name
      alias wrapper_name get_wrapper_name
      alias namespace_v2009 get_namespace_v2009
    end

  end
end
