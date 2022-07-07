# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."

adjective = ["Beautiful", "Spacious", "Luxurious","Stylish","Lush"]
room_type = ["Villa","Apartment","Hotel"]
city = ["London", "Tokyo", "Seoul", "Paris"]

5.times do
  Flat.create!(
    name: "#{adjective.sample} #{room_type.sample} in #{city.sample}",
    address: Faker::Address.street_address,
    description: Faker::Lorem.sentence(word_count: 23),
    price_per_night: rand(3000..20000),
    number_of_guests: rand(2..10)
  )
end
puts "Finished!"
