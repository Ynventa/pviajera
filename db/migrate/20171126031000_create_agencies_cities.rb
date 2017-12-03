class CreateAgenciesCities < ActiveRecord::Migration[5.0]
  def change
    create_table :agencies_cities do |t|
      t.integer :city_id
      t.integer :agency_id

      t.timestamps
    end
  end
end
