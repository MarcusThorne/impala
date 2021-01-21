# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Room.create!(name: 'Private Room', beds: 1, floor: 5, private_bathroom: true, room_number: 1 )
puts('First Private 1 bed room created')
Room.create!(name: 'Private Room', beds: 1, floor: 5, private_bathroom: true, room_number: 2 )
puts('Second Private 1 bed room created')
Room.create!(name: 'Private Room', beds: 1, floor: 5, private_bathroom: true, room_number: 3 )
puts('Third Private 1 bed room created')
Room.create!(name: 'Private Room', beds: 1, floor: 5, private_bathroom: true, room_number: 4 )
puts('Forth Private 1 bed room created')
Room.create!(name: '2 Bed Dorm', beds: 2, floor: 1, private_bathroom: false, room_number: 5 )
puts('First 2 bed dorm created')
Room.create!(name: '2 Bed Dorm', beds: 2, floor: 1, private_bathroom: false, room_number: 6 )
puts('Second 2 bed dorm created')
Room.create!(name: '4 Bed Dorm', beds: 4, floor: 2, private_bathroom: false, room_number: 7 )
puts('First 4 bed dorm created')
Room.create!(name: '4 Bed Dorm', beds: 4, floor: 2, private_bathroom: false, room_number: 8 )
puts('Second 4 bed dorm created')
Room.create!(name: '8 Bed Dorm', beds: 8, floor: 3, private_bathroom: false, room_number: 9 )
puts('First 8 bed dorm created')
Room.create!(name: '8 Bed Dorm', beds: 8, floor: 4, private_bathroom: false, room_number: 10 )
puts('Second 8 bed dorm created')