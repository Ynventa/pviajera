class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :title
      t.string :description
      t.text :html
      t.integer :section_id

      t.timestamps
    end
  end
end
