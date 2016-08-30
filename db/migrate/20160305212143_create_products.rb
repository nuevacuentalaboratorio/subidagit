class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|

      t.text :title
      t.text :description
      t.text :tags
      t.float :price
      t.string :product_type
      t.string :handle
      t.string :imagen1
      t.string :imagen2
      t.string :imagen3
      t.string :imagen4
      t.string :vendor
      
      t.string :asset_uid
      t.string :asset_name
      t.string :asset2_uid
      t.string :asset2_name
      t.string :asset3_uid
      t.string :asset3_name

      t.timestamps null: false
    end
  end
end
