class Showroom < ActiveRecord::Base
	dragonfly_accessor :portada
	has_many :showpins
	has_many :archivofolders
end
