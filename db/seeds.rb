# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


puts "Clearing database..."
Restaurant.destroy_all

# ["chinese", "italian", "japanese", "french", "belgian"]
puts "Creating restaurants"
restaurant_1 = Restaurant.create!(name: "Happy Goumet", address: "Chelmsford", category: "chinese")
restaurant_2 = Restaurant.create!(name: "Pizza Union", address: "London", category: "italian")
restaurant_3 = Restaurant.create!(name: "Moto Pizza", address: "Chelmsford", category: "italian")
restaurant_4 = Restaurant.create!(name: "Bakehouse", address: "Hong Kong", category: "french")
restaurant_5 = Restaurant.create!(name: "Din Tai Fung", address: "London", category: "chinese")
restaurant_6 = Restaurant.create!(name: "Uzumaki London", address: "London", category: "japanese")
restaurant_7 = Restaurant.create!(name: "Dim Sum Duck", address: "King's Cross", category: "chinese")

puts "Finished! #{Restaurant.count} restaurants created!"
