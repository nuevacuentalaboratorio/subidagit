class AddOperacionIdToPermisos < ActiveRecord::Migration
  def change
    add_reference :permisos, :operacion, index: true
    add_foreign_key :permisos, :operacions
  end
end
