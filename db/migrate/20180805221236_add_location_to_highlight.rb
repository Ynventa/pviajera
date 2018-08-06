class AddLocationToHighlight < ActiveRecord::Migration[5.0]
  def change
    add_column :highlights, :location_top, :boolean, default: false
    add_column :highlights, :location_horizontal, :boolean, default: false
    add_column :highlights, :location_left, :boolean, default: false
    add_column :highlights, :location_right, :boolean, default: false
    add_column :highlights, :top_video, :boolean, default: false

    add_attachment :highlights, :image_top
    add_attachment :highlights, :image_horizontal
    add_attachment :highlights, :image_left
    add_attachment :highlights, :image_left_fliped
    add_attachment :highlights, :image_right
    add_attachment :highlights, :image_right_fliped

    remove_attachment :highlights, :image

    add_column :highlights, :top_video_url, :string

    add_column :highlights, :link, :string
  end
end
