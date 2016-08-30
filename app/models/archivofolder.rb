require 'dragonfly'
class Archivofolder < ActiveRecord::Base

	dragonfly_accessor :filefolder
	belongs_to :folder
	belongs_to :showroom
end
