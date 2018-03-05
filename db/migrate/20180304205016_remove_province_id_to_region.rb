class RemoveProvinceIdToRegion < ActiveRecord::Migration[5.0]
  def up
  	remove_column :regions, :province_id
  end

  def down
  	add_column :regions, :province_id, :integer
  end
end
