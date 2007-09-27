Google adwwords4r Library
----------------------

Welcome to adwords4r, bringing the delights of ruby programming to the AdWords world: AdWords::API.new.getAllAdWordsCampaigns(123).each {|c| puts c.name}

Not much doc or comments yet

docs for users
--------------

adwords4r is a ruby gem.  See http://docs.rubygems.org/read/book/1
Install it using the gem install command.
> gem install --remote adwords4r

Requirements are:
    s.requirements << 'soap4r v 1.5.6 or greater'
    s.requirements << 'http-access2 v 2.0.5 or greater'
(see gem file for details)

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
creates a driver for the latest version of AdWords API using credentials provided in ~/adwords.properties
There is an example in the root adwords4r directory.
You can also pass API a manually constructed AdWordsCredentials object like:
adwords = AdWords::API.new(AdWords::AdWordsCredentials.new(
{  'token' => 'mytoken',
  'useragent' => 'P@ playing with the API from ruby',
  'password' => 'mypasswd',
  'email' => 'em...@example.com'}
)) 

If you want something more specific, use the optional parameters of the constructor
adwords = AdWords::API.new(credentials, version)

In order to use the sandbox, you can add a credential named
alternateUrl, like:
alternateUrl=https://sandbox.google.com/api/adwords/v5/

Then just use methods of the API against your driver.
adwords.getAllAdWordsCampaigns(123).each {|c| puts c.name}

See sample code in examples.

The client code will generate warnings in the console:
Many: warning: already initialized constant XXX
A few: at depth 0 - 20: unable to get local issuer certificate
These are not serious: I need to make them go but they do not affect the correctness of the program.

docs for developers
-------------------
rake getwsdl
    to get the wsdl files
rake generate
    to regenerate the bindings if needed
rake package
    to package the gem and create a release
rake publish
    to publish the gem to rubyforge
    
adwords4r is licensed under the BSD License

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE. 

It is fun to use adwords4r anyway...
