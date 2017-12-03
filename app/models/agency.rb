# == Schema Information
#
# Table name: agencies
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Agency < ApplicationRecord
	validates :name, presence: true
	validates :name, length: { in: 2..200 }
	validates :description, length: { in: 10..255 }, allow_blank: true
end
