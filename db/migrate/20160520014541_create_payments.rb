class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.float :anual
      t.float :ultimomes
      t.integer :porcentaje

      t.timestamps null: false
    end
  end
end
