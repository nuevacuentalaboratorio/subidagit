class CreateShowpins < ActiveRecord::Migration
  def change
    create_table :showpins do |t|
      t.string :nota
      t.string :titulo
      t.timestamps null: false
    end
  end
end
