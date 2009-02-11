class GothsController < ApplicationController

	# show a random Goth
	def random
		@goth = Goth.random()
	end

	# view the published goths
	def index
		@goths = Goth.paginate :page => params[:page], :per_page => 5, :order => 'published_at DESC'
	end

	# display a previously published goth
	def show
		@goth = Goth.find_published(params[:year], params[:month], params[:day], params[:name])	
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
