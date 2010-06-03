#!/usr/bin/ruby
#
# Author:: api.sgomes@gmail.com (Sérgio Gomes)
#
# Copyright:: Copyright 2010, Google Inc. All Rights Reserved.
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
# This example illustrates how to add a text ad, an image ad and template (Click
# to Play Video) ad to a given ad group. To create an ad group, run
# add_ad_group.rb. To get all videos, run get_all_videos.rb. To upload video,
# see http://adwords.google.com/support/aw/bin/answer.py?hl=en&answer=39454 .
#
# Tags: AdGroupAdService.mutate

require 'rubygems'
gem 'soap4r', '= 1.5.8'
require 'adwords4r'
require 'base64'

API_VERSION = 201003

def add_ads()
  # AdWords::AdWordsCredentials.new will read a credentials file from
  # ENV['HOME']/adwords.properties when called without parameters.
  adwords = AdWords::API.new
  ad_group_ad_srv = adwords.get_service('AdGroupAd', API_VERSION)

  ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
  video_media_id = 'INSERT_VIDEO_MEDIA_ID_HERE'.to_i

  # Create text ad.
  # The 'module' method being called here provides a shortcut to the
  # module containing the classes for this service. This helps us avoid
  # typing the full class name every time we need to create an object.
  text_ad = ad_group_ad_srv.module::TextAd.new
  text_ad.headline = 'Luxury Cruise to Mars'
  text_ad.description1 = 'Visit the Red Planet in style.'
  text_ad.description2 = 'Low-gravity fun for everyone!'
  text_ad.url = 'http://www.example.com'
  text_ad.displayUrl = 'www.example.com'
  text_ad_operation = ad_group_ad_srv.module::AdGroupAdOperation.new
  text_ad_operation.operand = {
    :adGroupId => ad_group_id,
    :ad => text_ad
  }
  text_ad_operation.operator = 'ADD'

  # Create image ad.
  image_ad = ad_group_ad_srv.module::ImageAd.new
  image_ad.name = 'Cruise to mars image ad #%s' % (Time.new.to_f * 1000).to_i
  image_ad.url = 'http://www.example.com'
  image_ad.displayUrl = 'www.example.com'

  # Retrieve image and encode it.
  image_url = 'https://sandbox.google.com/sandboximages/image.jpg'
  http_client = HTTPClient.new
  image = http_client.get_content(image_url)
  base64_image = Base64.encode64(image)
  image_ad.image = ad_group_ad_srv.module::Image.new
  image_ad.image.data = base64_image

  image_ad_operation = ad_group_ad_srv.module::AdGroupAdOperation.new
  image_ad_operation.operand = {
    :adGroupId => ad_group_id,
    :ad => image_ad
  }
  image_ad_operation.operator = 'ADD'

  # Create template ad, using the Click to Play Video template (id 9).
  template_ad = ad_group_ad_srv.module::TemplateAd.new
  template_ad.templateId = 9
  template_ad.dimensions = ad_group_ad_srv.module::Dimensions.new
  template_ad.dimensions.width = 300
  template_ad.dimensions.height = 250
  template_ad.name = 'Mars cruise video ad #%s' % (Time.new.to_f * 1000).to_i
  template_ad.displayUrl = 'www.example.com'
  template_ad.url = 'http://www.example.com'

  # Create template ad data.
  start_image = ad_group_ad_srv.module::Image.new
  start_image.data = base64_image # Reusing the same image from above
  start_image.mediaTypeDb = 'IMAGE'
  start_image.name = 'Starting Image'
  video = ad_group_ad_srv.module::Video.new
  video.mediaId = video_media_id
  video.mediaTypeDb = 'VIDEO'

  fields = [
    {
      :name => 'startImage',
      :type => 'IMAGE',
      :fieldMedia => start_image
    },
    {
      :name => 'displayUrlColor',
      :type => 'ENUM',
      :fieldText => '#ffffff'
    },
    {
      :name => 'video',
      :type => 'VIDEO',
      :fieldMedia => video
    },
  ]

  element = ad_group_ad_srv.module::TemplateElement.new
  element.uniqueName = 'adData'
  element.fields = fields
  template_ad.templateElements = [element]

  template_ad_operation = ad_group_ad_srv.module::AdGroupAdOperation.new
  template_ad_operation.operand = {
    :adGroupId => ad_group_id,
    :ad => template_ad
  }
  template_ad_operation.operator = 'ADD'

  # Add ads.
  response = ad_group_ad_srv.mutate([text_ad_operation, image_ad_operation,
    template_ad_operation])
  if response and response.rval and response.rval.value
    ads = response.rval.value
    puts "Added #{ads.length} ad(s) to ad group #{ad_group_id}."
    ads.each do |ad|
      puts "  Ad id is #{ad.ad.id}, type is #{ad.ad.ad_Type} and status is " +
           "\"#{ad.status}\"."
    end
  else
      puts "No ads were added."
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDS4R_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDS4R_DEBUG'] = 'false'

  begin
    add_ads()

  # Connection error. Likely transitory.
  rescue Errno::ECONNRESET, SOAP::HTTPStreamError, SocketError => e
    puts 'Connection Error: %s' % e
    puts 'Source: %s' % e.backtrace.first

  # API Error.
  rescue AdWords::Error::ApiError => e
    puts 'SOAP Error: %s (code: %d)' % [e.soap_faultstring_ex, e.code_ex]
    puts 'Trigger: %s' % e.trigger_ex unless e.trigger_ex.nil?
    puts 'Source: %s' % e.backtrace.first
  end
end
