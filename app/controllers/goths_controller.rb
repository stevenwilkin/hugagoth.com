class GothsController < ApplicationController

	# show a random Goth
	def random
		@goth = Goth.random()
	end

	# view the published goths
	def index
		@goths = Goth.paginate :conditions => 'published_at IS NOT NULL', :page => params[:page], :per_page => 5, :order => 'published_at DESC'
	end

	# display a previously published goth
	def show
		@goth = Goth.find_published(params[:year], params[:month], params[:day], params[:name])	
	end

	# RSS feed for the published goths
	def feed
		@goths = Goth.find(:all, :conditions => 'published_at IS NOT NULL', :limit => 10, :order => 'published_at DESC')
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
