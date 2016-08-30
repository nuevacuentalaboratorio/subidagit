class CreateOperacions < ActiveRecord::Migration
  def change
    create_table :operacions do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
