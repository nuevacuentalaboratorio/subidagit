class AddRolIdToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :rol, index: true
    add_foreign_key :users, :rols
  end
end
