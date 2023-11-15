# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# categories chinese italian japanese french belgian

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
les_gateaux_de_coco = {name: "Les gâteaux de Coco", address: "112 rue de Vaugirard", category: "belgian"}
les_biobios = {name: "Les BioBios", address: "38 rue du Chateau d'Eau", category: "french"}
kyoto = {name: "Kyoto", address: "38 Boulevard Montparnasse", category: "japanese"}

[dishoom, pizza_east, les_gateaux_de_coco, les_biobios, kyoto].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
