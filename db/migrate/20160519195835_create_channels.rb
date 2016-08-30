class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.string :nombre
      t.integer :porcentaje
      t.integer :dias
      t.integer :skus
      t.integer :reviews
      t.string :revision
      t.string :color
      t.timestamps null: false
    end
  end
end
