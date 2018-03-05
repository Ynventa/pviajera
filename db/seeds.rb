# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# user = User.new(
#   email: 'patagonia.viajera@gmail.com', 
#   password: '123456', 
#   password_confirmation: '123456'
# )
# user.skip_confirmation!
# user.save!


Activity.create!([
  {name: "Hoteleria", image_file_name: nil, image_content_type: nil, image_file_size: nil, image_updated_at: nil},
  {name: "Excursiones", image_file_name: nil, image_content_type: nil, image_file_size: nil, image_updated_at: nil}
])
City.create!([
  {name: "Cipolletti", region_id: 1, province_id: 2},
  {name: "Neuquen", region_id: 1, province_id: 1},
  {name: "Allen", region_id: 1, province_id: 2},
  {name: "General Roca", region_id: 1, province_id: 2},
  {name: "Cinco Saltos", region_id: 1, province_id: 2},
  {name: "Plottier", region_id: 1, province_id: 1},
  {name: "Centenario", region_id: 1, province_id: 1},
  {name: "Villa El Chocon", region_id: 1, province_id: 1},
  {name: "San Patricio del Chañar", region_id: 1, province_id: 1},
  {name: "Añelo", region_id: 1, province_id: 1},
  {name: "Cutral Co - Plaza Huincul", region_id: 1, province_id: 1},
  {name: "Zapala", region_id: 1, province_id: 1},
  {name: "Caviahue Copahue", region_id: 2, province_id: 1},
  {name: "Villa Pehuenia", region_id: 2, province_id: 1},
  {name: "Moquehue", region_id: 2, province_id: 1},
  {name: "Villa Traful", region_id: 3, province_id: 1},
  {name: "San Carlos de Bariloche", region_id: 3, province_id: 2},
  {name: "El Bolson", region_id: 3, province_id: 1},
  {name: "Las Grutas", region_id: 5, province_id: 2},
  {name: "Gaiman", region_id: 5, province_id: 3},
  {name: "Puerto Madryn", region_id: 5, province_id: 3},
  {name: "Rawson", region_id: 5, province_id: 3},
  {name: "Los Antiguos", region_id: 4, province_id: 4},
  {name: "Perito Moreno", region_id: 4, province_id: 4},
  {name: "Calafate", region_id: 4, province_id: 4},
  {name: "San Martín de los Andes", region_id: 3, province_id: 1}
])
Province.create!([
  {name: "Neuquén"},
  {name: "Río Negro"},
  {name: "Chubut"},
  {name: "Santa Cruz"}
])
Region.create!([
  {name: "Valle Patagónico"},
  {name: "Volcanes y Cordillera"},
  {name: "Bosques y Lagos"},
  {name: "Glaciares y Fin del Mundo"},
  {name: "Atlántica"}
])
