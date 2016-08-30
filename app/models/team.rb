require 'dragonfly'
class Team < ActiveRecord::Base
	dragonfly_accessor :foto
end
