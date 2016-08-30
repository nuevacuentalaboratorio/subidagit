class CreateBrandteams < ActiveRecord::Migration
  def change
    create_table :brandteams do |t|
      t.string :nombre
      t.string :cargo
      t.string :empresa
      t.string :telefono
      t.string :email
      t.string :foto_uid
      t.string :foto_name

      t.timestamps null: false
    end
  end
end
