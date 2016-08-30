class AddRolIdToPermisos < ActiveRecord::Migration
  def change
    add_reference :permisos, :rol, index: true
    add_foreign_key :permisos, :rols
  end
end
