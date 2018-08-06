class PagesController < ApplicationController
  before_action :load_vars

  def show
    @page = Page.find(params[:id])
    @pages_current_section = Page.where(section_id: @page.section_id)
    @activities = @page.activities
  end
end
