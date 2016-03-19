class Product < ActiveRecord::Base
		
	dragonfly_accessor :asset
	dragonfly_accessor :asset2
	dragonfly_accessor :asset3
	has_many :variations
	has_many :skus


	

end
