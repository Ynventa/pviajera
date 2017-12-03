# == Schema Information
#
# Table name: hotels_cities
#
#  id         :integer          not null, primary key
#  city_id    :integer
#  hotel_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class HotelsCity < ApplicationRecord

	belongs_to :city
	belongs_to :hotel
end
