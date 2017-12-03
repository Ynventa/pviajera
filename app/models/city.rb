# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  name       :string
#  region_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class City < ApplicationRecord
	validates :name, :region_id, presence: true
	validates :name, length: { in: 2..200 }	

	belongs_to :region
	
	has_many :hotels_cities
	has_many :hotels, through: :hotels_cities

	has_many :agencies_cities
	has_many :agencies, through: :agencies_cities
end
