class AddShowroomIdToShowpins < ActiveRecord::Migration
  def change
    add_reference :showpins, :showroom, index: true
    add_foreign_key :showpins, :showrooms
  end
end
