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
# Contains global utility methods.

require 'csv'

module AdWords

  module Utils

    public

    # Retrieve list of available advertising categories.
    #
    # Returns:
    # - list of lists. Columns: path, name
    #
    def self.get_categories
      return get_multiple_column_list('categories.csv')
    end

    # Retrieve list of available countries.
    #
    # Returns:
    # - list of lists. Columns: country, code
    #
    def self.get_countries
      return get_multiple_column_list('countries.csv')
    end

    # Retrieve list of available currencies.
    #
    # Returns:
    # - list of lists. Columns: code, currency
    #
    def self.get_currencies
      return get_multiple_column_list('currencies.csv')
    end

    # Retrieve list of available timezones.
    #
    # Returns:
    # - simple list of timezone names
    #
    def self.get_timezones
      return get_single_column_list('timezones.csv')
    end

    # Retrieve list of available US cities.
    #
    # Returns:
    # - list of lists. Columns: state, code
    #
    def self.get_us_cities
      return get_multiple_column_list('us_cities.csv')
    end

    # Retrieve list of available US metropolitan areas.
    #
    # Returns:
    # - list of lists. Columns: state, metro, code
    #
    def self.get_us_metros
      return get_multiple_column_list('us_metros.csv')
    end

    # Retrieve list of available world cities.
    #
    # Returns:
    # - list of lists. Columns: country, code
    #
    def self.get_world_cities
      return get_multiple_column_list('world_cities.csv')
    end

    # Retrieve list of available world regions.
    #
    # Returns:
    # - list of lists. Columns: country, code, region
    #
    def self.get_world_regions
      return get_multiple_column_list('world_regions.csv')
    end

    # Retrieve list of API operation rates.
    #
    # Returns:
    # - list of lists. Columns: service, method, rate, per_item
    #
    def self.get_operation_rates
      return get_multiple_column_list('ops_rates.csv')
    end

    private

    # Returns the directory where the CSV files are located.
    #
    # Returns:
    # - path to the CSV file directory, as a string
    #
    def self.csv_dir
      File.join(File.dirname(__FILE__), 'data')
    end

    # Gets the CSV data from a file as a simple list.
    #
    # Args:
    # - filename: the name of the file to open, as a string (no path)
    #
    # Returns:
    # - simple list
    #
    def self.get_single_column_list(filename)
      data = []
      CSV.open(File.join(csv_dir, filename), 'r') do |row|
        data << row[0]
      end
      # Remove last row if it's empty
      data.delete_at(-1) if data[-1].nil?
      # Return everything but the first row (column names)
      rows = data[1..-1]
      return rows
    end

    # Gets the CSV data from a file as a list of lists.
    #
    # Args:
    # - filename: the name of the file in the csv_dir to open, as a string (no
    #   path)
    #
    # Returns:
    # - list of lists
    #
    def self.get_multiple_column_list(filename)
      data = CSV.read(File.join(csv_dir, filename))
      # Remove last row if it's empty
      data.delete_at(-1) if data[-1].nil? or data[-1][0].nil?
      # Return everything but the first row (column names)
      return data[1..-1]
    end

    # Gets the CSV data from a file as a list of hashes, where each hash maps a
    # column name to its value.
    #
    # Args:
    # - filename: the name of the file to open, as a string (no path)
    #
    # Returns:
    # - list of hashes
    #
    def self.map_names_to_columns(filename)
      begin
        data = []
        reader = CSV.open(File.join(csv_dir, filename), 'r')
        columns = reader.shift
        result = reader.map do |row|
          unless row[0].nil?
            hash_row = {}
            columns.each_with_index do |column, index|
              hash_row[column] = row[index]
            end
            hash_row
          end
        end
        # Remove last row if it's empty
        result.delete_at(-1) if result[-1].nil?
        return result
      ensure
        reader.close unless reader.nil?
      end
    end
  end
end
