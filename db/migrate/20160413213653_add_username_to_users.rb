class AddUsernameToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :first_name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :asset_uid, :string
  	add_column :users, :asset_name, :string
    add_column :users, :direccion, :string
  	add_index :users, :first_name, unique: true
  	add_index :users, :last_name, unique: true
  	add_index :users, :asset_uid, unique: true
  	add_index :users, :asset_name, unique: true
    add_index :users, :direccion, unique: true

  end
end
