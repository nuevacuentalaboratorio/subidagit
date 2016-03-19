class AddProductIdToSkus < ActiveRecord::Migration
  def change
    add_reference :skus, :product, index: true
    add_foreign_key :skus, :products
  end
end
