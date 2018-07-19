class AddDescriptionAndHtmlToActivity < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :description, :string
    add_column :activities, :html, :text
  end
end
