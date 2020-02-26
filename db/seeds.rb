# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

user = User.create

test = {
    name: 'Picasso',
    address: 'Mexico city',
    user: users
  }

# 20.times do
#   space = Space.create!(
#     name: Faker::Company.name,
#     address: Faker::Address.street_address,
#     city: Faker::Address.city,
#     user: user
#   )
#   space.save!
# end

Space.create!(test)
