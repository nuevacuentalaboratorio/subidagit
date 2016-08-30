class AddFolderIdToArchivofolders < ActiveRecord::Migration
  def change
  	add_reference :archivofolders, :folder, index: true
    add_foreign_key :archivofolders, :folders
  end
end
