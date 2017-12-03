# == Schema Information
#
# Table name: provinces
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Province < ApplicationRecord
	validates :name, presence: true
	validates :name, length: { in: 4..30 }
	
end
