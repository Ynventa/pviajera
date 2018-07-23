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

class CategoryClient < ApplicationRecord
  belongs_to :client
  belongs_to :category
end
