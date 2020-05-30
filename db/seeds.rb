# require "open-uri"

# puts "Deleting all bookings..."
# Booking.destroy_all
# puts "Deleting all clients..."
# Client.destroy_all
# puts "Deleting all equipments"
# Equipment.destroy_all
# puts "Deleting all flats..."
# Flat.destroy_all
# puts "Done deleting all flats"
# puts "Deleting user"
# User.destroy_all
# puts "Done deleting user"

# puts "Implementing the Seeds..."

# puts "Seeding User"

# #owner

# johanne = User.new(email: "johanne.gueguen@gmail.com", password: "secret")
# johanne.save!

# puts "Done seeding user"
# puts "Seeding flats"


# #flats
# studio_photo_1 = File.open(Rails.root.join("db/fixtures/photo_1.jpg"))
# studio_photo_2 = File.open(Rails.root.join("db/fixtures/photo_2.jpg"))
# studio_photo_3 = File.open(Rails.root.join("db/fixtures/photo_3.jpg"))
# studio_photo_4 = File.open(Rails.root.join("db/fixtures/photo_4.jpg"))
# studio_photo_5 = File.open(Rails.root.join("db/fixtures/photo_5.jpg"))
# studio_photo_6 = File.open(Rails.root.join("db/fixtures/photo_6.jpg"))
# studio_photo_7 = File.open(Rails.root.join("db/fixtures/photo_7.jpg"))
# studio_photo_8 = File.open(Rails.root.join("db/fixtures/photo_8.jpg"))
# studio_photo_9 = File.open(Rails.root.join("db/fixtures/photo_9.jpg"))
# studio_photo_10 = File.open(Rails.root.join("db/fixtures/photo_10.jpg"))
# studio = Flat.new(
#   name: "Studio avec terrasse",
#   description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
#   price_per_day: 30,
#   price_xof: 10000,
#   belonging: true,
#   address: "Abidjan",
#   min_capacity: 1,
#   max_capacity: 2)
# studio.photos.attach(io: studio_photo_1, filename: "photo_3.jpg", content_type: 'image/jpg')
# studio.photos.attach(io: studio_photo_2, filename: "photo_2.jpg", content_type: 'image/jpg')
# studio.photos.attach(io: studio_photo_3, filename: "photo_1.jpg", content_type: 'image/jpg')
# studio.photos.attach(io: studio_photo_4, filename: "photo_4.jpg", content_type: 'image/jpg')
# studio.photos.attach(io: studio_photo_5, filename: "photo_5.jpg", content_type: 'image/jpg')
# studio.photos.attach(io: studio_photo_6, filename: "photo_6.jpg", content_type: 'image/jpg')
# studio.photos.attach(io: studio_photo_7, filename: "photo_7.jpg", content_type: 'image/jpg')
# studio.photos.attach(io: studio_photo_8, filename: "photo_8.jpg", content_type: 'image/jpg')
# studio.picture.attach(io: studio_photo_9, filename: "photo_10.jpg", content_type: 'image/jpg')
# studio.photos.attach(io: studio_photo_10, filename: "photo_9.jpg", content_type: 'image/jpg')
# studio.save!

# studio_terrasse_photo_1 = File.open(Rails.root.join("db/fixtures/photo_1.jpg"))
# studio_terrasse_photo_2 = File.open(Rails.root.join("db/fixtures/photo_2.jpg"))
# studio_terrasse_photo_3 = File.open(Rails.root.join("db/fixtures/photo_3.jpg"))
# studio_terrasse_photo_4 = File.open(Rails.root.join("db/fixtures/photo_4.jpg"))
# studio_terrasse_photo_5 = File.open(Rails.root.join("db/fixtures/photo_5.jpg"))
# studio_terrasse_photo_6 = File.open(Rails.root.join("db/fixtures/photo_6.jpg"))
# studio_terrasse_photo_7 = File.open(Rails.root.join("db/fixtures/photo_7.jpg"))
# studio_terrasse_photo_8 = File.open(Rails.root.join("db/fixtures/photo_8.jpg"))
# studio_terrasse_photo_9 = File.open(Rails.root.join("db/fixtures/photo_9.jpg"))
# studio_terrasse_photo_10 = File.open(Rails.root.join("db/fixtures/photo_10.jpg"))
# studio_terrasse = Flat.new(
#   name: "Studio dernier étage",
#   description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
#   price_per_day: 25,
#   price_xof: 10000,
#   belonging: true,
#   address: "Abidjan",
#   min_capacity: 1,
#   max_capacity: 2)
# studio_terrasse.photos.attach(io: studio_terrasse_photo_1, filename: "photo_1.jpg", content_type: 'image/jpg')
# studio_terrasse.photos.attach(io: studio_terrasse_photo_2, filename: "photo_2.jpg", content_type: 'image/jpg')
# studio_terrasse.picture.attach(io: studio_terrasse_photo_3, filename: "photo_3.jpg", content_type: 'image/jpg')
# studio_terrasse.photos.attach(io: studio_terrasse_photo_4, filename: "photo_4.jpg", content_type: 'image/jpg')
# studio_terrasse.photos.attach(io: studio_terrasse_photo_5, filename: "photo_5.jpg", content_type: 'image/jpg')
# studio_terrasse.photos.attach(io: studio_terrasse_photo_6, filename: "photo_6.jpg", content_type: 'image/jpg')
# studio_terrasse.photos.attach(io: studio_terrasse_photo_7, filename: "photo_7.jpg", content_type: 'image/jpg')
# studio_terrasse.photos.attach(io: studio_terrasse_photo_8, filename: "photo_8.jpg", content_type: 'image/jpg')
# studio_terrasse.photos.attach(io: studio_terrasse_photo_9, filename: "photo_9.jpg", content_type: 'image/jpg')
# studio_terrasse.photos.attach(io: studio_terrasse_photo_10, filename: "photo_10.jpg", content_type: 'image/jpg')
# studio_terrasse.save!

# studio_balcon_photo_1 = File.open(Rails.root.join("db/fixtures/photo_1.jpg"))
# studio_balcon_photo_2 = File.open(Rails.root.join("db/fixtures/photo_2.jpg"))
# studio_balcon_photo_3 = File.open(Rails.root.join("db/fixtures/photo_3.jpg"))
# studio_balcon_photo_4 = File.open(Rails.root.join("db/fixtures/photo_4.jpg"))
# studio_balcon_photo_5 = File.open(Rails.root.join("db/fixtures/photo_5.jpg"))
# studio_balcon_photo_6 = File.open(Rails.root.join("db/fixtures/photo_6.jpg"))
# studio_balcon_photo_7 = File.open(Rails.root.join("db/fixtures/photo_7.jpg"))
# studio_balcon_photo_8 = File.open(Rails.root.join("db/fixtures/photo_8.jpg"))
# studio_balcon_photo_9 = File.open(Rails.root.join("db/fixtures/photo_9.jpg"))
# studio_balcon_photo_10 = File.open(Rails.root.join("db/fixtures/photo_10.jpg"))
# studio_balcon = Flat.new(
#   name: "Appartement 2 chambres",
#   description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
#   price_per_day: 40,
#   price_xof: 10000,
#   belonging: true,
#   address: "Abidjan",
#   min_capacity: 3,
#   max_capacity: 4)
# studio_balcon.photos.attach(io: studio_balcon_photo_1, filename: "photo_1.jpg", content_type: 'image/jpg')
# studio_balcon.photos.attach(io: studio_balcon_photo_2, filename: "photo_2.jpg", content_type: 'image/jpg')
# studio_balcon.photos.attach(io: studio_balcon_photo_3, filename: "photo_3.jpg", content_type: 'image/jpg')
# studio_balcon.photos.attach(io: studio_balcon_photo_4, filename: "photo_4.jpg", content_type: 'image/jpg')
# studio_balcon.picture.attach(io: studio_balcon_photo_5, filename: "photo_5.jpg", content_type: 'image/jpg')
# studio_balcon.photos.attach(io: studio_balcon_photo_6, filename: "photo_6.jpg", content_type: 'image/jpg')
# studio_balcon.photos.attach(io: studio_balcon_photo_7, filename: "photo_7.jpg", content_type: 'image/jpg')
# studio_balcon.photos.attach(io: studio_balcon_photo_8, filename: "photo_8.jpg", content_type: 'image/jpg')
# studio_balcon.photos.attach(io: studio_balcon_photo_9, filename: "photo_9.jpg", content_type: 'image/jpg')
# studio_balcon.photos.attach(io: studio_balcon_photo_10, filename: "photo_10.jpg", content_type: 'image/jpg')
# studio_balcon.save!

# appartement_chambre_image_1 = File.open(Rails.root.join("db/fixtures/photo_1.jpg"))
# appartement_chambre_image_2 = File.open(Rails.root.join("db/fixtures/photo_2.jpg"))
# appartement_chambre_image_3 = File.open(Rails.root.join("db/fixtures/photo_3.jpg"))
# appartement_chambre_image_4 = File.open(Rails.root.join("db/fixtures/photo_4.jpg"))
# appartement_chambre_image_5 = File.open(Rails.root.join("db/fixtures/photo_5.jpg"))
# appartement_chambre_image_6 = File.open(Rails.root.join("db/fixtures/photo_6.jpg"))
# appartement_chambre_image_7 = File.open(Rails.root.join("db/fixtures/photo_7.jpg"))
# appartement_chambre_image_8 = File.open(Rails.root.join("db/fixtures/photo_8.jpg"))
# appartement_chambre_image_9 = File.open(Rails.root.join("db/fixtures/photo_9.jpg"))
# appartement_chambre_image_10 = File.open(Rails.root.join("db/fixtures/photo_10.jpg"))
# appartement_chambre = Flat.new(
#   name: "Appartement salon et 1 chambre",
#   description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
#   price_per_day: 25,
#   price_xof: 10000,
#   address: "Abidjan",
#   belonging: true,
#   min_capacity: 3,
#   max_capacity: 4)
# appartement_chambre.photos.attach(io: appartement_chambre_image_1, filename: "photo_1.jpg", content_type: 'image/jpg')
# appartement_chambre.photos.attach(io: appartement_chambre_image_2, filename: "photo_2.jpg", content_type: 'image/jpg')
# appartement_chambre.photos.attach(io: appartement_chambre_image_3, filename: "photo_3.jpg", content_type: 'image/jpg')
# appartement_chambre.photos.attach(io: appartement_chambre_image_4, filename: "photo_4.jpg", content_type: 'image/jpg')
# appartement_chambre.photos.attach(io: appartement_chambre_image_5, filename: "photo_5.jpg", content_type: 'image/jpg')
# appartement_chambre.picture.attach(io: appartement_chambre_image_6, filename: "photo_6.jpg", content_type: 'image/jpg')
# appartement_chambre.photos.attach(io: appartement_chambre_image_7, filename: "photo_7.jpg", content_type: 'image/jpg')
# appartement_chambre.photos.attach(io: appartement_chambre_image_8, filename: "photo_8.jpg", content_type: 'image/jpg')
# appartement_chambre.photos.attach(io: appartement_chambre_image_9, filename: "photo_9.jpg", content_type: 'image/jpg')
# appartement_chambre.photos.attach(io: appartement_chambre_image_10, filename: "photo_10.jpg", content_type: 'image/jpg')
# appartement_chambre.save!


# appartement_chambres_image_1 = File.open(Rails.root.join("db/fixtures/photo_1.jpg"))
# appartement_chambres_image_2 = File.open(Rails.root.join("db/fixtures/photo_2.jpg"))
# appartement_chambres_image_3 = File.open(Rails.root.join("db/fixtures/photo_3.jpg"))
# appartement_chambres_image_4 = File.open(Rails.root.join("db/fixtures/photo_4.jpg"))
# appartement_chambres_image_5 = File.open(Rails.root.join("db/fixtures/photo_5.jpg"))
# appartement_chambres_image_6 = File.open(Rails.root.join("db/fixtures/photo_6.jpg"))
# appartement_chambres_image_7 = File.open(Rails.root.join("db/fixtures/photo_7.jpg"))
# appartement_chambres_image_8 = File.open(Rails.root.join("db/fixtures/photo_8.jpg"))
# appartement_chambres_image_9 = File.open(Rails.root.join("db/fixtures/photo_9.jpg"))
# appartement_chambres_image_10 = File.open(Rails.root.join("db/fixtures/photo_10.jpg"))
# appartement_chambres = Flat.new(
#   name: "Appartement salon et 1 chambre",
#   description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
#   price_per_day: 25,
#   price_xof: 10000,
#   address: "Abidjan",
#   belonging: false,
#   min_capacity: 3,
#   max_capacity: 4)
# appartement_chambres.photos.attach(io: appartement_chambres_image_1, filename: "photo_1.jpg", content_type: 'image/jpg')
# appartement_chambres.photos.attach(io: appartement_chambres_image_2, filename: "photo_2.jpg", content_type: 'image/jpg')
# appartement_chambres.photos.attach(io: appartement_chambres_image_3, filename: "photo_3.jpg", content_type: 'image/jpg')
# appartement_chambres.photos.attach(io: appartement_chambres_image_4, filename: "photo_4.jpg", content_type: 'image/jpg')
# appartement_chambres.photos.attach(io: appartement_chambres_image_5, filename: "photo_5.jpg", content_type: 'image/jpg')
# appartement_chambres.photos.attach(io: appartement_chambres_image_6, filename: "photo_6.jpg", content_type: 'image/jpg')
# appartement_chambres.picture.attach(io: appartement_chambres_image_7, filename: "photo_7.jpg", content_type: 'image/jpg')
# appartement_chambres.photos.attach(io: appartement_chambres_image_8, filename: "photo_8.jpg", content_type: 'image/jpg')
# appartement_chambres.photos.attach(io: appartement_chambres_image_9, filename: "photo_9.jpg", content_type: 'image/jpg')
# appartement_chambres.photos.attach(io: appartement_chambres_image_10, filename: "photo_10.jpg", content_type: 'image/jpg')
# appartement_chambres.save!

# appart_chambres_image_1 = File.open(Rails.root.join("db/fixtures/photo_1.jpg"))
# appart_chambres_image_2 = File.open(Rails.root.join("db/fixtures/photo_2.jpg"))
# appart_chambres_image_3 = File.open(Rails.root.join("db/fixtures/photo_3.jpg"))
# appart_chambres_image_4 = File.open(Rails.root.join("db/fixtures/photo_4.jpg"))
# appart_chambres_image_5 = File.open(Rails.root.join("db/fixtures/photo_5.jpg"))
# appart_chambres_image_6 = File.open(Rails.root.join("db/fixtures/photo_6.jpg"))
# appart_chambres_image_7 = File.open(Rails.root.join("db/fixtures/photo_7.jpg"))
# appart_chambres_image_8 = File.open(Rails.root.join("db/fixtures/photo_8.jpg"))
# appart_chambres_image_9 = File.open(Rails.root.join("db/fixtures/photo_9.jpg"))
# appart_chambres_image_10 = File.open(Rails.root.join("db/fixtures/photo_10.jpg"))
# appart_chambres = Flat.new(
#   name: "Appartement salon et 1 chambre",
#   description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
#   price_per_day: 25,
#   price_xof: 10000,
#   address: "Abidjan",
#   belonging: false,
#   min_capacity: 1,
#   max_capacity: 2)
# appart_chambres.photos.attach(io: appart_chambres_image_1, filename: "photo_1.jpg", content_type: 'image/jpg')
# appart_chambres.photos.attach(io: appart_chambres_image_2, filename: "photo_2.jpg", content_type: 'image/jpg')
# appart_chambres.photos.attach(io: appart_chambres_image_3, filename: "photo_3.jpg", content_type: 'image/jpg')
# appart_chambres.photos.attach(io: appart_chambres_image_4, filename: "photo_4.jpg", content_type: 'image/jpg')
# appart_chambres.photos.attach(io: appart_chambres_image_5, filename: "photo_5.jpg", content_type: 'image/jpg')
# appart_chambres.photos.attach(io: appart_chambres_image_6, filename: "photo_6.jpg", content_type: 'image/jpg')
# appart_chambres.photos.attach(io: appart_chambres_image_7, filename: "photo_7.jpg", content_type: 'image/jpg')
# appart_chambres.picture.attach(io: appart_chambres_image_8, filename: "photo_8.jpg", content_type: 'image/jpg')
# appart_chambres.photos.attach(io: appart_chambres_image_9, filename: "photo_9.jpg", content_type: 'image/jpg')
# appart_chambres.photos.attach(io: appart_chambres_image_10, filename: "photo_10.jpg", content_type: 'image/jpg')
# appart_chambres.save!

# puts "Done seeding flats"

# puts "Seeding equipments"

#   equipement_1 = Equipment.new(name: 'kitchen', icon: 'fal fa-hat-chef')
#   equipement_1.flat = appartement_chambres
#   equipement_1.save!
#   equipement_2 = Equipment.new(name: 'air conditioner', icon: 'fal fa-air-conditioner')
#   equipement_2.flat = appartement_chambres
#   equipement_2.save!
#   equipement_3 = Equipment.new(name: 'hangers', icon: 'fal fa-tshirt')
#   equipement_3.flat = appartement_chambres
#   equipement_3.save!
#   equipement_4 = Equipment.new(name: 'washing machine', icon: 'fal fa-washer')
#   equipement_4.flat = appartement_chambres
#   equipement_4.save!
#   equipement_5 = Equipment.new(name: 'television', icon: 'fal fa-tv')
#   equipement_5.flat = appartement_chambres
#   equipement_5.save!
#   equipement_6 = Equipment.new(name: 'private entrance', icon: 'fal fa-key')
#   equipement_6.flat = appartement_chambres
#   equipement_6.save!
#   equipement_7 = Equipment.new(name: 'sheets', icon: 'fal fa-blanket')
#   equipement_7.flat = appartement_chambres
#   equipement_7.save!
#   equipement_8 = Equipment.new(name: 'work space', icon: 'fal fa-laptop-code')
#   equipement_8.flat = appartement_chambres
#   equipement_8.save!
#   equipement_9 = Equipment.new(name: 'fridge', icon: 'fal fa-refrigerator')
#   equipement_9.flat = appartement_chambres
#   equipement_9.save!
#   equipement_10 = Equipment.new(name: 'dishes', icon: 'fal fa-glass')
#   equipement_10.flat = appartement_chambres
#   equipement_10.save!
#   equipement_11 = Equipment.new(name: 'utensil', icon: 'fal fa-utensils')
#   equipement_11.flat = appartement_chambres
#   equipement_11.save!
#   equipement_12 = Equipment.new(name: 'cooker', icon: 'fal fa-oven')
#   equipement_12.flat = appartement_chambres
#   equipement_12.save!
#   equipement_13 = Equipment.new(name: 'balcony', icon: 'fal fa-sun')
#   equipement_13.flat = appartement_chambres
#   equipement_13.save!
#   equipement_14 = Equipment.new(name: 'backyard', icon: 'fal fa-sun')
#   equipement_14.flat = appartement_chambres
#   equipement_14.save!
#   equipement_15 = Equipment.new(name: 'carbon monoxide detector', icon: 'fal fa-sensor')
#   equipement_15.flat = appartement_chambres
#   equipement_15.save!
#   equipement_16 = Equipment.new(name: 'hot water', icon: 'fal fa-hand-holding-water')
#   equipement_16.flat = appartement_chambres
#   equipement_16.save!
#   equipement_17 = Equipment.new(name: 'parking', icon: 'fal fa-car')
#   equipement_17.flat = appartement_chambres
#   equipement_17.save!
#   equipement_18 = Equipment.new(name: 'long stay', icon: 'fal fa-calendar-plus')
#   equipement_18.flat = appartement_chambres
#   equipement_18.save!
#   equipement_19 = Equipment.new(name: 'tumble dryer', icon: 'fal fa-dryer-alt')
#   equipement_19.flat = appartement_chambres
#   equipement_19.save!
#   equipement_20 = Equipment.new(name: 'wifi', icon: 'fal fa-wifi')
#   equipement_20.flat = appartement_chambres
#   equipement_20.save!
#   equipement_21 = Equipment.new(name: 'store', icon: 'fal fa-booth-curtain')
#   equipement_21.flat = appartement_chambres
#   equipement_21.save!
#   equipement_22 = Equipment.new(name: 'luggage', icon: 'fal fa-suitcase')
#   equipement_22.flat = appartement_chambres
#   equipement_22.save!

# puts "Done Seeding equipments"

# puts "seeding clients"
# # clients

# cedric = Client.new(first_name: "Cédric", last_name: "Morvan", email: "morvancedric29@gmail.com", phone_number: 0657463356, address: "44 rue Marcel Sembat, Brest", civility: "M.")
# carolyne = Client.new(first_name: "Carolyne", last_name: "Morvan", email: "morvancedric29@gmail.com", phone_number: 0657463356, address: "44 rue Marcel Sembat, Brest", civility: "Mme")

# puts "Done seeding clients"

# # bookings
# puts "Seeding bookings"
# booking_1 = Booking.new(total_price: 130, start_date: '30-06-2020', end_date: '05-07-2020', status: "pending")
# booking_1.flat = studio
# booking_1.client = carolyne
# booking_1.save! #2

# booking_2 = Booking.new(total_price: 130, start_date: '10-06-2020', end_date: '15-06-2020', status: "confirmed")
# booking_2.flat = studio_terrasse
# booking_2.client = cedric
# booking_2.save! #2

# booking_3 = Booking.new(total_price: 130, start_date: '10-06-2020', end_date: '18-06-2020', status: "denied")
# booking_3.flat = appartement_chambre
# booking_3.client = cedric
# booking_3.save! # 4

# booking_4 = Booking.new(total_price: 130, start_date: '30-06-2020', end_date: '05-07-2020', status: "pending")
# booking_4.flat = appartement_chambres
# booking_4.client = cedric
# booking_4.save! # 4

# booking_5 = Booking.new(total_price: 130, start_date: '10-07-2020', end_date: '17-07-2020', status: "pending")
# booking_5.flat = appart_chambres
# booking_5.client = cedric
# booking_5.save! # 2

# booking_6 = Booking.new(total_price: 130, start_date: '30-06-2020', end_date: '05-07-2020', status: "confirmed")
# booking_6.flat = studio_balcon
# booking_6.client = cedric
# booking_6.save! # 4

# puts puts "Done seeding bookings"
# puts "__________________________________________________________"
# puts "Finished Seeding!"
