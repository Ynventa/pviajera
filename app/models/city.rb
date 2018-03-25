# == Schema Information
#
# Table name: cities
#
#  id          :integer          not null, primary key
#  name        :string
#  region_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  province_id :integer
#
class City < ApplicationRecord

	validates :name, :region_id, :province_id, presence: true
	validates :name, length: { in: 2..200 }	

	belongs_to :region
	belongs_to :province
end
