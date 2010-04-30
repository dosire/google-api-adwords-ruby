#!/usr/bin/ruby
#
# Authors:: sgomes@google.com (Sérgio Gomes)
#           jeffy@google.com (Jeffrey Posnick)
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
# This library connects to Google's ClientLogin service and generates an
# AuthToken that can be used to login to the AdWords API.

require 'cgi'
require 'net/http'
require 'net/https'

module AdWords

  # Module providing the mechanism to obtain auth tokens for logging in to the
  # AdWords API (>= v200902).
  module AuthToken

    ACCOUNT_TYPE = 'GOOGLE'
    AUTH_PATH = '/accounts/ClientLogin'
    SERVICE = 'adwords'

    # Retrieve authentication token for logging in to the AdWords API.
    #
    # Args:
    # - email: the email address for the account being accessed
    # - password: the password for the account being accessed
    # - hostname: the hostname to connect to
    # - port: the port to connect to
    # - use_ssl: boolean indicating whether to use SSL or not
    #
    # Returns:
    # The auth token for the account (as a string).
    #
    # Raises:
    # AdWords::Error::AuthError if authentication fails.
    #
    def self.get_token(email, password, hostname, port, use_ssl)
      email = CGI.escape(email)
      password = CGI.escape(password)

      http_client = Net::HTTP.new(hostname, port)
      http_client.use_ssl = use_ssl
      # Avoid annoying warning
      http_client.verify_mode = OpenSSL::SSL::VERIFY_NONE

      data = "accountType=#{ACCOUNT_TYPE}&Email=#{email}&Passwd=#{password}" +
        "&service=#{SERVICE}"
      headers = {'Content-Type' => 'application/x-www-form-urlencoded'}

      response = http_client.post(AUTH_PATH, data, headers)

      if response.code == '200'
        return response.body[/Auth=(.*)/, 1]
      else
        raise AdWords::Error::AuthError,
            "Login failed for email %s: %s (code %d)" %
                [CGI.unescape(email), response.message, response.code]
      end
    end
  end
end
