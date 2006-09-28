require 'wsdl/soap/wsdl2ruby'
require 'net/https'
require 'fileutils'
require 'rake/clean'
require 'logger'
begin
  require 'rubygems'
  require 'rake/gempackagetask'
rescue Exception
  nil
end
begin
  require 'lib/adwords4r/services'
rescue Exception
  puts 'require services not found'
  nil
end

# Determine the current version of the software

CLOBBER.include('pkg')

CURRENT_VERSION = '0.7'
PKG_VERSION = ENV['REL'] ? ENV['REL'] : CURRENT_VERSION

SRC_RB = FileList['lib/**/*.rb']

# The default task is run if rake is given no explicit arguments.

#desc "Default Task"
#task :default => :test_all

WSDLDIR = 'wsdl'
LIBDIR = 'lib'
GENDIR = LIBDIR + '/adwords4r'

logger = Logger.new(STDERR)

CLEAN.include(WSDLDIR)
AdWords::Service.getVersions.each do |v|
    vname = "v#{v}"
    CLEAN.include(File.join(GENDIR, vname))
end

desc "gets the wsdl and generates the classes"
task :default => [:getwsdl, :generate]

desc "gets the wsdl files for AdWords services"
task :getwsdl do
    AdWords::Service.getVersions.each do |v|
        vname = "v#{v}"
        mkdir_p File.join(WSDLDIR, vname)
        AdWords::Service.getServices(v).each {|s| save(getfile("adwords.google.com", "/api/adwords/#{vname}/#{s}Service?wsdl"), getWsdlFileName(vname,s))}
    end
end

desc "generates AdWords classes from the wsdl files"
task :generate do
    AdWords::Service.getVersions.each do |v|
        vname = "v#{v}"
        gendir = "#{LIBDIR}/adwords4r/#{vname}"
        mkdir_p gendir
        AdWords::Service.getServices(v).each do |name|
            worker = WSDL::SOAP::WSDL2Ruby.new
            worker.logger = logger
            worker.location = getWsdlFileName(vname,name)
            worker.basedir = gendir
            worker.opt.update(getWsdlOpt(name))
            worker.run
            fixImport(v, File.join(gendir, "#{name}Driver.rb"))
            fixImport(v, File.join(gendir, "#{name}.rb"))
        end
    end
end

def fixImport(version, file)
    vname = "v#{version}"
    tempfile = file + '.tmp'
    outfile = File.new(tempfile,"w")
    File.open(file, "r") do |infile|
        outfile.puts "module AdWords"
        #outfile.puts "module AdWordsV#{version}"
        infile.each do |l|
            if (l =~/require.*Service.rb/) then
#                outfile.puts l.gsub(/require \'(.*)Service.rb\'/, 'require #\'adwords4r/' + vname + '/\1Service\'')
                outfile.puts l.gsub(/require \'(.*)Service.rb\'/, 'require \'adwords4r/' + vname + '/\1Service\'')
            else
                outfile.puts l
            end
        end
        outfile.puts "end"
    end
    outfile.close
    File.rename(tempfile, file)
end 


def getWsdlOpt(s)
    optcmd= {}
    s << "Service"
    optcmd['classdef'] = s
    #should work but doesn't, driver name is derived from classname
    #if you specify both it breaks, same thing for client_skelton
    #optcmd['driver'] = s
    optcmd['driver'] = nil
    #optcmd['client_skelton'] = nil
    optcmd['force'] = true
    return optcmd
end
  
def getWsdlFileName(v,s)
    "#{WSDLDIR}/#{v}/#{s}.wsdl"
end
     
def getfile(host, path)
    puts "getting https//#{host}#{path}"
    https = Net::HTTP.new(host, 443)
    https.use_ssl = true
    https.verify_mode = OpenSSL::SSL::VERIFY_NONE
    https.start { |w| w.get2(path).body }
end

def fix_attribute(text, name, type)
  text.gsub!(Regexp.new("#{name}=\"#{type}\""),"#{name}=\"xsd:#{type}\"")
end

def fixWsdl(wsdl)
    ['type', 'base'].each {|name| ['long', 'string', 'date', 'int', 'boolean'].each {|type| fix_attribute(wsdl, name, type)}}
    schema_ns = "xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\""
    if wsdl !~ Regexp.new(schema_ns)
        wsdl.gsub!(/(<wsdl:definitions[^>]*)>/, '\1 ' + schema_ns + '>')
    end
    return wsdl
    #wsdl.gsub(/type=\"long\"/, 'type="xsd:long"')
end

# Saves this document to the specified @var path.
#doesn't create the file if contains markup for google 404 page
def save(content, path)
    if content !~ /<H2>Error 404<\/H2>/
        File::open(path, 'w') {|f| f.write(fixWsdl(content))}
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
#  'test/**/*.rb',
  'scripts/**/*.rb'
]

puts PKG_FILES

PKG_FILES.exclude(/\._/)

if ! defined?(Gem)
  puts "Package Target requires RubyGEMs"
else
  spec = Gem::Specification.new do |s|
    
    #### Basic information.

    s.name = 'adwords4r'
    s.version = PKG_VERSION
    s.summary = "Client library for the AdWords API."
    s.description = %{\
Adwords4r provides an easy to use way to access the AdWords API in ruby.\
Currently the following AdWords API versions are supported:\
\
* V4\
* V5\
* V6\
}

    s.files = PKG_FILES.to_a
    s.require_path = 'lib'
    s.autorequire = 'adwords4r'
    
    #s.test_files = PKG_FILES.select { |fn| fn =~ /^test\/test/ }
    
    #s.has_rdoc = true
    s.has_rdoc = false
    #s.extra_rdoc_files = rd.rdoc_files.reject { |fn| fn =~ /\.rb$/ }.to_a
    #s.rdoc_options <<
#      '--title' <<  'Builder -- Easy XML Building' <<
#      '--main' << 'README' <<
#      '--line-numbers'
    
    s.author = "Patrick Chanezon"
    s.email = "patrick@chanezon.com"
    s.homepage = "http://rubyforge.org/projects/adwords4r/"
    s.requirements << 'soap4r v 1.5.4 or greater'
    s.requirements << 'http-access2 v 2.0.5 or greater'
    s.rubyforge_project = 'adwords4r'
  end
  
    Rake::GemPackageTask.new(spec) do |t|
      t.need_tar = true
    end
end

#require 'scripts/publish'

