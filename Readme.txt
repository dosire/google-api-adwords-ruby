Google adwwords4r Library
-------------------------

Welcome to adwords4r: Bringing the delights of ruby programming to the AdWords world!

Documentation and comments are a work in progress.


Useful Web Resources
--------------------

- AdWords home: https://adwords.google.com/
- AdWords API discussion forum: http://groups.google.com/group/adwords-api
- AdWords API documentation: http://www.google.com/apis/adwords/developer/index.html
- This project's Google Code page: http://code.google.com/p/google-api-adwords-ruby/


Docs for Users
--------------

adwords4r is a ruby gem.  See http://docs.rubygems.org/read/book/1

Install it using the gem install command.
> gem install --remote adwords4r

The following gem libraries are required:
- soap4r v1.5.8 or greater
- httpclient v2.1.2 or greater

It's pretty easy to use.
See http://docs.rubygems.org/read/chapter/3#page70 for how to set the rubygem environment.
export RUBYOPT=rubygems
or ruby -rubygems my_program_that_uses_gems

If you do not use the rubygems option, you need to add
require 'rubygems'
at the beginning of your programs.

Then   
require 'adwords4r'

adwords = AdWords::API.new
creates a driver for the latest version of AdWords API using a credentials file in ENV['HOME']/adwords.properties
There is an example credentials in the root adwords4r directory.
You can also pass API a manually constructed AdWordsCredentials object like:
adwords = AdWords::API.new(AdWords::AdWordsCredentials.new({
  'developerToken' => 'DEVELOPER_TOKEN',
  'applicationToken' => 'APPLICATION_TOKEN',
  'useragent' => 'Ruby Sample',
  'password' => 'PASSWORD',
  'email' => 'user@domain.com'
  'clientEmail' => 'user2@domain.com',
}))

If you want something more specific, use the optional parameters of the constructor
adwords = AdWords::API.new(credentials, version)

In order to use the sandbox, you can add a credential named
alternateUrl like:
alternateUrl=https://sandbox.google.com/api/adwords/v12/

Then just use methods of the API against your driver.
See sample code in the examples directory for working examples you can build from.

It is often useful to see a trace of the raw SOAP XML being sent and received.
To enable this, set the ADWORDS4R_DEBUG environment variable to TRUE.
e.g. in the bash shell, export ADWORDS4R_DEBUG=TRUE
or from your Ruby code, ENV['ADWORDS4R_DEBUG'] = 'TRUE'
The SOAP logs will be written to the current directory.


Docs for Developers
-------------------

rake getwsdl
    to get the wsdl files
rake generate
    to regenerate the bindings if needed
rake package
    to package the gem and create a release
    

Copyright/License Info
----------------------

Copyright 2008, Google Inc. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
