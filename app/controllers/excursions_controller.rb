class ExcursionsController < ApplicationController
  before_action :load_vars

  def index
  end

  def show
    @excursion = Excursion.find(params[:id])
  end
end
