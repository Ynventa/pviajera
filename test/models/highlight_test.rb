# == Schema Information
#
# Table name: highlights
#
#  id                              :integer          not null, primary key
#  date_start                      :date
#  date_end                        :date
#  status                          :integer
#  views                           :integer
#  clicks                          :integer
#  created_at                      :datetime         not null
#  updated_at                      :datetime         not null
#  location_top                    :boolean          default(FALSE)
#  location_horizontal             :boolean          default(FALSE)
#  location_left                   :boolean          default(FALSE)
#  location_right                  :boolean          default(FALSE)
#  top_video                       :boolean          default(FALSE)
#  image_top_file_name             :string
#  image_top_content_type          :string
#  image_top_file_size             :integer
#  image_top_updated_at            :datetime
#  image_horizontal_file_name      :string
#  image_horizontal_content_type   :string
#  image_horizontal_file_size      :integer
#  image_horizontal_updated_at     :datetime
#  image_left_file_name            :string
#  image_left_content_type         :string
#  image_left_file_size            :integer
#  image_left_updated_at           :datetime
#  image_left_fliped_file_name     :string
#  image_left_fliped_content_type  :string
#  image_left_fliped_file_size     :integer
#  image_left_fliped_updated_at    :datetime
#  image_right_file_name           :string
#  image_right_content_type        :string
#  image_right_file_size           :integer
#  image_right_updated_at          :datetime
#  image_right_fliped_file_name    :string
#  image_right_fliped_content_type :string
#  image_right_fliped_file_size    :integer
#  image_right_fliped_updated_at   :datetime
#  top_video_url                   :string
#  link                            :string
#  client_name                     :string
#

require 'test_helper'

class HighlightTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
