class WelcomeController < ApplicationController
	before_action :load_vars
	before_action :cookie_ads

	def index
		@sections = Section.with_pages
	end

	def show
	end
end
