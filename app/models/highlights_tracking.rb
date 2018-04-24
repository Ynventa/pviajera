# == Schema Information
#
# Table name: highlights_trackings
#
#  id           :integer          not null, primary key
#  highlight_id :integer
#  ip           :string(20)
#  cookie       :string
#  datetime     :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class HighlightsTracking < ApplicationRecord
	belongs_to :highlight

end
