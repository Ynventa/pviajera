class AddPhoneWhatsappEmailWebFacebookInstagramToClient < ActiveRecord::Migration[5.0]
  def change
    change_table :clients do |t|
      t.string :phone
      t.string :whatsapp
      t.string :email
      t.string :web
      t.string :facebook
      t.string :instagram
    end
  end
end
