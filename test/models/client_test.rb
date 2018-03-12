# == Schema Information
#
# Table name: clients
#
#  id                 :integer          not null, primary key
#  name               :string
#  description        :text
#  activity_id        :integer
#  city_id            :integer
#  youtube_url        :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  phone              :string
#  whatsapp           :string
#  email              :string
#  web                :string
#  facebook           :string
#  instagram          :string
#  google_map         :text
#

require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
