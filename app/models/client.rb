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
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  phone              :string
#  whatsapp           :string
#  email              :string
#  web                :string
#  facebook           :string
#  instagram          :string
#  google_map         :text
#

class Client < ApplicationRecord
	validates :name, :activity_id, :city_id, presence: true
	validates :name, length: { in: 2..200 }
  before_save :validate_http

  serialize :google_map, JSON

	belongs_to :activity
	belongs_to :city

	has_attached_file :image, styles: { large: "1000x565>", medium: "400x400>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  has_many :client_images, dependent: :destroy

  def youtube_embed
    regex = /(?:youtube(?:-nocookie)?\.com\/(?:[^\/\n\s]+\/\S+\/|(?:v|e(?:mbed)?)\/|\S*?[?&]v=)|youtu\.be\/)([a-zA-Z0-9_-]{11})/
    match = regex.match(self.youtube_url)
    if match && !match[1].blank?
      "https://www.youtube.com/embed/#{match[1]}"
    else
      nil
    end
  end

  def location_label
    self.google_map["formatted_address"] if self.google_map
  end

  def show_information
    info = ""
    info = info + "<div><i class='whatsapp icon'></i> #{self.whatsapp}</div>" if self.whatsapp?
    info = info + "<div><i class='phone volume icon'></i> #{self.phone}</div>" if self.phone?
    info = info + "<div><i class='at icon'></i> #{self.email}</div>" if self.email?
    info = info + "<div><i class='globe icon'></i> <a href='#{self.web}' target='_blank'>#{self.web}</a></div>" if self.web?
    info = info + "<div><i class='facebook icon'></i> <a href='#{self.facebook}' target='_blank'>#{self.facebook}</a></div>" if self.facebook?
    info = info + "<div><i class='instagram icon'></i> <a href='#{self.instagram}' target='_blank'>#{self.instagram}</a></div>" if self.instagram?
    info = "<h2 class='ui header'>Información</h2>#{info}" if info.present?
    info.html_safe
  end

private
  def add_http_protocol(web)
    if web.present?
      /^http|^https/ =~ web ? web : "http://#{web}"
    end
  end

  def validate_http
    self.web = add_http_protocol(self.web)
    self.facebook = add_http_protocol(self.facebook)
    self.instagram = add_http_protocol(self.instagram)
  end
end
