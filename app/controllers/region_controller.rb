class RegionController < ApplicationController
	before_action :load_vars
	
	def index
	end

	def show
		@region = Region.find(params[:id])
		@cities = City.where(region_id: params[:id])
	end
end
