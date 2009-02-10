module GothsHelper

	# the image belonging to a particular Goth
	def goth_image_tag(goth)
		image_tag("goths/#{goth.name}.jpg", :alt => goth.name, :title => goth.name)
	end

	# link to this Goths voting page on gothornot.com
	def goth_vote_link(goth)
		link_to goth.name, "http://gothornot.com/?vote_username=#{goth.name}"
	end

	# the url for the permalink to this goth
	def goth_permalink_url(goth)
		month = sprintf('%0.2d', goth.published_at.month)
		day = sprintf('%0.2d', goth.published_at.day)
		"/#{goth.published_at.year}/#{month}/#{day}/#{goth.name}"
	end

	# the permalink to this goth
	def goth_permalink(goth)
		link_to goth.name, goth_permalink_url(goth)
	end

end
