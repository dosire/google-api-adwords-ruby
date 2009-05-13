require 'fileutils'
require 'net/https'
require 'logger'
require 'rake/clean'

require 'rubygems'
gem 'rake'
require 'rake/gempackagetask'
gem 'soap4r'
require 'wsdl/soap/wsdl2ruby'
require 'xsd/codegen/classdef'

require 'lib/adwords4r/services'

# Determine the current version of the software

CLOBBER.include('pkg')

CURRENT_VERSION = '15.0.0'
PKG_VERSION = ENV['REL'] ? ENV['REL'] : CURRENT_VERSION

SRC_RB = FileList['lib/**/*.rb']

WSDLDIR = 'wsdl'
LIBDIR = 'lib'
GENDIR = LIBDIR + '/adwords4r'

logger = Logger.new(STDERR)

CLEAN.include(WSDLDIR)
AdWords::Service.get_versions.each do |v|
  vname = "v#{v}"
  CLEAN.include(File.join(GENDIR, vname))
end

desc "gets the wsdl and generates the classes"
task :default => [:getwsdl, :generate]

desc "gets the wsdl files for AdWords services"
task :getwsdl do
  AdWords::Service.get_versions.each do |v|
    vname = "v#{v}"
    mkdir_p File.join(WSDLDIR, vname)
    AdWords::Service.get_services(v).each do |s|
      if v.to_i <= 13
        save(getfile("adwords.google.com",
                     "/api/adwords/#{vname}/#{s}Service?wsdl"),
             get_wsdl_file_name(vname, s))
      else
        save(getfile("adwords-sandbox.google.com",
                     "/api/adwords/cm/#{vname}/#{s}Service?wsdl"),
             get_wsdl_file_name(vname, s))
      end
    end
  end
end

desc "generates AdWords classes from the wsdl files"
task :generate do
  AdWords::Service.get_versions.each do |v|
    vname = "v#{v}"
    gendir = "#{LIBDIR}/adwords4r/#{vname}"
    mkdir_p gendir
    AdWords::Service.get_services(v).each do |name|
      worker = WSDL::SOAP::WSDL2Ruby.new
      worker.logger = logger
      worker.location = get_wsdl_file_name(vname,name)
      worker.basedir = gendir
      worker.opt.update(get_wsdl_opt(vname,name))
      worker.run
      fix_import(v, File.join(gendir, "#{name}Driver.rb"))
      fix_import(v, File.join(gendir, "#{name}MappingRegistry.rb"))
      fix_import(v, File.join(gendir, "#{name}.rb"))
    end
  end
end

def fix_import(version, file)
  vname = "v#{version}"
  tempfile = file + '.tmp'
  outfile = File.new(tempfile,"w")
  File.open(file, "r") do |infile|
    infile.each do |l|
      if (l =~ /require.*Service.*\.rb/) then
        outfile.puts l.gsub(/require '(.*)Service(.*)\.rb'/,
                            "require 'adwords4r/#{vname}/\\1Service\\2'")
      else
        outfile.puts l
      end
    end
  end
  outfile.close
  File.rename(tempfile, file)
end 

def get_wsdl_opt(v,s)
  optcmd= {}
  s << "Service"
  optcmd['classdef'] = s
  optcmd['force'] = true
  optcmd['mapping_registry'] = true
  optcmd['driver'] = nil

  # Causes soap4r to wrap the classes it outputs into the given modules
  optcmd['module_path'] = ['AdWords', v.capitalize, s]
  return optcmd
end

def get_wsdl_file_name(v,s)
  "#{WSDLDIR}/#{v}/#{s}.wsdl"
end

def getfile(host, path)
  puts "getting https://#{host}#{path}"
  https = Net::HTTP.new(host, 443)
  https.use_ssl = true
  https.verify_mode = OpenSSL::SSL::VERIFY_NONE
  https.start { |w| w.get2(path).body }
end

def fix_attribute(text, name, type)
  text.gsub!(Regexp.new("#{name}=\"#{type}\""),"#{name}=\"xsd:#{type}\"")
end

def fix_wsdl(wsdl)
  ['type', 'base'].each {|name|
    ['long', 'string', 'date', 'int', 'boolean'].each {|type|
      fix_attribute(wsdl, name, type)}}
  schema_ns = "xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\""
  if wsdl !~ Regexp.new(schema_ns)
    wsdl.gsub!(/(<wsdl:definitions[^>]*)>/, '\1 ' + schema_ns + '>')
  end
  return wsdl
end

# Saves this document to the specified @var path.
# doesn't create the file if contains markup for google 404 page
def save(content, path)
  if content !~ /<H2>Error 404<\/H2>/
    File::open(path, 'w') {|f| f.write(fix_wsdl(content))}
  end
end

# ====================================================================
# Create a task that will package the Rake software into distributable
# gem files.

PKG_FILES = FileList[
  '*.*',
  'Rakefile',
  'lib/**/*.rb',
  'examples/**/*.rb',
  'scripts/**/*.rb'
]

PKG_FILES.exclude(/\._/)

if ! defined?(Gem)
  puts "Package Target requires RubyGems"
else
  spec = Gem::Specification.new do |s|

    #### Basic information.

    s.name = 'adwords4r'
    s.version = PKG_VERSION
    s.summary = "Client library for the AdWords API."
    s.description = %{\
Adwords4r provides an easy to use way to access the AdWords API in Ruby.\
Currently the following AdWords API versions are supported:\
\
* V13\
* V200902 (sandbox)
}

    s.files = PKG_FILES.to_a
    s.require_path = 'lib'
    s.autorequire = 'adwords4r'

    s.has_rdoc = false

    s.author =
        "Sergio Gomes, Jeffrey Posnick, Patrick Chanezon, Ryan Leavengood"
    s.email = "api.sgomes@gmail.com"
    s.homepage = "http://code.google.com/p/google-api-adwords-ruby/"
    s.requirements << 'soap4r v1.5.8'
    s.requirements << 'httpclient v2.1.2 or greater'
    s.add_dependency('soap4r', '= 1.5.8')
    s.add_dependency('httpclient', '>= 2.1.2')
  end

  Rake::GemPackageTask.new(spec) do |t|
    t.need_tar = true
  end
end
