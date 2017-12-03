# == Schema Information
#
# Table name: regions
#
#  id          :integer          not null, primary key
#  name        :string
#  province_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Region < ApplicationRecord
	validates :name, :province_id, presence: true
	validates :name, length: { in: 4..30 }

	belongs_to :province
end
