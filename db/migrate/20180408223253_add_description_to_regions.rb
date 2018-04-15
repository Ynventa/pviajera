class AddDescriptionToRegions < ActiveRecord::Migration[5.0]
  def change
    add_column :regions, :description, :text
  end
end
