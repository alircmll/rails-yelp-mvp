# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Le carreau',
    address:      ' 30 Rue du Pas-Saint-Georges, 33000 Bordeaux',
    phone_number:  '05 57 85 90 13',
    category:       'french'
  },
  {
    name:         'Café Japonais',
    address:      '22 Rue Saint-Siméon, 33000 Bordeaux',
    phone_number:  '05 56 48 68 68',
    category:      'japanese'
  },
  {
    name:         'Monzu',
    address:      'Centre commercial des grands hommes, 12 Place des Grands Hommes, 33000 Bordeaux',
    phone_number:  '05 64 28 59 98',
    category:      'italian'
  },
  {
    name:         "La Fontaine d'Or",
    address:      '58 Rue du Pas-Saint-Georges, 33000 Bordeaux',
    phone_number:  '05 56 01 29 32',
    category:      'chinese'
  },
  {
    name:         'Gourmands',
    address:      '172 Rue Sainte-Catherine, 33000 Bordeaux',
    phone_number:  '06 87 75 61 60',
    category:      'belgian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
