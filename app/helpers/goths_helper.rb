module GothsHelper

	# the image belonging to a particular Goth
	def goth_image_tag(goth)
		image_tag("goths/#{goth.name}.jpg", :alt => goth.name, :title => goth.name)
	end

	# link to this Goths voting page on gothornot.com
	def goth_vote_link(goth)
		link_to goth.name, "http://gothornot.com/?vote_username=#{goth.name}"
	end

end
