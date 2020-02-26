# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

User.destroy_all
Space.destroy_all

user = User.create

addresses = ['Colima 159','Guanajuato 118', 'Campeche 281', 'Colima 55',
  'Bajío 231', 'Campeche 237', 'Querétaro 99', 'Alfonso Reyes 58',
    'Alfonso Reyes 216', 'Tabasco 216', 'Tabasco 198']

i = 0
12.times do
  space = Space.create!(
    name: "Casa #{Faker::Artist.name}",
    address: addresses[i],
    city: "Mexico City",
    user: user
  )
  space.save!
i += 1
end
