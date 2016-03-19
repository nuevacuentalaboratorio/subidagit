class CreateSkus < ActiveRecord::Migration
  def change
    create_table :skus do |t|
      t.string :productid
      t.string :sku
      t.string :variant1
      t.string :variant2
      t.string :variant3
      t.string :ean
      t.float :retailprice
      t.float :saleprice
      t.float :cost
      t.integer :inv
      t.string :classification
      t.string :brand
      t.float :weight

      t.timestamps null: false
    end
  end
end
