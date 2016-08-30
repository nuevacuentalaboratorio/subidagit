class CreateFolders < ActiveRecord::Migration
  def change
    create_table :folders do |t|
      t.string :nombre
      t.integer :id_padre

      t.timestamps null: false
    end
  end
end
