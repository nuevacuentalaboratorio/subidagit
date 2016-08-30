class CreateArchivofolders < ActiveRecord::Migration
  def change
    create_table :archivofolders do |t|
      t.string :nombre
      t.string :autor
      t.string :filefolder_uid
      t.string :filefolder_name
      t.timestamps null: false
    end
  end
end
