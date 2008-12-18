class Goth < ActiveRecord::Base

	# just retrieve a random Goth
	def self.random
		self.find(:first, :order => 'RAND()')
	end

end
