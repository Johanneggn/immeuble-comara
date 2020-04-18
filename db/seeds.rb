# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Deleting all flats..."
Flat.destroy_all
puts "Done deleting all flats"
puts "Deleting user"
User.destroy_all
puts "Done deleting user"

puts "Implementing the Seeds..."

puts "Seeding User"

#owner

johanne = User.new(email: "johanne.gueguen@gmail.com", password: "secret")
johanne.save!

puts "Done seeding user"

#flats
flat_1 = Flat.new(name: "Studio avec terrasse", description: "blablabla", price_per_day: 30, address: "Abidjan", capacity: 2)
flat_1.save!
flat_2 = Flat.new(name: "Studio dernier étage", description: "blablabla", price_per_day: 25, address: "Abidjan", capacity: 2)
flat_2.save!
flat_3 = Flat.new(name: "Appartement 2 chambres", description: "blablabla", price_per_day: 40, address: "Abidjan", capacity: 4)
flat_3.save!
flat_4 = Flat.new(name: "Appartement salon et 1 chambre", description: "blablabla", price_per_day: 25, address: "Abidjan", capacity: 4)
flat_4.save!
flat_5 = Flat.new(name: "Appartement salon et 1 chambre", description: "blablabla", price_per_day: 25, address: "Abidjan", capacity: 4)
flat_5.save!
flat_6 = Flat.new(name: "Appartement salon et 1 chambre", description: "blablabla", price_per_day: 25, address: "Abidjan", capacity: 4)
flat_6.save!

puts "__________________________________________________________"
puts "Finished Seeding!"
