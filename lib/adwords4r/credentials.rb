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
# Handles credentials for the SOAP requests, for both <= v13 and >= v200902.

require 'soap/header/simplehandler'
require 'adwords4r/authtoken'

module AdWords

  # Handles the headers used in the v200902 sandbox requests
  class Sandbox200902HeaderHandler < SOAP::Header::SimpleHandler

    # Receives an AdWordsCredentials object as parent
    def initialize(parent)
      namespace = 'https://adwords.google.com/api/adwords/cm/v200902'
      super(XSD::QName.new(namespace, 'RequestHeader'))
      @parent = parent
    end

    def on_simple_outbound
      return { :authToken => @parent.auth_token,
               :clientEmail => @parent.credentials['clientEmail'] }
    end
  end

  # Handles the headers used in <= v13 (both sandbox and production)
  class Pre200902HeaderHandler < SOAP::Header::SimpleHandler

    attr_reader :tag
    attr_writer :value

    # Receives a tag name (email, password, etc.) and a value to be sent in that
    # tag for outgoing requests
    def initialize(tag, value)
      super(XSD::QName.new(nil, tag))
      @tag = tag
      @value = value
    end

    def on_simple_outbound
      @value
    end
  end

  # Generic credentials class, used for any API version
  class AdWordsCredentials

    attr_reader :credentials, :alternateUrl

    public

    def initialize(*parm)
      @credentials = {}
      @alternateUrl = nil
      @auth_token = nil
      @handlers = []
      if parm[0]
        credentials = parm[0]
      else
        credentials = get_defaults()
      end
      credentials.each do |key, value|
        @credentials[key] = value if !(key =~ /^alternateUrl/)
      end
      @alternateUrl = credentials['alternateUrl']
      @credentials.each do |key, value|
        @handlers << Pre200902HeaderHandler.new(key, value)
      end
    end

    # Return a list of handlers to be inserted into the driver's handler list
    def get_handlers(version)
      if (version <= 13)
        return @handlers
      else
        return [Sandbox200902HeaderHandler.new(self)]
      end
    end

    # Returns the authentication token used with >= v200902 requests
    def auth_token
      generate_auth_token if @auth_token.nil?
      return @auth_token
    end

    # Generates a new authentication token used with >= v200902 requests
    # (should only be necessary for user code to invoke this if the first token
    # expires)
    def generate_auth_token
      email = @credentials['email']
      password = @credentials['password']

      if email.nil?
        raise AdWords::Error::AuthError,
            'Email address not included in credentials.'
      end

      if password.nil?
        raise AdWords::Error::AuthError, 'Password not included in credentials.'
      end

      @auth_token = AdWords::AuthToken::get_token(email, password)
      return @auth_token
    end

    # Changes one of the headers
    def set_header(header, value)
      # Invalidate previous auth token if necessary
      @auth_token = nil if header == 'email' or header == 'password'

      @credentials.each_key do |key|
        if key == header then
          @credentials[key] = value
        end
      end

      @handlers.each do |handler|
        if handler.tag == header then
          handler.value = value
        end
      end
    end

    private

    def get_defaults
      cred = Hash.new
      IO.foreach("#{ENV['HOME']}/adwords.properties") do |line|
        add_credential(cred, line.split('=')) if !(line =~ /^#/)
      end
      return cred
    end

    def add_credential(cred, arr)
      cred[arr[0]] = arr[1].strip
    end
  end
end
