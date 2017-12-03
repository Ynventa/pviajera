# == Schema Information
#
# Table name: agencies_cities
#
#  id         :integer          not null, primary key
#  city_id    :integer
#  agency_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class AgenciesCity < ApplicationRecord
	belongs_to :city
	belongs_to :agency
end
