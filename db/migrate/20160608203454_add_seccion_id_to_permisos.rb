class AddSeccionIdToPermisos < ActiveRecord::Migration
  def change
    add_reference :permisos, :seccion, index: true
    add_foreign_key :permisos, :seccions
  end
end
