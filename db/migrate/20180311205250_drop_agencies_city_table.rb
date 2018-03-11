class DropAgenciesCityTable < ActiveRecord::Migration[5.0]
  def change
  	drop_table :agencies_cities
  end
end
