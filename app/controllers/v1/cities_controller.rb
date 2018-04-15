module V1
  class CitiesController < ApplicationController
    def index
      if params[:query]
        cities = City.where("unaccent(name) ILIKE unaccent(?)", "%#{params[:query]}%")
      else
        cities = City.all
      end
      render json: cities
    end

  end
end