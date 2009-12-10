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
# Rakefile for adwords4r.

# A little trick so we can load things from the lib/ directory without having
# to patch the "require" statements in the files
$:.unshift File.join(File.dirname(__FILE__), 'lib')

require 'fileutils'
require 'net/https'
require 'logger'
require 'rubygems'
gem 'rake'
require 'rake/gempackagetask'
require 'rake/rdoctask'
require 'rake/clean'
require 'rake/testtask'
gem 'soap4r'
require 'wsdl/soap/wsdl2ruby'
require 'xsd/codegen/classdef'
require 'adwords4r/services'
require 'adwords4r/apiextensions'
require 'adwords4r/generator'

# Configure some constants and built-in tasks
CURRENT_VERSION = '17.2.0'
PKG_VERSION = ENV['REL'] ? ENV['REL'] : CURRENT_VERSION

WSDLDIR = 'wsdl'
LIBDIR = 'lib'
DOCDIR = 'doc'
TESTDIR = 'test'
GENDIR = File.join(LIBDIR, 'adwords4r')

SRC_RB = FileList["#{LIBDIR}/**/*.rb"]

logger = Logger.new(STDERR)

CLEAN.include(WSDLDIR)
CLEAN.include(DOCDIR)
AdWords::Service.get_versions.each do |version|
  version_name = "v#{version}"
  CLEAN.include(File.join(GENDIR, version_name))
end

CLOBBER.include('pkg')

# ====================================================================
# Create a default task to prepare library for usage.
desc "gets the wsdl and generates the classes"
task :default => [:getwsdl, :generate]

# ====================================================================
# Create a task to retrieve the WSDL files for the services.
desc "gets the wsdl files for AdWords services"
task :getwsdl do
  AdWords::Service.get_versions.each do |version|
    version_name = "v#{version}"
    mkdir_p File.join(WSDLDIR, version_name)
    AdWords::Service.get_services(version).each do |service|
      if version.is_a? Integer
        subdir = AdWords::Service.get_subdir(version, service)
        save(getfile("adwords.google.com",
                     "/api/adwords/#{subdir}#{service}Service?wsdl"),
             get_wsdl_file_name(version_name, service))
      end
    end
  end
end

# Return the full file name of the WSDL file for a given version and service
def get_wsdl_file_name(version_name, service)
  File.join(WSDLDIR, version_name, service) + '.wsdl'
end

# Download a file, given a remote host and path (assume HTTPS)
def getfile(host, path)
  puts "getting https://#{host}#{path}"
  https = Net::HTTP.new(host, 443)
  https.use_ssl = true
  https.verify_mode = OpenSSL::SSL::VERIFY_NONE
  https.start { |w| w.get2(path).body }
end

# Apply fixes to the WSDL content in order to make it understandable for the
# soap4r code generator. The fixes are applied to the original object.
def fix_wsdl!(wsdl)
  ['type', 'base'].each do |name|
    ['long', 'string', 'date', 'int', 'boolean'].each do |type|
      # Fix this attribute over the entire document
      wsdl.gsub!(Regexp.new("#{name}=\"#{type}\""), "#{name}=\"xsd:#{type}\"")
    end
  end
  schema_ns = "xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\""
  if wsdl !~ Regexp.new(schema_ns)
    wsdl.gsub!(/(<wsdl:definitions[^>]*)>/, '\1 ' + schema_ns + '>')
  end
  return wsdl
end

# Saves this document to the specified path.
# Doesn't create the file if a 404 error page is returned.
def save(content, path)
  if content !~ /<H2>Error 404<\/H2>/
    File::open(path, 'w') {|f| f.write(fix_wsdl!(content))}
  end
end

# ====================================================================
# Create a task to generate all the service classes.
desc "generates AdWords classes from the wsdl files"
task :generate do
  AdWords::Service.get_versions.each do |version|
    version_name = "v#{version}"
    gendir = File.join(LIBDIR, 'adwords4r', version_name)
    mkdir_p gendir
    AdWords::Service.get_services(version).each do |service|
      # Generate SOAP classes with soap4r
      service_name = service + 'Service'
      worker = WSDL::SOAP::WSDL2Ruby.new
      worker.logger = logger
      worker.location = get_wsdl_file_name(version_name, service)
      worker.basedir = gendir
      worker.opt.update(get_wsdl_opt(version_name, service_name))
      worker.run

      # Fix the "require" statements so that they work in the client library's
      # directory structure
      fix_import(version_name, File.join(gendir, "#{service_name}Driver.rb"))
      fix_import(version_name,
          File.join(gendir, "#{service_name}MappingRegistry.rb"))
      fix_import(version_name, File.join(gendir, "#{service_name}.rb"))

      # Fix the comments in the file so that we get better-looking RDoc, and
      # only for the things we want
      fix_rdoc(File.join(gendir, "#{service_name}.rb"))

      # Generate the wrapper files
      eval("require '#{File.join(gendir, "#{service_name}Driver.rb")}'")
      wrapper_file = File.join(gendir, "#{service_name}Wrapper.rb")
      File.open(wrapper_file, 'w') do |file|
        file.write(AdWords::Generator.generate_wrapper_class(version, service))
      end
      puts "Generated #{version_name} #{service_name} wrapper: #{wrapper_file}"
    end
  end
end

# Fix "require" statements for client lib usage
def fix_import(version_name, file)
  tempfile = file + '.tmp'
  outfile = File.new(tempfile, 'w')
  File.open(file, 'r') do |infile|
    infile.each do |line|
      if (line =~ /require.*Service.*\.rb/)
        outfile << line.gsub(/require '(.*)Service(.*)\.rb'/,
            "require 'adwords4r/#{version_name}/\\1Service\\2'")
      else
        outfile << line
      end
    end
  end
  outfile.close
  File.rename(tempfile, file)
end

# Fix RDoc comments in the generated *Service.rb files
def fix_rdoc(file)
  tempfile = file + '.tmp'
  outfile = File.new(tempfile, 'w')
  should_doc = true
  File.open(file, 'r') do |infile|
    infile.each do |line|
      if (line =~ /# \{.*\}[A-Z]\w*/)
        # This is a regular class. Document and clean up how it's displayed.
        should_doc = true
        outfile << line.gsub(/\{.*\}(.*)/, "\\1")
      elsif (line =~ /# \{.*\}[a-z]\w*/)
        # This is a method wrapping class. Do not document, but still clean up
        # its comment.
        should_doc = false
        outfile << line.gsub(/\{.*\}(.*)/, "\\1")
      elsif (line =~ /#   \w+/)
        # Itemize member variables
        outfile << line.gsub(/#   (.*)/, "# - \\1")
      elsif (line =~ /class [A-Z].*/)
        if should_doc
          outfile << line
        else
          # Avoid documenting the method classes, since they're made invisible
          # thanks to our service wrappers
          outfile << line.gsub(/(.*)(\w)/, "\\1\\2 #:nodoc: all")
        end
      else
        outfile << line
      end
    end
  end
  outfile.close
  File.rename(tempfile, file)
end

# Create options to be used for class generation from WSDL
def get_wsdl_opt(version_name, service_name)
  optcmd= {}
  optcmd['classdef'] = service_name
  optcmd['force'] = true
  optcmd['mapping_registry'] = true
  optcmd['driver'] = nil

  # Causes soap4r to wrap the classes it outputs into the given modules
  optcmd['module_path'] = ['AdWords', version_name.capitalize, service_name]
  return optcmd
end

# ====================================================================
# Create a task to build the RDOC documentation tree.
Rake::RDocTask.new("rdoc") do |rdoc|
  # Try to use SDoc to generate the docs
  begin
    require 'sdoc'
    rdoc.options << '--fmt' << 'shtml'
    rdoc.template = 'direct'
  rescue LoadError
    # Do nothing, give up on SDoc and continue with whatever is the default.
  end
  rdoc.rdoc_dir = DOCDIR
  rdoc.title = 'adwords4r -- Client library for the AdWords API'
  rdoc.main = 'Readme.txt'
  rdoc.rdoc_files.include('Readme.txt', 'License.txt', 'ChangeLog.txt')
  rdoc.rdoc_files.include("#{LIBDIR}/*.rb", "#{LIBDIR}/adwords4r/*.rb")
  rdoc.rdoc_files.include("#{LIBDIR}/adwords4r/v*/*Wrapper.rb")
  rdoc.rdoc_files.include("#{LIBDIR}/adwords4r/v*/*Service.rb")
  rdoc.rdoc_files.exclude("#{LIBDIR}/adwords4r/soap4rpatches.rb")
end

# ====================================================================
# Create a task to perform the unit testing.
Rake::TestTask.new("test") do |test|
  test.libs << TESTDIR
  test.pattern = "#{TESTDIR}/test_*.rb"
  test.verbose = true
end

# ====================================================================
# Create a task that will package the Rake software into distributable
# gem files.
PKG_FILES = FileList[
  '*.*',
  'Rakefile',
  "#{LIBDIR}/**/*.rb",
  "#{LIBDIR}/adwords4r/data/*.*",
  'examples/**/*.rb',
  "#{DOCDIR}/**/*.*",
  "#{TESTDIR}/**/*.*"
]

PKG_FILES.exclude(/\._/)

if ! defined?(Gem)
  puts "Package Target requires RubyGems"
else
  spec = Gem::Specification.new do |s|

    # Basic information
    s.name = 'adwords4r'
    s.version = PKG_VERSION
    s.summary = 'Client library for the AdWords API.'
    description = "Adwords4r provides an easy to use way to access the " +
        "AdWords API in Ruby.\nCurrently the following AdWords API versions " +
        "are supported:"
    AdWords::Service.get_versions.each do |version|
      description += "\n  * V#{version}"
    end
    s.description = description

    # Files and dependencies
    s.files = PKG_FILES.to_a
    s.require_path = LIBDIR
    s.add_dependency('soap4r', '= 1.5.8')
    s.add_dependency('httpclient', '>= 2.1.2')

    # RDoc information
    s.has_rdoc = true
    s.extra_rdoc_files = ['Readme.txt']
    s.rdoc_options << '--main' << 'Readme.txt'

    # Metadata
    s.authors = ['Sergio Gomes', 'Jeffrey Posnick', 'Patrick Chanezon',
                 'Ryan Leavengood']
    s.email = 'api.sgomes@gmail.com'
    s.homepage = 'http://code.google.com/p/google-api-adwords-ruby/'
    s.rubyforge_project = 'adwords4r'
    s.requirements << 'soap4r v1.5.8'
    s.requirements << 'httpclient v2.1.2 or greater'
  end

  Rake::GemPackageTask.new(spec) do |t|
    t.need_tar = true
  end
end
