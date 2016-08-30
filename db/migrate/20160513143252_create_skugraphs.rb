class CreateSkugraphs < ActiveRecord::Migration
  def change
    create_table :skugraphs do |t|
      t.string :sku
      t.integer :velocidad
      t.integer :inventario

      t.timestamps null: false
    end
  end
end
