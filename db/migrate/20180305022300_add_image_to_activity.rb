class AddImageToActivity < ActiveRecord::Migration[5.0]
  def up
    add_attachment :activities, :image
  end

  def down
    remove_attachment :activities, :image
  end
end
