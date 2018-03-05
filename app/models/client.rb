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
#  address_json       :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Client < ApplicationRecord
	validates :name, :activity_id, :city_id, presence: true
	validates :name, length: { in: 2..200 }	

	belongs_to :activity
	belongs_to :city

	has_attached_file :image, styles: { large: "1000x565>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
