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

require 'test_helper'

class AgenciesCityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
