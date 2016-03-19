class AddProductIdToVariations < ActiveRecord::Migration
  def change
    add_reference :variations, :product, index: true
    add_foreign_key :variations, :products
  end
end
