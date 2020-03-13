require "faker"
require "open-uri"

Tag.destroy_all
User.destroy_all
Space.destroy_all

user = User.create!(
  email: "user@user.com",
  password: 123456
)

addresses = [
  'Querétaro 99, Condesa',
  'Colima 55, Condesa',
  'Colima 159, Condesa',
  'Guanajuato 118, Roma',
  'Campeche 281, Roma',
  'Bajío 231, Roma',
  'Campeche 237, Roma',
  'Alfonso Reyes 58, Condesa',
  'Tabasco 216, Roma',
  'Tabasco 198, Roma',
  'Fernando Montes de Oca 28, Condesa',
]

tags = %w(painting photo sculpting filming recording woodwork ceramic).map do |name|
  Tag.create(name: name)
end

space = Space.new(
  name: "#{Faker::Artist.name} studio",
  address: 'Querétaro 99, Condesa',
  city: "Mexico City",
  content: "I am renting out my photo studio in Mexico city from January until the end of March 2020. The venue has windows to the west, and gets flooded with bright daylight, especially in the afternoon, so it is totally suitable for photoshoot, videos and film production, casting, etc. The studio also has 3 layers of curtains which can block the sunlight.",
  user: user,
  price_per_day_cents: rand(1000..3000),
  tags: tags.sample(rand(1..4))
)

foto1 = URI.open('https://res.cloudinary.com/dvlgiurta/image/upload/v1584139079/studioo/foto1.jpg')
space.save!
space.photo.attach(io: foto1, filename: 'foto1.jpg', content_type: 'image/jpg')

space = Space.new(
  name: "#{Faker::Artist.name} studio",
  address: 'Colima 55, Condesa',
  city: "Mexico City",
  content: "I am renting out my photo studio in Mexico city from January until the end of March 2020. The venue has windows to the west, and gets flooded with bright daylight, especially in the afternoon, so it is totally suitable for photoshoot, videos and film production, casting, etc. The studio also has 3 layers of curtains which can block the sunlight.",
  user: user,
  price_per_day_cents: rand(1000..3000),
  tags: tags.sample(rand(1..4))
)

foto2 = URI.open('https://res.cloudinary.com/dvlgiurta/image/upload/v1584139078/studioo/foto2.jpg')
space.save!
space.photo.attach(io: foto2, filename: 'foto2.jpg', content_type: 'image/jpg')

space = Space.new(
  name: "#{Faker::Artist.name} studio",
  address: 'Colima 159, Condesa',
  city: "Mexico City",
  content: "I am renting out my photo studio in Mexico city from January until the end of March 2020. The venue has windows to the west, and gets flooded with bright daylight, especially in the afternoon, so it is totally suitable for photoshoot, videos and film production, casting, etc. The studio also has 3 layers of curtains which can block the sunlight.",
  user: user,
  price_per_day_cents: rand(1000..3000),
  tags: tags.sample(rand(1..4))
)

foto3 = URI.open('https://res.cloudinary.com/dvlgiurta/image/upload/v1584139078/studioo/foto3.jpg')
space.save!
space.photo.attach(io: foto3, filename: 'foto3.jpg', content_type: 'image/jpg')

space = Space.new(
  name: "#{Faker::Artist.name} studio",
  address:  'Guanajuato 118, Roma',
  city: "Mexico City",
  content: "I am renting out my photo studio in Mexico city from January until the end of March 2020. The venue has windows to the west, and gets flooded with bright daylight, especially in the afternoon, so it is totally suitable for photoshoot, videos and film production, casting, etc. The studio also has 3 layers of curtains which can block the sunlight.",
  user: user,
  price_per_day_cents: rand(1000..3000),
  tags: tags.sample(rand(1..4))
)

foto4 = URI.open('https://res.cloudinary.com/dvlgiurta/image/upload/v1584139074/studioo/foto4.jpg')
space.save!
space.photo.attach(io: foto4, filename: 'foto4.jpg', content_type: 'image/jpg')

space = Space.new(
  name: "#{Faker::Artist.name} studio",
  address: 'Bajío 231, Roma',
  city: "Mexico City",
  content: "I am renting out my photo studio in Mexico city from January until the end of March 2020. The venue has windows to the west, and gets flooded with bright daylight, especially in the afternoon, so it is totally suitable for photoshoot, videos and film production, casting, etc. The studio also has 3 layers of curtains which can block the sunlight.",
  user: user,
  price_per_day_cents: rand(1000..3000),
  tags: tags.sample(rand(1..4))
)

foto5 = URI.open('https://res.cloudinary.com/dvlgiurta/image/upload/v1584139077/studioo/foto5.jpg')
space.save!
space.photo.attach(io: foto5, filename: 'foto5.jpg', content_type: 'image/jpg')

space = Space.new(
  name: "#{Faker::Artist.name} studio",
  address: 'Campeche 237, Roma',
  city: "Mexico City",
  content: "I am renting out my photo studio in Mexico city from January until the end of March 2020. The venue has windows to the west, and gets flooded with bright daylight, especially in the afternoon, so it is totally suitable for photoshoot, videos and film production, casting, etc. The studio also has 3 layers of curtains which can block the sunlight.",
  user: user,
  price_per_day_cents: rand(1000..3000),
  tags: tags.sample(rand(1..4))
)

foto6 = URI.open('https://res.cloudinary.com/dvlgiurta/image/upload/v1584139073/studioo/foto6.jpg')
space.save!
space.photo.attach(io: foto6, filename: 'foto6.jpg', content_type: 'image/jpg')

space = Space.new(
  name: "#{Faker::Artist.name} studio",
  address: 'Tabasco 216, Roma',
  city: "Mexico City",
  content: "I am renting out my photo studio in Mexico city from January until the end of March 2020. The venue has windows to the west, and gets flooded with bright daylight, especially in the afternoon, so it is totally suitable for photoshoot, videos and film production, casting, etc. The studio also has 3 layers of curtains which can block the sunlight.",
  user: user,
  price_per_day_cents: rand(1000..3000),
  tags: tags.sample(rand(1..4))
)

foto7 = URI.open('https://res.cloudinary.com/dvlgiurta/image/upload/v1584139073/studioo/foto7.jpg')
space.save!
space.photo.attach(io: foto7, filename: 'foto7.jpg', content_type: 'image/jpg')

space = Space.new(
  name: "#{Faker::Artist.name} studio",
  address: 'Fernando Montes de Oca 28, Condesa',
  city: "Mexico City",
  content: "I am renting out my photo studio in Mexico city from January until the end of March 2020. The venue has windows to the west, and gets flooded with bright daylight, especially in the afternoon, so it is totally suitable for photoshoot, videos and film production, casting, etc. The studio also has 3 layers of curtains which can block the sunlight.",
  user: user,
  price_per_day_cents: rand(1000..3000),
  tags: tags.sample(rand(1..4))
)

foto8 = URI.open('https://res.cloudinary.com/dvlgiurta/image/upload/v1584139072/studioo/foto9.jpg')
space.save!
space.photo.attach(io: foto8, filename: 'foto8.jpg', content_type: 'image/jpg')
