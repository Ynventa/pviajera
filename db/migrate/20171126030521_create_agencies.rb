class CreateAgencies < ActiveRecord::Migration[5.0]
  def change
    create_table :agencies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
