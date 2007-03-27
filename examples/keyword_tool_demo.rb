#!/usr/bin/env ruby

# Use adwords4r in parent dir
$LOAD_PATH.unshift '../lib/'

require 'adwords4r'

def printkw(kw, gname)
    puts "#{gname} #{kw.advertiserCompetitionScale} #{kw.searchVolumeScale} #{kw.text}"    
end

begin
    if (ARGV.length < 1)
        puts "Usage: #$0 <url>" 
        exit
    end
    adwords = AdWords::API.new
    result = adwords.getKeywordsFromSite(ARGV[0], true, [], [])
    groups = result.getKeywordsFromSiteReturn.groups
    kws = result.getKeywordsFromSiteReturn.keywords
    puts "GroupName AdvertiserCompetitionScale searchVolumeScale text"
    kws.each {|kw| printkw(kw, groups[kw.groupId.to_i])}    

rescue AdWords::Error::UnknownAPICall => e
    puts e
rescue AdWords::Error::ApiError => e
    puts e.code
    puts e.message
end

