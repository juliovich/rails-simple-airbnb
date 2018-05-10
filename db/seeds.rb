# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating restaurants...'
flats_attributes = [
  {
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
  },
  {
  name: 'Dark and dangerous house',
  address: 'Plaza Cataluña, 39 Barcelona',
  description: 'A ridiculous winter feel for this litle. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 35,
  number_of_guests: 4
  },
  {
  name: 'Gypsy Camp in the center of Roma',
  address: 'Arround fontana di Trevi, Rome ',
  description: 'Feel free to camp in the middle of the city. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 3,
  number_of_guests: 300
  },
  {
  name: 'Mountain resort',
  address: 'Cime des aigles, Montblanc',
  description: 'Marvelous views from the top of the glaciar. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 200,
  number_of_guests: 2
  },
]
Flat.create!(flats_attributes)
puts 'Finished!'
