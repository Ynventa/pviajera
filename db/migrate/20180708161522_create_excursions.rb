class CreateExcursions < ActiveRecord::Migration[5.0]
  def change
    create_table :excursions do |t|
      t.string :title
      t.string :description
      t.text :html
      t.text :google_map
      t.integer :city_id
      t.string :phone
      t.string :whatsapp
      t.string :email
      t.string :web
      t.string :facebook
      t.string :instagram
      t.string :youtube_url

      t.timestamps
    end
  end
end
