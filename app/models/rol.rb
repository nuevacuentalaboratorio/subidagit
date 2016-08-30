class Rol < ActiveRecord::Base
	has_many :users
	has_many :permisos
end
