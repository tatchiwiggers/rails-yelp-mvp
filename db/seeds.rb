# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Wiping Database..."
Restaurant.destroy_all
puts "Database Wiped!"

10.times do 
    restaurant = Restaurant.create!(
        name: Faker::Restaurant.name,
        address: Faker::Address.city,
        category: ["chinese", "italian", "japanese", "french", "belgian", "Mongolian"].sample,
        phone_number: Faker::PhoneNumber.phone_number_with_country_code
    )
    puts "Created restaurant #{restaurant.id}..."
end
puts "All done!"
