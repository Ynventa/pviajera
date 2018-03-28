# == Schema Information
#
# Table name: cities
#
#  id                 :integer          not null, primary key
#  name               :string
#  region_id          :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  province_id        :integer
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  description        :text
#

class City < ApplicationRecord

	validates :name, :region_id, :province_id, presence: true
	validates :name, length: { in: 2..200 }	

	belongs_to :region
	belongs_to :province

	has_attached_file :image, styles: { large: "1000x565>", medium: "400x400>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
