module V1
  class CitiesController < ApplicationController
    def index
      if params[:query]
        cities = City.where("name ILIKE ?", "%#{params[:query]}%")
      else
        cities = City.all
      end
      render json: cities
    end

  end
end