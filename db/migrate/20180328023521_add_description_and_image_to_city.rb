class AddDescriptionAndImageToCity < ActiveRecord::Migration[5.0]
  def change
    add_attachment :cities, :image
    change_table :cities do |t|
      t.text :description
    end
  end
end
