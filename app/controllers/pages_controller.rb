class PagesController < ApplicationController
  def show
    @page = Page.find(params[:id])
    @pages_current_section = Page.where(section_id: @page.section_id)
    @activities = @page.activities
  end
end
