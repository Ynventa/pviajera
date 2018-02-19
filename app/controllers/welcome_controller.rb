class WelcomeController < ApplicationController
	before_action :load_vars

	def index
	end

	def show
	end

private
	def load_vars
		@cities = [
	  { title: 'Neuquen', quantity: 10 },
	  { title: 'Cinco Saltos', quantity: 5 },
	  { title: 'Plottier', quantity: 1 },
	  { title: 'Santa Cruz', quantity: 50 },
	  { title: 'Caleta Olivia', quantity: 60 },
	  { title: 'Bariloche', quantity: 70 },
	  { title: 'San Martín de los Andes', quantity: 80 },
	  { title: 'Villa la Angostura', quantity: 100 }
		]

		@cities = @cities.sort_by {|obj| obj[:quantity]}.reverse

		@destacados = [
	  { title: 'Complejo Las Cabañas', starts: 5, vistas: 7 },
	  { title: 'El puente del Duende', starts: 3, vistas: 10 },
	  { title: 'Hotel del Sol', starts: 2, vistas: 11 },
	  { title: 'Cabañas la Cascada', starts: 5, vistas: 11 },
	  { title: 'Complejo el Hábitat', starts: 1, vistas: 9 },
	  { title: 'Hotel los 2 Hermanos', starts: 4, vistas: 8 },
	  { title: 'Cabañas del Angel', starts: 5, vistas: 2 },
	  { title: 'Cabañas el Arroyo', starts: 3, vistas: 5 }
		]	end
end


