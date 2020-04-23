require "open-uri"

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
studio_photo_1 = File.open(Rails.root.join("db/fixtures/photo_1.jpg"))
studio_photo_2 = File.open(Rails.root.join("db/fixtures/photo_2.jpg"))
studio_photo_3 = File.open(Rails.root.join("db/fixtures/photo_3.jpg"))
studio_photo_4 = File.open(Rails.root.join("db/fixtures/photo_4.jpg"))
studio_photo_5 = File.open(Rails.root.join("db/fixtures/photo_5.jpg"))
studio_photo_6 = File.open(Rails.root.join("db/fixtures/photo_6.jpg"))
studio_photo_7 = File.open(Rails.root.join("db/fixtures/photo_7.jpg"))
studio_photo_8 = File.open(Rails.root.join("db/fixtures/photo_8.jpg"))
studio_photo_9 = File.open(Rails.root.join("db/fixtures/photo_9.jpg"))
studio_photo_10 = File.open(Rails.root.join("db/fixtures/photo_10.jpg"))
studio = Flat.new(
  name: "Studio avec terrasse",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  price_per_day: 30,
  address: "Abidjan",
  capacity: 2)
studio.photos.attach(io: studio_photo_1, filename: "photo_3.jpg", content_type: 'image/jpg')
studio.photos.attach(io: studio_photo_2, filename: "photo_2.jpg", content_type: 'image/jpg')
studio.photos.attach(io: studio_photo_3, filename: "photo_1.jpg", content_type: 'image/jpg')
studio.photos.attach(io: studio_photo_4, filename: "photo_4.jpg", content_type: 'image/jpg')
studio.photos.attach(io: studio_photo_5, filename: "photo_5.jpg", content_type: 'image/jpg')
studio.photos.attach(io: studio_photo_6, filename: "photo_6.jpg", content_type: 'image/jpg')
studio.photos.attach(io: studio_photo_7, filename: "photo_7.jpg", content_type: 'image/jpg')
studio.photos.attach(io: studio_photo_8, filename: "photo_8.jpg", content_type: 'image/jpg')
studio.picture.attach(io: studio_photo_9, filename: "photo_10.jpg", content_type: 'image/jpg')
studio.photos.attach(io: studio_photo_10, filename: "photo_9.jpg", content_type: 'image/jpg')
# studio.user = johanne
studio.save!

studio_terrasse_photo_1 = File.open(Rails.root.join("db/fixtures/photo_1.jpg"))
studio_terrasse_photo_2 = File.open(Rails.root.join("db/fixtures/photo_2.jpg"))
studio_terrasse_photo_3 = File.open(Rails.root.join("db/fixtures/photo_3.jpg"))
studio_terrasse_photo_4 = File.open(Rails.root.join("db/fixtures/photo_4.jpg"))
studio_terrasse_photo_5 = File.open(Rails.root.join("db/fixtures/photo_5.jpg"))
studio_terrasse_photo_6 = File.open(Rails.root.join("db/fixtures/photo_6.jpg"))
studio_terrasse_photo_7 = File.open(Rails.root.join("db/fixtures/photo_7.jpg"))
studio_terrasse_photo_8 = File.open(Rails.root.join("db/fixtures/photo_8.jpg"))
studio_terrasse_photo_9 = File.open(Rails.root.join("db/fixtures/photo_9.jpg"))
studio_terrasse_photo_10 = File.open(Rails.root.join("db/fixtures/photo_10.jpg"))
studio_terrasse = Flat.new(
  name: "Studio dernier étage",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  price_per_day: 25,
  address: "Abidjan",
  capacity: 2)
studio_terrasse.photos.attach(io: studio_terrasse_photo_1, filename: "photo_1.jpg", content_type: 'image/jpg')
studio_terrasse.photos.attach(io: studio_terrasse_photo_2, filename: "photo_2.jpg", content_type: 'image/jpg')
studio_terrasse.picture.attach(io: studio_terrasse_photo_3, filename: "photo_3.jpg", content_type: 'image/jpg')
studio_terrasse.photos.attach(io: studio_terrasse_photo_4, filename: "photo_4.jpg", content_type: 'image/jpg')
studio_terrasse.photos.attach(io: studio_terrasse_photo_5, filename: "photo_5.jpg", content_type: 'image/jpg')
studio_terrasse.photos.attach(io: studio_terrasse_photo_6, filename: "photo_6.jpg", content_type: 'image/jpg')
studio_terrasse.photos.attach(io: studio_terrasse_photo_7, filename: "photo_7.jpg", content_type: 'image/jpg')
studio_terrasse.photos.attach(io: studio_terrasse_photo_8, filename: "photo_8.jpg", content_type: 'image/jpg')
studio_terrasse.photos.attach(io: studio_terrasse_photo_9, filename: "photo_9.jpg", content_type: 'image/jpg')
studio_terrasse.photos.attach(io: studio_terrasse_photo_10, filename: "photo_10.jpg", content_type: 'image/jpg')
# studio_terrasse.user = johanne
studio_terrasse.save!

studio_balcon_photo_1 = File.open(Rails.root.join("db/fixtures/photo_1.jpg"))
studio_balcon_photo_2 = File.open(Rails.root.join("db/fixtures/photo_2.jpg"))
studio_balcon_photo_3 = File.open(Rails.root.join("db/fixtures/photo_3.jpg"))
studio_balcon_photo_4 = File.open(Rails.root.join("db/fixtures/photo_4.jpg"))
studio_balcon_photo_5 = File.open(Rails.root.join("db/fixtures/photo_5.jpg"))
studio_balcon_photo_6 = File.open(Rails.root.join("db/fixtures/photo_6.jpg"))
studio_balcon_photo_7 = File.open(Rails.root.join("db/fixtures/photo_7.jpg"))
studio_balcon_photo_8 = File.open(Rails.root.join("db/fixtures/photo_8.jpg"))
studio_balcon_photo_9 = File.open(Rails.root.join("db/fixtures/photo_9.jpg"))
studio_balcon_photo_10 = File.open(Rails.root.join("db/fixtures/photo_10.jpg"))
studio_balcon = Flat.new(
  name: "Appartement 2 chambres",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  price_per_day: 40,
  address: "Abidjan",
  capacity: 4)
studio_balcon.photos.attach(io: studio_balcon_photo_1, filename: "photo_1.jpg", content_type: 'image/jpg')
studio_balcon.photos.attach(io: studio_balcon_photo_2, filename: "photo_2.jpg", content_type: 'image/jpg')
studio_balcon.photos.attach(io: studio_balcon_photo_3, filename: "photo_3.jpg", content_type: 'image/jpg')
studio_balcon.photos.attach(io: studio_balcon_photo_4, filename: "photo_4.jpg", content_type: 'image/jpg')
studio_balcon.picture.attach(io: studio_balcon_photo_5, filename: "photo_5.jpg", content_type: 'image/jpg')
studio_balcon.photos.attach(io: studio_balcon_photo_6, filename: "photo_6.jpg", content_type: 'image/jpg')
studio_balcon.photos.attach(io: studio_balcon_photo_7, filename: "photo_7.jpg", content_type: 'image/jpg')
studio_balcon.photos.attach(io: studio_balcon_photo_8, filename: "photo_8.jpg", content_type: 'image/jpg')
studio_balcon.photos.attach(io: studio_balcon_photo_9, filename: "photo_9.jpg", content_type: 'image/jpg')
studio_balcon.photos.attach(io: studio_balcon_photo_10, filename: "photo_10.jpg", content_type: 'image/jpg')
# studio_balcon.user = johanne
studio_balcon.save!

appartement_chambre_image_1 = File.open(Rails.root.join("db/fixtures/photo_1.jpg"))
appartement_chambre_image_2 = File.open(Rails.root.join("db/fixtures/photo_2.jpg"))
appartement_chambre_image_3 = File.open(Rails.root.join("db/fixtures/photo_3.jpg"))
appartement_chambre_image_4 = File.open(Rails.root.join("db/fixtures/photo_4.jpg"))
appartement_chambre_image_5 = File.open(Rails.root.join("db/fixtures/photo_5.jpg"))
appartement_chambre_image_6 = File.open(Rails.root.join("db/fixtures/photo_6.jpg"))
appartement_chambre_image_7 = File.open(Rails.root.join("db/fixtures/photo_7.jpg"))
appartement_chambre_image_8 = File.open(Rails.root.join("db/fixtures/photo_8.jpg"))
appartement_chambre_image_9 = File.open(Rails.root.join("db/fixtures/photo_9.jpg"))
appartement_chambre_image_10 = File.open(Rails.root.join("db/fixtures/photo_10.jpg"))
appartement_chambre = Flat.new(
  name: "Appartement salon et 1 chambre",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  price_per_day: 25,
  address: "Abidjan",
  capacity: 4)
appartement_chambre.photos.attach(io: appartement_chambre_image_1, filename: "photo_1.jpg", content_type: 'image/jpg')
appartement_chambre.photos.attach(io: appartement_chambre_image_2, filename: "photo_2.jpg", content_type: 'image/jpg')
appartement_chambre.photos.attach(io: appartement_chambre_image_3, filename: "photo_3.jpg", content_type: 'image/jpg')
appartement_chambre.photos.attach(io: appartement_chambre_image_4, filename: "photo_4.jpg", content_type: 'image/jpg')
appartement_chambre.photos.attach(io: appartement_chambre_image_5, filename: "photo_5.jpg", content_type: 'image/jpg')
appartement_chambre.picture.attach(io: appartement_chambre_image_6, filename: "photo_6.jpg", content_type: 'image/jpg')
appartement_chambre.photos.attach(io: appartement_chambre_image_7, filename: "photo_7.jpg", content_type: 'image/jpg')
appartement_chambre.photos.attach(io: appartement_chambre_image_8, filename: "photo_8.jpg", content_type: 'image/jpg')
appartement_chambre.photos.attach(io: appartement_chambre_image_9, filename: "photo_9.jpg", content_type: 'image/jpg')
appartement_chambre.photos.attach(io: appartement_chambre_image_10, filename: "photo_10.jpg", content_type: 'image/jpg')
# appartement_chambre.user = johanne
appartement_chambre.save!


appartement_chambres_image_1 = File.open(Rails.root.join("db/fixtures/photo_1.jpg"))
appartement_chambres_image_2 = File.open(Rails.root.join("db/fixtures/photo_2.jpg"))
appartement_chambres_image_3 = File.open(Rails.root.join("db/fixtures/photo_3.jpg"))
appartement_chambres_image_4 = File.open(Rails.root.join("db/fixtures/photo_4.jpg"))
appartement_chambres_image_5 = File.open(Rails.root.join("db/fixtures/photo_5.jpg"))
appartement_chambres_image_6 = File.open(Rails.root.join("db/fixtures/photo_6.jpg"))
appartement_chambres_image_7 = File.open(Rails.root.join("db/fixtures/photo_7.jpg"))
appartement_chambres_image_8 = File.open(Rails.root.join("db/fixtures/photo_8.jpg"))
appartement_chambres_image_9 = File.open(Rails.root.join("db/fixtures/photo_9.jpg"))
appartement_chambres_image_10 = File.open(Rails.root.join("db/fixtures/photo_10.jpg"))
appartement_chambres = Flat.new(
  name: "Appartement salon et 1 chambre",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  price_per_day: 25,
  address: "Abidjan",
  capacity: 4)
appartement_chambres.photos.attach(io: appartement_chambres_image_1, filename: "photo_1.jpg", content_type: 'image/jpg')
appartement_chambres.photos.attach(io: appartement_chambres_image_2, filename: "photo_2.jpg", content_type: 'image/jpg')
appartement_chambres.photos.attach(io: appartement_chambres_image_3, filename: "photo_3.jpg", content_type: 'image/jpg')
appartement_chambres.photos.attach(io: appartement_chambres_image_4, filename: "photo_4.jpg", content_type: 'image/jpg')
appartement_chambres.photos.attach(io: appartement_chambres_image_5, filename: "photo_5.jpg", content_type: 'image/jpg')
appartement_chambres.photos.attach(io: appartement_chambres_image_6, filename: "photo_6.jpg", content_type: 'image/jpg')
appartement_chambres.picture.attach(io: appartement_chambres_image_7, filename: "photo_7.jpg", content_type: 'image/jpg')
appartement_chambres.photos.attach(io: appartement_chambres_image_8, filename: "photo_8.jpg", content_type: 'image/jpg')
appartement_chambres.photos.attach(io: appartement_chambres_image_9, filename: "photo_9.jpg", content_type: 'image/jpg')
appartement_chambres.photos.attach(io: appartement_chambres_image_10, filename: "photo_10.jpg", content_type: 'image/jpg')
 #appartement_chambres.user = johanne
appartement_chambres.save!

appart_chambres_image_1 = File.open(Rails.root.join("db/fixtures/photo_1.jpg"))
appart_chambres_image_2 = File.open(Rails.root.join("db/fixtures/photo_2.jpg"))
appart_chambres_image_3 = File.open(Rails.root.join("db/fixtures/photo_3.jpg"))
appart_chambres_image_4 = File.open(Rails.root.join("db/fixtures/photo_4.jpg"))
appart_chambres_image_5 = File.open(Rails.root.join("db/fixtures/photo_5.jpg"))
appart_chambres_image_6 = File.open(Rails.root.join("db/fixtures/photo_6.jpg"))
appart_chambres_image_7 = File.open(Rails.root.join("db/fixtures/photo_7.jpg"))
appart_chambres_image_8 = File.open(Rails.root.join("db/fixtures/photo_8.jpg"))
appart_chambres_image_9 = File.open(Rails.root.join("db/fixtures/photo_9.jpg"))
appart_chambres_image_10 = File.open(Rails.root.join("db/fixtures/photo_10.jpg"))
appart_chambres = Flat.new(
  name: "Appartement salon et 1 chambre",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  price_per_day: 25,
  address: "Abidjan",
  capacity: 2)
appart_chambres.photos.attach(io: appart_chambres_image_1, filename: "photo_1.jpg", content_type: 'image/jpg')
appart_chambres.photos.attach(io: appart_chambres_image_2, filename: "photo_2.jpg", content_type: 'image/jpg')
appart_chambres.photos.attach(io: appart_chambres_image_3, filename: "photo_3.jpg", content_type: 'image/jpg')
appart_chambres.photos.attach(io: appart_chambres_image_4, filename: "photo_4.jpg", content_type: 'image/jpg')
appart_chambres.photos.attach(io: appart_chambres_image_5, filename: "photo_5.jpg", content_type: 'image/jpg')
appart_chambres.photos.attach(io: appart_chambres_image_6, filename: "photo_6.jpg", content_type: 'image/jpg')
appart_chambres.photos.attach(io: appart_chambres_image_7, filename: "photo_7.jpg", content_type: 'image/jpg')
appart_chambres.picture.attach(io: appart_chambres_image_8, filename: "photo_8.jpg", content_type: 'image/jpg')
appart_chambres.photos.attach(io: appart_chambres_image_9, filename: "photo_9.jpg", content_type: 'image/jpg')
appart_chambres.photos.attach(io: appart_chambres_image_10, filename: "photo_10.jpg", content_type: 'image/jpg')
# appart_chambres.user = johanne
appart_chambres.save!

puts "Done seeding flats"
puts "seeding clients"
# clients

cedric = Client.new(first_name: "Cédric", last_name: "Morvan", email: "morvancedric29@gmail.com", phone_number: 0657463356, address: "44 rue Marcel Sembat, Brest", civility: "M.")
puts "Done seeding clients"

# bookings
puts "Seeding bookings"
booking_1 = Booking.new(total_price: 130, start_date: '30-06-2020', end_date: '05-07-2020')
booking_1.flat = studio
booking_1.client = cedric
booking_1.save! #2

booking_2 = Booking.new(total_price: 130, start_date: '10-06-2020', end_date: '15-06-2020')
booking_2.flat = studio_terrasse
booking_2.client = cedric
booking_2.save! #2

booking_3 = Booking.new(total_price: 130, start_date: '10-06-2020', end_date: '18-06-2020')
booking_3.flat = appartement_chambre
booking_3.client = cedric
booking_3.save! # 4

booking_4 = Booking.new(total_price: 130, start_date: '30-06-2020', end_date: '05-07-2020')
booking_4.flat = appartement_chambres
booking_4.client = cedric
booking_4.save! # 4

booking_5 = Booking.new(total_price: 130, start_date: '10-07-2020', end_date: '17-07-2020')
booking_5.flat = appart_chambres
booking_5.client = cedric
booking_5.save! # 2

booking_6 = Booking.new(total_price: 130, start_date: '30-06-2020', end_date: '05-07-2020')
booking_6.flat = studio_balcon
booking_6.client = cedric
booking_6.save! # 4

puts puts "Done seeding bookings"
puts "__________________________________________________________"
puts "Finished Seeding!"
