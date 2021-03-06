class CityController < ApplicationController
  before_action :load_vars

  def show
    @city = City.find(params[:id])
    @activities_city = []
    @excursions = Excursion.where(city_id: @city)
    @activity = nil
    @categories = Category.only_parents
    @clients = Client.where(city_id: @city)

    if params[:subcategory].present?
      @clients = @clients.joins(:categories).where('categories.id' => params[:subcategory])
    elsif params[:category].present?
      @clients = @clients.joins(:categories).where('categories.parent_id' => params[:category])
    end

    if params[:category].present?
      @breadcrumb_category = @categories.find(params[:category])
    end

    if params[:activity_id]
      @activity = Activity.find(params[:activity_id])
    else
      @activities_city = @clients.where(city_id: @city).map{|cl| cl.activity}.uniq
    end

  end
end
