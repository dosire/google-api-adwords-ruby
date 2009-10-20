#!/usr/bin/ruby
#
# Authors:: sgomes@google.com (Sérgio Gomes)
#           jeffy@google.com (Jeffrey Posnick)
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
# Collection of small patches to soap4r, used in the client library.

require 'rubygems'
begin
  gem 'soap4r', '=1.5.8'
rescue
  require_gem 'soap4r', '=1.5.8'
end
require 'soap/soap'
require 'soap/rpc/driver'

module SOAP

  # Fix an issue with SOAPDate. Google complains if the dates have any timezone
  # info in them. There are probably better ways to fix this.
  class SOAPDate

    def of2tz(offset)
      diffmin = offset * 24 * 60
      if diffmin.zero?
        ''
      else
        ((diffmin < 0) ? '-' : '+') << format('%02d:%02d',
          (diffmin.abs / 60.0).to_i, (diffmin.abs % 60.0).to_i)
      end
    end
  end

  # Fix an issue with base64 encoded items in responses, which causes them to
  # be encoded twice
  module Mapping
    class LiteralRegistry
      def base2obj(value, klass)
        v = if value.respond_to?(:data)
              value.data
            elsif value.respond_to?(:text)
              value.text
            else
              nil
            end
        ### Patch starts here ###
        if klass.to_s == 'SOAP::SOAPBase64'
          v
        ### Patch ends here ###
        elsif value.is_a?(klass)
          v
        else
          klass.to_data(v)
        end
      end
    end
  end

  # Monkey-patching soap4r to add a callback at the Proxy level. Not exactly the
  # prettiest way of doing things, but other callback levels in soap4r don't
  # provide all the information we need to log.
  module RPC

    class CallbackHandler

      # The callback handler takes a method name (the API method invoked), an
      # endpoint and the message envelope. This method is meant to be overloaded
      # in derived classes.
      def on_callback(method_name, endpoint, envelope)
        return nil
      end
    end

    class Driver
      # Use the Driver class's __attr_proxy method to declare getters and
      # setters for "callbackhandler". These reference the getters and setters
      # for the property with the same name in the Proxy object contained
      # within driver (@proxy).
      __attr_proxy :callbackhandler, true

    end

    class SubDriver < Driver

      def invoke(headers, body)
        if headers and !headers.is_a?(SOAPHeader)
          headers = create_header(headers)
        end
        set_wiredump_file_base(body.elename.name)
        env = @proxy.invoke(headers, body)
        if env.nil?
          return nil, nil
        else
          return env.header, env.body
        end
      end
    end

    class Proxy

      attr_accessor :callbackhandler

      # This method is a copy of the one included in soap4r, with the additions
      # marked below, to enable the callback.
      def call(name, *params)
        # name must be used only for lookup
        op_info = lookup_operation(name)
        mapping_opt = create_mapping_opt
        req_header = create_request_header
        req_body = SOAPBody.new(
          op_info.request_body(params, @mapping_registry,
            @literal_mapping_registry, mapping_opt)
        )
        reqopt = create_encoding_opt(
          :soapaction => op_info.soapaction || @soapaction,
          :envelopenamespace => @options["soap.envelope.requestnamespace"],
          :default_encodingstyle =>
            @default_encodingstyle || op_info.request_default_encodingstyle,
          :use_default_namespace =>
            op_info.use_default_namespace || @use_default_namespace
        )
        resopt = create_encoding_opt(
          :envelopenamespace => @options["soap.envelope.responsenamespace"],
          :default_encodingstyle =>
            @default_encodingstyle || op_info.response_default_encodingstyle
        )
        if reqopt[:generate_explicit_type].nil?
          reqopt[:generate_explicit_type] = (op_info.request_use == :encoded)
        end
        if resopt[:generate_explicit_type].nil?
          resopt[:generate_explicit_type] = (op_info.response_use == :encoded)
        end
        env = route(req_header, req_body, reqopt, resopt)
        if op_info.response_use.nil?
          return nil
        end
        raise EmptyResponseError unless env
        receive_headers(env.header)
        begin
          check_fault(env.body)
        rescue ::SOAP::FaultError => e
          op_info.raise_fault(e, @mapping_registry, @literal_mapping_registry)
        end

        ### Patch starts here ###
        if (!callbackhandler.nil?)
          callbackhandler.on_callback(name, @endpoint_url, env, params)
        end
        ### Patch ends here ###

        if @return_response_as_xml
          resopt[:response_as_xml]
        else
          op_info.response_obj(env.body, @mapping_registry,
            @literal_mapping_registry, mapping_opt)
        end
      end
    end
  end
end
