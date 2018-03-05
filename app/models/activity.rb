# == Schema Information
#
# Table name: activities
#
#  id                 :integer          not null, primary key
#  name               :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Activity < ApplicationRecord
	validates :name, presence: true
	validates :name, length: { in: 2..200 }	

	has_attached_file :image, styles: { large: "1000x565>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
