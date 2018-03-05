class AddProvinceIdToCities < ActiveRecord::Migration[5.0]
  def up
    add_column :cities, :province_id, :integer
  end

  def down
    remove_column :cities, :province_id
  end
end
