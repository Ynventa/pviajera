class RemoveClientToHighlight < ActiveRecord::Migration[5.0]
  def change
    add_column :highlights, :client_name, :string
    remove_column :highlights, :client_id, :integer
  end
end
