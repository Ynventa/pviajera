# == Schema Information
#
# Table name: cities
#
#  id          :integer          not null, primary key
#  name        :string
#  region_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  province_id :integer
#

class CitySerializer < ActiveModel::Serializer
  attributes :id, :name, :region_name, :province_name

  def region_name
  	object.region.name
  end

  def province_name
  	object.province.name
  end
end
