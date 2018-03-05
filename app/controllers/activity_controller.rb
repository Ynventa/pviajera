class ActivityController < ApplicationController
	before_action :load_vars
	
	def index
	end

	def show
		@activity = Activity.find(params[:id])
		@clients = Client.where(activity_id: params[:id])
	end
end
