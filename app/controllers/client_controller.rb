class ClientController < ApplicationController
	before_action :load_vars
	
	def show
		@client = Client.find(params[:id])
	end
end
