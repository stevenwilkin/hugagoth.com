module GothsHelper

	# the image belonging to a particular Goth
	def goth_image_tag(goth)
		image_tag("goths/#{goth.name}.jpg", :alt => goth.name, :title => goth.name)
	end

	# the image belonging to a particular Goth - full url
	def goth_image_full_tag(goth)
		image = image_path "goths/#{goth.name}.jpg"
		url = "#{root_url.chomp('/')}#{image}"
		image_tag url, :alt => goth.name, :title => goth.name
	end

	# link to this Goths voting page on gothornot.com
	def goth_vote_link(goth)
		link_to goth.name, "http://gothornot.com/?vote_username=#{goth.name}"
	end

	# the url for the permalink to this goth
	def goth_permalink_url(goth)
		month = sprintf('%0.2d', goth.published_at.month)
		day = sprintf('%0.2d', goth.published_at.day)
		goth_url :year => goth.published_at.year, :month => month, :day => day, :name => goth.name
	end

	# the permalink to this goth
	def goth_permalink(goth)
		link_to goth.name, goth_permalink_url(goth)
	end

	# format the published date in a specific format
	def goth_published_date(goth)
		goth.published_at.strftime('%b %d, %Y %H:%M')
	end

end
