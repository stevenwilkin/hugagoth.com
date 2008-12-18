class GothsController < ApplicationController

	# show a random Goth
	def random
		@goth = Goth.random()
	end

	# about page
	def about
		@page_title = 'about'
	end

	# disclaimer page
	def disclaimer
		@page_title = 'disclaimer'
	end

end
