class ExcursionsController < ApplicationController
  before_action :load_vars

  def show
    @excursion = Excursion.find(params[:id])
  end
end
