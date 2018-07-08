class AddImageToExcursion < ActiveRecord::Migration[5.0]
  def up
    add_attachment :excursions, :image
  end

  def down
    remove_attachment :excursions, :image
  end
end
