class CreateHighlights < ActiveRecord::Migration[5.0]
  def change
    create_table :highlights do |t|
      t.integer :client_id
      t.date :date_start
      t.date :date_end
      t.integer :status, limit: 1
      t.integer :views
      t.integer :clicks

      t.timestamps
    end
  end
end
