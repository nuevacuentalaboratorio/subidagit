class CreateVentaunidads < ActiveRecord::Migration
  def change
    create_table :ventaunidads do |t|
      t.string :mes
      t.integer :valor

      t.timestamps null: false
    end
  end
end
