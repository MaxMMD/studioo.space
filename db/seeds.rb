require "faker"
Tag.destroy_all
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

tags = %w(painting photo sculpting filming recording woodwork ceramic).map do |name|
  Tag.create(name: name)
end

12.times do |n|
  space = Space.new(
    name: "Casa #{Faker::Artist.name}",
    address: addresses[n],
    city: "Mexico City",
    content: "lorem ipsum",
    user: user,
    price_per_day_cents: rand(1000..3000),
    tags: tags.sample(rand(1..4))
  )

  space.save!
end
