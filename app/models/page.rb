# == Schema Information
#
# Table name: pages
#
#  id                 :integer          not null, primary key
#  title              :string
#  description        :string
#  html               :text
#  section_id         :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Page < ApplicationRecord
  acts_as_ordered_taggable

  has_many :activity_pages
  has_many :activities, through: :activity_pages

  belongs_to :section

  has_attached_file :image, styles: { large: "1000x565>", medium: "400x400>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def slug
    self.title.parameterize
  end

  def virtual_field
    self.tag_list.join(", ") if self.tag_list.any?
  end
end
