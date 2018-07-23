# == Schema Information
#
# Table name: category_clients
#
#  id          :integer          not null, primary key
#  client_id   :integer
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class CategoryClientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
