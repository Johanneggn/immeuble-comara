puts "Deleting all bookings..."
Booking.destroy_all
puts "Deleting all clients..."
Client.destroy_all
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
puts "Seeding flats"

#flats
studio = Flat.new(name: "Studio avec terrasse", description: "blablabla", price_per_day: 30, address: "Abidjan", capacity: 2)
studio.save!
studio_terrasse = Flat.new(name: "Studio dernier étage", description: "blablabla", price_per_day: 25, address: "Abidjan", capacity: 2)
studio_terrasse.save!
studio_balcon = Flat.new(name: "Appartement 2 chambres", description: "blablabla", price_per_day: 40, address: "Abidjan", capacity: 4)
studio_balcon.save!
appartement_chambre = Flat.new(name: "Appartement salon et 1 chambre", description: "blablabla", price_per_day: 25, address: "Abidjan", capacity: 4)
appartement_chambre.save!
appartement_chambres = Flat.new(name: "Appartement salon et 1 chambre", description: "blablabla", price_per_day: 25, address: "Abidjan", capacity: 4)
appartement_chambres.save!
appart_chambres = Flat.new(name: "Appartement salon et 1 chambre", description: "blablabla", price_per_day: 25, address: "Abidjan", capacity: 4)
appart_chambres.save!

puts "Done seeding flats"
puts "seeding clients"
# clients

cedric = Client.new(first_name: "Cédric", last_name: "Morvan", email: "morvancedric29@gmail.com", phone_number: 0657463356, address: "44 rue Marcel Sembat, Brest", civility: "M.")
puts "Done seeding clients"

# bookings
puts "Seeding bookings"
booking_1 = Booking.new(total_price: 130, start_date: '30-06-2020', end_date: '05-07-2020')
# booking_1.flat = studio
# booking_1.client = cedric
booking_1.save!

puts puts "Done seeding bookings"
puts "__________________________________________________________"
puts "Finished Seeding!"
