class AddPortadaToShowrooms < ActiveRecord::Migration

  def change
    add_column :showrooms, :portada_uid, :string
    add_column :showrooms, :portada_name, :string
  end


end
