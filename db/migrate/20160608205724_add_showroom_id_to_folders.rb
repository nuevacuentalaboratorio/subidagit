class AddShowroomIdToFolders < ActiveRecord::Migration
  def change
    add_reference :folders, :showroom, index: true
    add_foreign_key :folders, :showrooms
  end
end
