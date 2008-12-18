class GothsController < ApplicationController

	def index
		@goths = Goth.find(:all)
	end

	def random
		@goth = Goth.random()
	end

end
