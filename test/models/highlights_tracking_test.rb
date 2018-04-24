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

require 'test_helper'

class HighlightsTrackingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
