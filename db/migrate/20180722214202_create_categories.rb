class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :title
      t.integer :parent_id
      t.boolean :show_like_list

      t.timestamps
    end
  end
end
