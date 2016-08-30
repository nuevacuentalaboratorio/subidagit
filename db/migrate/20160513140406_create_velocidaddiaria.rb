class CreateVelocidaddiaria < ActiveRecord::Migration
  def change
    create_table :velocidaddiaria do |t|
      t.string :sku
      t.integer :velocidad

      t.timestamps null: false
    end
  end
end
