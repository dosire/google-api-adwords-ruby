#!/usr/bin/env ruby

# Use adwords4r in parent dir
$LOAD_PATH.unshift '../lib/'

require 'adwords4r'

adwords = AdWords::API.new
