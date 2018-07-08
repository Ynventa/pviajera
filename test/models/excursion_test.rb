# == Schema Information
#
# Table name: excursions
#
#  id                 :integer          not null, primary key
#  title              :string
#  description        :string
#  html               :text
#  google_map         :text
#  city_id            :integer
#  phone              :string
#  whatsapp           :string
#  email              :string
#  web                :string
#  facebook           :string
#  instagram          :string
#  youtube_url        :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

require 'test_helper'

class ExcursionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
