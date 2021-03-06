class ActivityController < ApplicationController
	before_action :load_vars
	
	def index
		@activities = Activity.all
	end

	def show
		@activity = Activity.find(params[:id])
		@clients = Client.where(activity_id: params[:id])
    @cities = @activity.clients.map{|client| [client.city.id, client.city.name]}.uniq
	end
end
