class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name, limit: 100
      t.string :email, limit: 50
      t.string :phone, limit: 100
      t.text :comment, limit: 1000

      t.timestamps
    end
  end
end
