class AddHtmlToCity < ActiveRecord::Migration[5.0]
  def change
    add_column :cities, :html, :text
  end
end
