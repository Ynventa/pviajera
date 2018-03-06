class CityController < ApplicationController
	before_action :load_vars

	def index
	end

	def show
		puts "#{params[:activity_id]} - #{params[:id]}"
		@city = City.find(params[:id])
		@clients = Client.where(city_id: params[:id], activity_id: params[:activity_id]) if params[:activity_id]
		@activity = Activity.find(params[:activity_id]) if params[:activity_id]
		if params[:activity_id]
			@title = "#{@activity.name} en #{@city.name}"
		else
			@title = @city.name
		end
	end
end
