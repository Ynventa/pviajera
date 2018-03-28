# == Schema Information
#
# Table name: cities
#
#  id                 :integer          not null, primary key
#  name               :string
#  region_id          :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  province_id        :integer
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  description        :text
#

require 'test_helper'

class CityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
