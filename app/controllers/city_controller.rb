class CityController < ApplicationController
	before_action :load_vars

	def show
		puts "#{params[:activity_id]} - #{params[:id]}"
		@city = City.find(params[:id])
		@activities_city = []
		@excursions = Excursion.where(city_id: @city)
		if params[:activity_id]
			@clients = Client.where(city_id: params[:id], activity_id: params[:activity_id])
			@activity = Activity.find(params[:activity_id])
			@title = "#{@activity.name} en #{@city.name}"
		else
			@clients = Client.where(city_id: params[:id]).order(:activity_id)
			@activities_city = @clients.where(city_id: 2).map{|cl| cl.activity}.uniq
			@title = @city.name
		end

	end
end
