# == Schema Information
#
# Table name: categories
#
#  id             :integer          not null, primary key
#  title          :string
#  parent_id      :integer
#  show_like_list :boolean
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Category < ApplicationRecord
  belongs_to :parent, :class_name => 'Category'
  has_many :children, :class_name => 'Category', :foreign_key => 'parent_id'

  has_many :category_clients
  has_many :clients, through: :category_clients

  scope :subcategories, -> { where.not(parent: nil) }
  scope :only_parents, -> { where(parent: nil) }

  validates :parent, absence: { message: "no puede ser el mismo" }, if: :parent_id_validation?

  def parent_id_validation?
    self.id!=nil && self.id == self.parent_id
  end

  def name
    parent_name = " (#{parent.title})" if parent.present?
    "#{title}#{parent_name}"
  end
end
