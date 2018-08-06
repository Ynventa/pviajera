# == Schema Information
#
# Table name: highlights
#
#  id                              :integer          not null, primary key
#  date_start                      :date
#  date_end                        :date
#  status                          :integer
#  views                           :integer
#  clicks                          :integer
#  created_at                      :datetime         not null
#  updated_at                      :datetime         not null
#  location_top                    :boolean          default(FALSE)
#  location_horizontal             :boolean          default(FALSE)
#  location_left                   :boolean          default(FALSE)
#  location_right                  :boolean          default(FALSE)
#  top_video                       :boolean          default(FALSE)
#  image_top_file_name             :string
#  image_top_content_type          :string
#  image_top_file_size             :integer
#  image_top_updated_at            :datetime
#  image_horizontal_file_name      :string
#  image_horizontal_content_type   :string
#  image_horizontal_file_size      :integer
#  image_horizontal_updated_at     :datetime
#  image_left_file_name            :string
#  image_left_content_type         :string
#  image_left_file_size            :integer
#  image_left_updated_at           :datetime
#  image_left_fliped_file_name     :string
#  image_left_fliped_content_type  :string
#  image_left_fliped_file_size     :integer
#  image_left_fliped_updated_at    :datetime
#  image_right_file_name           :string
#  image_right_content_type        :string
#  image_right_file_size           :integer
#  image_right_updated_at          :datetime
#  image_right_fliped_file_name    :string
#  image_right_fliped_content_type :string
#  image_right_fliped_file_size    :integer
#  image_right_fliped_updated_at   :datetime
#  top_video_url                   :string
#  link                            :string
#  client_name                     :string
#

class Highlight < ApplicationRecord
	validates :date_start, :date_end, :status, presence: true
	before_save :validate_http

	scope :actives, -> { where(status: 2).where('date_start <= ? AND date_end >= ?', Time.now, Time.now) }

	has_attached_file :image_top, styles: { normal: "980" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image_top, content_type: /\Aimage\/.*\z/

  has_attached_file :image_horizontal, styles: { normal: "980" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image_horizontal, content_type: /\Aimage\/.*\z/

  has_attached_file :image_left, styles: { normal: "200x800>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image_left, content_type: /\Aimage\/.*\z/

	has_attached_file :image_left_fliped, styles: { normal: "200x800>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image_left_fliped, content_type: /\Aimage\/.*\z/

	has_attached_file :image_right, styles: { normal: "200x800>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image_right, content_type: /\Aimage\/.*\z/

  has_attached_file :image_right_fliped, styles: { normal: "200x800>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image_right_fliped, content_type: /\Aimage\/.*\z/

	# has_many :highlights_trackings

	STATUS_VALUE = [:stoped, :paused, :running]
	enum status: STATUS_VALUE
	def status_enum
		STATUS_VALUE.each_with_index.to_a
		# self.class.statuses.to_a
	end

	def status= value
	  if value.kind_of?(String) and value.to_i.to_s == value
	    super value.to_i
	  else
	    super value
	  end
	end

	def location_banners
		content = ""
		content = "Top Home" if location_top
		content = content + " - Horizontales" if location_horizontal
		content = content + " - Izquierda" if location_left
		content = content + " - Derecha" if location_right
		content = content + " - Video top home" if top_video

		content
	end

	private
	def add_http_protocol(web)
		if web.present?
			/^http|^https/ =~ web ? web : "http://#{web}"
		end
	end

	def validate_http
		self.link = add_http_protocol(self.link)
	end
end
