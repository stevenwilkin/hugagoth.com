class GothsController < ApplicationController

	# show a random Goth
	def random
		@goth = Goth.random()
	end

	# about page
	def about
	end

end
