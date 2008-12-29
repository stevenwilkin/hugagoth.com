#!/usr/bin/env ruby

# leech profile images from gothornot.çom
# SJW

require 'rubygems'
require 'hpricot'
require 'open-uri'

# example profile page:
# http://gothornot.com/?vote_username=Ruler_Of_The_Dead

destination = '/home/steve/code/ruby/gothscraper/img/'
domain = 'http://gothornot.com/'

#just keep looping until script is killed
while 1 == 1
	# read the site
	doc = Hpricot(open(domain))
	
	# get username and url of profile pic
	name = (doc/'#vote_goth/h2').inner_html
	puts "name: " + name
	
	image_url = doc.at('#vote_goth/img').attributes['src']
	puts "image_url: " + image_url
	
	# see if we already have the image
	image = destination + name + '.jpg'
	if File.exists?(image)
	    puts image + ' exists, skipping' 
	else
        # 
	    puts 'saving ' + image
	    url = domain + image_url
	    open(url, "Referer" => domain) do |in_file|
	       File.open(image, 'w') {|out_file| out_file.write(in_file.read)}
	    end
	end
end
