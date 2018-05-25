class AddAdminToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :admin, :boolean, default: false

    User.reset_column_information

    User.where(admin: false).each do |user|
      user.admin = true
      user.save!
    end
  end
end
