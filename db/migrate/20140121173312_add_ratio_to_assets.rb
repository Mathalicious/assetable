class AddRatioToAssets < ActiveRecord::Migration[4.2]
  def change
    add_column :assetable_assets, :ratio, :float, precision: 5, scale: 4
  end
end
