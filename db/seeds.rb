require "faker"

User.destroy_all
Space.destroy_all

user = User.create!(
  email: "user@user.com",
  password: 123456
)

addresses = [
  'Querétaro 99 - Condesa',
  'Colima 55 - Condesa',
  'Colima 159 - Condesa',
  'Guanajuato 118',
  'Campeche 281',
  'Bajío 231',
  'Campeche 237',
  'Alfonso Reyes 58',
  'Alfonso Reyes 216',
  'Tabasco 216',
  'Tabasco 198',
  'Fernando Montes de Oca 28',
]

12.times do |n|
  space = Space.new(
    name: "Casa #{Faker::Artist.name}",
    address: addresses[n],
    city: "Mexico City",
    content: "lorem ipsum",
    user: user,
    price_per_day: rand(100..300)
  )

  space.save!
end
