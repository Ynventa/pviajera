# == Schema Information
#
# Table name: highlights
#
#  id         :integer          not null, primary key
#  client_id  :integer
#  date_start :date
#  date_end   :date
#  status     :integer
#  views      :integer
#  clicks     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Highlight < ApplicationRecord
	validates :client_id, :date_start, :date_end, :status, presence: true

	has_attached_file :image, styles: { normal: "400x400>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	belongs_to :client
	has_many :highlights_trackings

	enum status: [:stoped, :paused, :running]
	def status_enum
		self.class.statuses.to_a
	end

	def status= value
	  if value.kind_of?(String) and value.to_i.to_s == value
	    super value.to_i
	  else
	    super value
	  end
	end
end
