class Goth < ActiveRecord::Base

	# just retrieve a random Goth
	def self.random
		self.find(:first, :order => 'RAND()')
	end

	# set the published_at datetime of a goth to current timestamp
	# goth will be chosen at random if there are any left which haven't been published
	# otherwise republish the oldest published goth
	def self.publish
		g = self.find(:first, :conditions => {:published_at => nil}, :order => 'RAND()')
		unless g
			g = self.find(:first, :order => 'published_at ASC')
		end
		g.update_attribute(:published_at, Time.now)
	end

end
