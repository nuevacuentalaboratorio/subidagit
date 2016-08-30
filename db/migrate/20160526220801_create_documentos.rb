class CreateDocumentos < ActiveRecord::Migration
  def change
    create_table :documentos do |t|
      t.string :nombre
      t.string :autor
      t.string :archivo_uid
      t.string :archivo_name
      t.timestamps null: false
    end
  end
end
