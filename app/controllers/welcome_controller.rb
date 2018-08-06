class WelcomeController < ApplicationController
	before_action :load_vars
	before_action :cookie_ads

	def index
		@sections = Section.with_pages
		@cities = City.where(in_home: true)
	end

	def show
	end
end
