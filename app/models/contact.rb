# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  name       :string(100)
#  email      :string(50)
#  phone      :string(100)
#  comment    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Contact < ApplicationRecord
  validates :name, :email, :comment, presence: true
  validates :name, length: { in: 4..100 } 
  validates :email, length: { in: 8..50 } 
  validates :phone, length: { in: 4..100 } 
  validates :comment, length: { in: 10..1000 } 

end
