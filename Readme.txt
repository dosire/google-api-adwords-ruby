= Google adwords4r Library

Welcome to adwords4r: Bringing the delights of Ruby programming to the AdWords
world!

Documentation and comments are a work in progress.


= Useful Web Resources

- {AdWords home}[https://adwords.google.com/]
- {AdWords API discussion forum}[http://groups.google.com/group/adwords-api]
- {AdWords API documentation}[http://code.google.com/apis/adwords/docs/developer/index.html]
- {This project's Google Code page}[http://code.google.com/p/google-api-adwords-ruby/]


= Docs for Users

== 1 - Installation:

adwords4r is a ruby gem.  See http://docs.rubygems.org/read/book/1

Install it using the gem install command.
   $ gem install --remote adwords4r

The following gem libraries are required:
- soap4r v1.5.8
- httpclient v2.1.2 or greater


== 2 - Using the client library:

It's pretty easy to use.
See http://docs.rubygems.org/read/chapter/3#page70 for how to set the rubygem
environment.
   $ export RUBYOPT=rubygems
or
   $ ruby -rubygems my_program_that_uses_gems

If you do not use the rubygems option, you need to add
   require 'rubygems'
at the beginning of your programs.

Then:
   require 'adwords4r'

   adwords = AdWords::API.new
creates a driver for the latest version of AdWords API using a credentials file
in ENV['HOME']/adwords.properties
There is an example credentials in the root adwords4r directory.
You can also pass API a manually constructed AdWordsCredentials object like:
   adwords = AdWords::API.new(AdWords::AdWordsCredentials.new({
     'developerToken' => 'DEVELOPER_TOKEN',
     'applicationToken' => 'APPLICATION_TOKEN',
     'useragent' => 'Ruby Sample',
     'password' => 'PASSWORD',
     'email' => 'user@domain.com'
     'clientEmail' => 'user2@domain.com',
     'environment' => 'PRODUCTION',
   }))

Then, just specify which service you're looking to use, and which version:
   account_srv = adwords.get_service(13, 'Account')

and you should now be able to just use the API methods in the object you were
returned:
   client_accounts = account_srv.getClientAccounts

See the code in the examples directory for working examples you can build from.

*Note*: if your setup requires you to send connections through a proxy server,
please set the HTTP_PROXY environment variable. For example, from your code:
   $ ENV['HTTP_PROXY'] = 'http://myproxyserver:8080'


=== 2.1 - Using the Sandbox and other environments:

In order to use the v13 and v2009 sandboxes, make sure that the 'environment'
parameter in the credentials is set to SANDBOX.
   environment=SANDBOX

Should you need to use an environment other than production or sandbox, you can
add it to the list of environments in runtime:
   AdWords::Service::add_environment('ENVIRONMENT_NAME', {
       13 => 'URL_FOR_v13',
       200906 => 'URL_FOR_v200906'
   })
and then use it normally in your code:
   credentials.environment = 'ENVIRONMENT_NAME'

Make sure you only include the base URL, that is, the URL up until the "adwords"
part, leaving the version and group out. Here's an example:
   AdWords::Service::add_environment('SANDBOX', {
       13 => 'https://sandbox.google.com/api/adwords/',
       200906 => 'https://adwords-sandbox.google.com/api/adwords/'
   }


=== 2.2 - Mixing v13 and v2009:

It's possible to access both the v13 and v2009 sandboxes or production
environments simultaneously. Since both versions share a common backend storage,
it is possible for your application to choose between v13 and v2009 services
at will, mixing and matching them.

The multiple_versions.rb code sample shows you how to build an application using
v13 and v2009 services simultaneously.


=== 2.3 - Logging:

It is often useful to see a trace of the raw SOAP XML being sent and received.
The quickest way of achieving this when debugging your application is by setting
the ADWORDS4R_DEBUG environment variable to TRUE; e.g. in the bash shell:
   $ export ADWORDS4R_DEBUG=TRUE
or from your Ruby code:
   ENV['ADWORDS4R_DEBUG'] = 'TRUE'

This will output the SOAP XML to stderr, which will usually show up in your
terminal window.

There's also the option of logging requests and XML to files. In order to enable
this, you should use the write_to_file method of the loggers inside your
   AdWords::API object:
   adwords = AdWords::API.new
   adwords.unit_logger.log_to_file
   adwords.xml_logger.log_to_file

The first logs the units spent and the requests made, whereas the second logs
the full SOAP XML being sent and received over the wire. These will be written
to the current directory by default, but you can specify a path as an optional
parameter to log_to_file:
   adwords.unit_logger.log_to_file('/var/log/my_app')
   adwords.xml_logger.log_to_file('/var/log/my_app')

The files will be named request_info and soap_xml, respectively.


= Docs for Developers

 $ rake getwsdl
to get the wsdl files

 $ rake generate
to regenerate the bindings if needed

 $ rake rdoc
to regenerate the project documentation if needed

 $ rake package
to package the gem and create a release

 $ rake test
to run unit tests on the library


= Copyright/License Info

Copyright 2009, Google Inc. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
