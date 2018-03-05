class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.text :description
      t.integer :activity_id
      t.integer :city_id
      t.string :youtube_url
      t.text :address_json

      t.timestamps
    end
  end
end
