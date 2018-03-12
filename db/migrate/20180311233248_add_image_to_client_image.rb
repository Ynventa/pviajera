class AddImageToClientImage < ActiveRecord::Migration[5.0]
  def up
    add_attachment :client_images, :image
  end

  def down
    remove_attachment :client_images, :image
  end
end
