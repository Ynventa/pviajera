class AddInHomeToCity < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :in_home, :boolean, default: false

    City.update_all(in_home: false)
  end
end
