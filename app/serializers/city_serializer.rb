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
#  html               :text
#  in_home            :boolean          default(FALSE)
#

class CitySerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  
  attributes :id, :name, :region_name, :province_name, :url

  def region_name
  	object.region.name
  end

  def province_name
  	object.province.name
  end

  def url
  	city_path object.id
  end
end
