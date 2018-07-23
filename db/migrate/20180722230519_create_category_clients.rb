class CreateCategoryClients < ActiveRecord::Migration[5.0]
  def change
    create_table :category_clients do |t|
      t.integer :client_id
      t.integer :category_id

      t.timestamps
    end
  end
end
