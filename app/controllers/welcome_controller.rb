class WelcomeController < ApplicationController
	before_action :load_vars

	def index
	end

	def show
	end

private
	def load_vars
		@cities_and_regions = JSON.parse(File.read('lib/json/cities-and-regions.json'))
		# @cities_and_regions = City

		@banners = [
	  { title: 'Zapatillas Orange', image: "banner1.png", contact: {phone: "299 444-5562", email: "mail@mail.com", street: "Calle 13, San Carlos de Bariloche", web: "http://www.web.com", facebook: "/fanpage"}},
	  { title: 'Mc Donald', image: "banner2.jpg", contact: {phone: "299 444-5562", email: "mail@mail.com", street: "Calle 13, San Carlos de Bariloche", web: "http://www.web.com", facebook: "/fanpage"} },
	  { title: 'Adidas', image: "banner3.jpg", contact: {phone: "299 444-5562", email: "mail@mail.com", street: "Calle 13, San Carlos de Bariloche", web: "http://www.web.com", facebook: "/fanpage"} },
	  { title: 'TAG Heuger', image: "banner4.jpg", contact: {phone: "299 444-5562", email: "mail@mail.com", street: "Calle 13, San Carlos de Bariloche", web: "http://www.web.com", facebook: "/fanpage"} }
		]

		@regions = Region.all

		@destacados = [
	  { title: 'Complejo Las Cabañas', starts: 5, vistas: 7 },
	  { title: 'El puente del Duende', starts: 3, vistas: 10 },
	  { title: 'Hotel del Sol', starts: 2, vistas: 11 },
	  { title: 'Cabañas la Cascada', starts: 5, vistas: 11 },
	  { title: 'Complejo el Hábitat', starts: 1, vistas: 9 },
	  { title: 'Hotel los 2 Hermanos', starts: 4, vistas: 8 },
	  { title: 'Cabañas del Angel', starts: 5, vistas: 2 },
	  { title: 'Cabañas el Arroyo', starts: 3, vistas: 5 }
		]
		@actividades = Activity.all
	end
end
