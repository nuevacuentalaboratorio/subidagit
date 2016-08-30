class AddShowroomidToArchivofolders < ActiveRecord::Migration
  def change
    add_reference :archivofolders, :showroom, index: true
    add_foreign_key :archivofolders, :showrooms
  end
end
