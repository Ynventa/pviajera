class CreateClientImages < ActiveRecord::Migration[5.0]
  def change
    create_table :client_images do |t|
      t.integer :client_id

      t.timestamps
    end
  end
end
