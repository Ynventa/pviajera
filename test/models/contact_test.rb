# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  name       :string(100)
#  email      :string(50)
#  phone      :string(100)
#  comment    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
