class CreateHighlightsTrackings < ActiveRecord::Migration[5.0]
  def change
    create_table :highlights_trackings do |t|
      t.integer :highlight_id
      t.string :ip, limit: 20
      t.string :cookie
      t.datetime :datetime

      t.timestamps
    end
  end
end
