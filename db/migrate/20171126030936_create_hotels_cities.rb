class CreateHotelsCities < ActiveRecord::Migration[5.0]
  def change
    create_table :hotels_cities do |t|
      t.integer :city_id
      t.integer :hotel_id

      t.timestamps
    end
  end
end
