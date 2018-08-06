class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	#before_action :authenticate_user!

	def cookie_ads
		unless cookies[:pviajera]
			cookies[:pviajera] = {
			  value: 'a yummy cookie',
			  expires: 1.month.from_now,
			  domain: 'localhost'
			}
		end
	end

	def load_vars
		@banners = Highlight.actives
		@regions = Region.all
		@actividades = Activity.all
	end
end
