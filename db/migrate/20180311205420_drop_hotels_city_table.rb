class DropHotelsCityTable < ActiveRecord::Migration[5.0]
  def change
  	  	drop_table :hotels_cities
  end
end
