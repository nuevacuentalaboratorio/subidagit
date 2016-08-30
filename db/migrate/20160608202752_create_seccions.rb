class CreateSeccions < ActiveRecord::Migration
  def change
    create_table :seccions do |t|
      t.string :nombre
      t.string :url

      t.timestamps null: false
    end
  end
end
