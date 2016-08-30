class CreateArchivos < ActiveRecord::Migration
  def change
    create_table :archivos do |t|
      t.string :nombre
      t.string :autor

      t.timestamps null: false
    end
  end
end
