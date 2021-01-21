# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
number = (1..50).to_a

number.each do |n|
  room = Room.create!(room_number: n, name: (Faker::Number.within(range: 4..12)).to_s + " Bed Dorm", beds: Faker::Number.within(range: 4..12), floor: Faker::Number.within(range: 0..8), private_bathroom: true || false)
  puts "Room number #{room.room_number} created"
end
