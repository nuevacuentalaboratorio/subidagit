class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :email
      t.string :rol_id

      t.timestamps null: false
    end
  end
end
