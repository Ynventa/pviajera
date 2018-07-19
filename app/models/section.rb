# == Schema Information
#
# Table name: sections
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Section < ApplicationRecord
  scope :with_pages, -> {
    joins(:pages).where.not(pages: {section_id: nil}).group(:id)
  }

  has_many :pages

  def first_page
    self.pages.first
  end

  def slug
    self.title.parameterize
  end
end
