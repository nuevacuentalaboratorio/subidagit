class CreateShowrooms < ActiveRecord::Migration
  def change
    create_table :showrooms do |t|
      t.integer :modulo
      t.string :direccion
      t.string :horario
      t.string :telefono
      t.string :descripcion
      t.timestamps null: false
    end
  end
end
