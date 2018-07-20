class AddCityIdToActivity < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :city_id, :integer
  end
end
