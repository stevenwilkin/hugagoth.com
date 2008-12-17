#!/usr/bin/env ruby

# import details of our previously leeched images into the database
# SJW

require 'rubygems'
require '../config/environment'

image_dir = '/home/steve/code/ruby/gothscraper/img'

images = Dir.glob(image_dir + '/*.jpg')

# process each image
images.each do |i|
	# filename = /path/to/USERNAME.jpg
	i =~ /.*\/(.+)\.jpg/
	name =  $1
	# check if we already have a goth with this name in the database
	unless Goth.exists?(:name => name)
		puts 'saving: ' +  name
		g = Goth.new(:name => name)
		g.save()
	else
		puts 'skipping: ' + name
	end
end
