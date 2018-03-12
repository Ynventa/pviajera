class AddGoogleMapToClients < ActiveRecord::Migration[5.0]
  def change
    change_table :clients do |t|
      t.text :google_map
      remove_column :clients, :address_json
    end
  end
end


