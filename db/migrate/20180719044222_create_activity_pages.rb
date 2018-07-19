class CreateActivityPages < ActiveRecord::Migration[5.0]
  def change
    create_table :activity_pages do |t|
      t.integer :page_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
