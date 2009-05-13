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
# This library connects to Google's ClientLogin service and generates an
# AuthToken that can be used to login to the AdWords API.

require 'cgi'
require 'net/http'
require 'net/https'

module AdWords

  class AuthToken

    ACCOUNT_TYPE = 'GOOGLE'
    AUTH_HOSTNAME = 'www.google.com'
    AUTH_PATH = '/accounts/ClientLogin'
    AUTH_PORT = 443
    SERVICE = 'adwords'

    def self.get_token(email, password)
      email = CGI.escape(email)
      password = CGI.escape(password)

      http_client = Net::HTTP.new(AUTH_HOSTNAME, AUTH_PORT)
      http_client.use_ssl = true

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
