# == Schema Information
#
# Table name: highlights
#
#  id                 :integer          not null, primary key
#  client_id          :integer
#  date_start         :date
#  date_end           :date
#  status             :integer
#  views              :integer
#  clicks             :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

require 'test_helper'

class HighlightTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
