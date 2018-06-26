class AddImageToHighlight < ActiveRecord::Migration[5.0]
  def up
    add_attachment :highlights, :image
  end

  def down
    remove_attachment :highlights, :image
  end
end
