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
# Handles credentials for the SOAP requests, for both <= v13 and >= v2009.

require 'soap/header/simplehandler'
require 'adwords4r/authtoken'

module AdWords

  HEADER_NAMESPACE = 'https://adwords.google.com/api/adwords/cm/'

  # Handles the headers used in v2009 requests.
  class V2009HeaderHandler < SOAP::Header::SimpleHandler

    # Constructor for V2009HeaderHandler.
    #
    # Args:
    # - parent: AdWordsCredentials object containing the login credentials.
    #
    def initialize(parent, namespace, version)
      super(XSD::QName.new(namespace, 'RequestHeader'))
      @parent = parent
      @version = version
    end

    # Handles callback.
    def on_simple_outbound
      ns = HEADER_NAMESPACE
      ns += 'v' if @version.is_a? Integer
      ns += @version.to_s
      header = SOAP::SOAPElement.new(nil)
      auth_token = SOAP::SOAPElement.new(XSD::QName.new(ns, 'authToken'),
          @parent.auth_token)
      user_agent = SOAP::SOAPElement.new(XSD::QName.new(ns, 'userAgent'),
          @parent.credentials['userAgent'])
      dev_token = SOAP::SOAPElement.new(XSD::QName.new(ns, 'developerToken'),
          @parent.credentials['developerToken'])
      header.add(auth_token)
      header.add(user_agent)
      header.add(dev_token)

      if @parent.credentials['applicationToken']
        app_token = SOAP::SOAPElement.new(XSD::QName.new(ns,
            'applicationToken'), @parent.credentials['applicationToken'])
        header.add(app_token)
      end

      client_email_value = @parent.client_email
      client_cid_value = @parent.client_customer_id
      if client_email_value and client_email_value.length > 0
        client_email = SOAP::SOAPElement.new(XSD::QName.new(ns, 'clientEmail'),
            client_email_value)
        header.add(client_email)
      end
      if client_cid_value and client_cid_value.length > 0
        client_cid = SOAP::SOAPElement.new(
            XSD::QName.new(ns, 'clientCustomerId'), client_cid_value)
        header.add(client_cid)
      end
      if @parent.validate_only
        validate_only = SOAP::SOAPElement.new(
            XSD::QName.new(ns, 'validateOnly'), 'true')
        header.add(validate_only)
      end
      return header
    end
  end

  # Handles the headers used in <= v13 (both sandbox and production)
  class Pre2009HeaderHandler < SOAP::Header::SimpleHandler

    attr_reader :tag
    attr_writer :credentials

    # Constructor for Pre2009HeaderHandler.
    #
    # Args:
    # - tag: XML tag name to be handled (email, password, etc.)
    # - value: value to be sent inside tag on outgoing requests
    #
    def initialize(tag, credentials)
      super(XSD::QName.new(nil, tag))
      @tag = tag
      @credentials = credentials
    end

    # Handles callback.
    def on_simple_outbound
      if @tag == 'clientEmail'
        return @credentials.client_email
      elsif @tag == 'clientCustomerId'
        return @credentials.client_customer_id
      else
        @credentials.credentials[@tag]
      end
    end
  end

  # Generic credentials class, used for any API version.
  class AdWordsCredentials

    # Hash of credentials (credential key to value)
    attr_reader :credentials
    # The environment being used (production, sandbox)
    attr_reader :environment
    # Whether we're making MCC-level requests
    attr_accessor :use_mcc
    # Whether we're making validate-only requests
    attr_accessor :validate_only

    public

    # Constructor for AdWordsCredentials.
    #
    # Args:
    # - credentials: Hash of credentials (credential key to value). E.g.:
    #    {
    #     'developerToken' => 'user@domain.com++USD',
    #     'useragent' => 'Sample User Agent',
    #     'password' => 'password',
    #     'email' => 'user@domain.com',
    #     'clientEmail' => 'client_1+user@domain.com',
    #     'applicationToken' => 'IGNORED',
    #     'environment' => 'SANDBOX'
    #    }
    #
    def initialize(credentials=nil)
      @credentials = {}
      @environment = nil
      @auth_token = nil
      @handlers = []
      @use_mcc = false
      @validate_only = false
      credentials = get_defaults() if credentials.nil?
      credentials.each do |key, value|
        # 'environment' shouldn't go in the credentials array, and we'll ignore
        # 'alternateUrl' to avoid errors on upgraders' apps.
        if (key =~ /^alternateUrl/) && (credentials["environment"].nil?)
          raise AdWords::Error::Error,
              "'alternateUrl' is no longer supported. Please consult the " +
              "Readme on how to use 'environment' instead."
        elsif !(key =~ /^environment/)
          @credentials[key] = value
        end
      end

      # The user agent header differs in v13 (useragent) and v2009 (userAgent).
      # Properly populate both values, and use the name of the program ($0) if
      # nothing is given.
      user_agent = 'adwords4r: %s' % (@credentials['useragent'] ||
        @credentials['userAgent'] || $0)
      @credentials['useragent'] = @credentials['userAgent'] = user_agent

      # The properties file may include the clientEmail in a clientId property.
      # clientId might be a clientCustomerId, though, so check to make sure it
      # is an email address before assigning it to clientEmail.
      # clientCustomerIds don't seem to be supported elsewhere in this client
      # library, so ignore them.
      if @credentials['clientEmail'].nil? and @credentials['clientId'] and
          @credentials['clientId'].include?('@')
        @credentials['clientEmail'] = @credentials['clientId']
      end

      # Normalize 'token' to 'developerToken'
      if @credentials['developerToken'].nil? and @credentials['token']
        @credentials['developerToken'] = @credentials['token']
        @credentials.delete('token')
      end

      # Set environment
      if credentials['environment'].nil?
        # Get default environment
        @environment = AdWords::Service.get_default_environment
      elsif !(Service.get_environments.include?(credentials['environment']))
        raise AdWords::Error::Error,
            "Unknown environment: #{credentials['environment']}"
      else
        @environment = credentials['environment']
      end

      # Fix potential problems with changing clientEmail, by forcing it to be
      # created
      @credentials['clientEmail'] = '' if @credentials['clientEmail'].nil?

      # Check for environment mismatches.
      validate_headers_for_server

      @credentials.each do |key, value|
        @handlers << Pre2009HeaderHandler.new(key, self)
      end
    end

    # Returns the client email currently being used (dependent on whether
    # MCC-level requests are enabled or disabled)
    #
    # Returns:
    # Client email if use_mcc is false, empty string otherwise
    #
    def client_email
      if @use_mcc
        return ''
      else
        return @credentials['clientEmail']
      end
    end

    # Returns the client customer ID currently being used (dependent on whether
    # MCC-level requests are enabled or disabled)
    #
    # Returns:
    # Client customer ID if use_mcc is false, empty string otherwise
    #
    def client_customer_id
      if @use_mcc
        return ''
      else
        return @credentials['clientCustomerId']
      end
    end

    # Return a list of handlers to be inserted into the driver's handler list.
    #
    # Args:
    # - version: API version being used. Must be an integer.
    # - driver: the driver for the service being handled
    #
    # Returns:
    # The list of handlers (subclasses of SOAP::Header::SimpleHandler)
    #
    def get_handlers(version, driver)
      if version.is_a? Integer and version <= 13 then
        return @handlers
      else
        namespace = AdWords::Service.get_namespace_v2009(driver)
        return [V2009HeaderHandler.new(self, namespace, version)]
      end
    end

    # Returns the authentication token used with >= v2009 requests.
    # Generates it if there's no valid token already generated.
    #
    # Returns:
    # The auth token (as a string).
    #
    def auth_token
      generate_auth_token if @auth_token.nil?
      return @auth_token
    end

    # Generates a new authentication token used with >= v2009 requests.
    # The generated token is stored and can later be accessed with auth_token.
    # It should only be necessary for user code to invoke this if the first
    # token expires.
    #
    # Returns:
    # The auth token (as a string).
    #
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

      hostname, port, use_ssl = AdWords::Service.get_auth_server(@environment)
      @auth_token = AdWords::AuthToken::get_token(email, password, hostname,
          port, use_ssl)
      return @auth_token
    end

    # Change one of the authentication headers.
    #
    # Args:
    # - header: the name for the header being changed.
    # - value: the new value for the header.
    #
    def set_header(header, value)
      # Invalidate previous auth token if necessary
      @auth_token = nil if header == 'email' or header == 'password'

      @credentials.each_key do |key|
        if key == header then
          @credentials[key] = value
        end
      end
    end

    # Overloads the 'dup' method for AdWordsCredentials to correctly duplicate
    # objects of this class.
    #
    # Returns:
    # Duplicated AdWordsCredentials object
    #
    def dup
      creds = @credentials.dup
      # Remove the prepended 'adwords4r: ' string before creating the duplicate
      creds['userAgent']['adwords4r: '] = ''
      creds['environment'] = @environment unless @environment.nil?
      return AdWordsCredentials.new(creds)
    end

    private

    # Get the default credentials.
    # Loads them from the adwords.properties file in the directory specified by
    # the HOME environment variable.
    #
    # Returns:
    # Hash with the credentials (credential key to value).
    #
    def get_defaults
      cred = Hash.new
      IO.foreach(File.join(ENV['HOME'], 'adwords.properties')) do |line|
        unless line =~ /^#/
          split_line = line.split('=', 2)
          if (split_line.length == 2)
            cred[split_line[0].strip] = split_line[1].strip
          end
        end
      end
      return cred
    end

    # Validates that the right credentials are being used for the chosen
    # environment.
    #
    # Raises:
    # AdWords::Error::EnvironmentMismatchError if sandbox credentials are being
    # used for production or vice-versa.
    #
    def validate_headers_for_server
      email = @credentials['email']
      token = @credentials['developerToken']
      client = self.client_email

      sandbox_token = (token =~ /#{Regexp.escape(email)}\+\+[a-zA-Z]{3}/)
      sandbox_client = (client =~ /client_[1-5]\+#{Regexp.escape(email)}/)

      # Only check the token, because 'client_n+x@y.tld' may be a valid client
      # email for some customers.
      if @environment == 'PRODUCTION' and sandbox_token
        raise AdWords::Error::EnvironmentMismatchError,
            'Attempting to connect to production with sandbox credentials.'
      # Check if either the token or client email do not follow the correct
      # format. Client email may not exist, though.
      elsif @environment == 'SANDBOX' and (!sandbox_token or
          (client.length > 0 and !sandbox_client))
        raise AdWords::Error::EnvironmentMismatchError,
            'Attempting to connect to the sandbox with malformatted ' +
            'credentials. Please check ' +
            'http://code.google.com/apis/adwords/docs/developer/' +
            'adwords_api_sandbox.html#requestheaders for details.'
      end
    end
  end
end
