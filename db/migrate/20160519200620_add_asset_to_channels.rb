class AddAssetToChannels < ActiveRecord::Migration
  def change
    add_column :channels, :asset_uid, :string
    add_column :channels, :asset_name, :string
  end
end
