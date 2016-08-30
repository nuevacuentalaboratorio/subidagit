class Permiso < ActiveRecord::Base
	belongs_to :rol
	belongs_to :seccion
	belongs_to :operacion
end
