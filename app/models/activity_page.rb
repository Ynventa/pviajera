# == Schema Information
#
# Table name: activity_pages
#
#  id          :integer          not null, primary key
#  page_id     :integer
#  activity_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ActivityPage < ApplicationRecord
  belongs_to :activity
  belongs_to :page
end
