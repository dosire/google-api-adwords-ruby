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
# Wrapper class to handle logging to console and/or files.

require 'logger'

module AdWords

  class AdWordsLogger

    def initialize(filename, log_to_console=false)
      @filename = filename
      @loggers = []
      if log_to_console
        stderr_logger = Logger.new(STDERR)
        stderr_logger.level = Logger::INFO
        @loggers << stderr_logger
      end
    end

    # Enables logging to a file (path optional)
    def log_to_file(path=".#{File::SEPARATOR}")
      if path[-1, 1] == File::SEPARATOR
        normalized_path = path
      else
        normalized_path = path + File::SEPARATOR
      end
      new_logger = Logger.new(normalized_path + @filename)
      new_logger.level = Logger::INFO
      @loggers << new_logger

      return nil
    end

    # Overload << operator to perform logging
    def << (text)
      @loggers.each do |logger|
        logger.info text
      end
    end
  end
end
