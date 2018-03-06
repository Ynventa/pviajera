class ClientController < ApplicationController
	before_action :load_vars
	
	def index
	end

	def show
		@client = Client.find(params[:id])
	end
end
