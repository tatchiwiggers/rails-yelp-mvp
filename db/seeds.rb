# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Cleaning DB...'
Restaurant.destroy_all
puts 'DB clean!'

10.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.city,
    phone_number: Faker::PhoneNumber.cell_phone,
    # category: ["Chinese", "Italian", "Japanese", "French", "Belgian"].sample
  )
  puts "Restaurant #{restaurant.id} was created."
end

Category.destroy_all

5.times do
  category = Category.create!(
    name: Faker::Food.ethnic_category
  )
end