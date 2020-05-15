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
#   address: "Abidjan",
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
#   address: "Abidjan",
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
#   address: "Abidjan",
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

# cuisine = Equipment.new(name: 'kitchen', available: true, pricing: false )
# cuisine.flat = studio
# # cuisine.flat = studio_terrasse
# # cuisine.flat = studio_balcon
# # cuisine.flat = appartement_chambre
# # cuisine.flat = appartement_chambres
# # cuisine.flat = appart_chambres
# cuisine.save!

# climatisation = Equipment.new(name: 'air conditioner', available: true, pricing: false )
# climatisation.flat = studio
# # climatisation.flat = studio_terrasse
# # climatisation.flat = studio_balcon
# # climatisation.flat = appartement_chambre
# # climatisation.flat = appartement_chambres
# # climatisation.flat = appart_chambres
# climatisation.save!


# cintre = Equipment.new(name: 'hangers', available: true, pricing: false )
# cintre.flat = studio
# # cintre.flat = studio_terrasse
# # cintre.flat = studio_balcon
# # cintre.flat = appartement_chambre
# # cintre.flat = appartement_chambres
# # cintre.flat = appart_chambres
# cintre.save!

# machine_a_laver = Equipment.new(name: 'washing machine', available: true, pricing: false )
# machine_a_laver.flat = studio
# # machine_a_laver.flat = studio_terrasse
# # machine_a_laver.flat = studio_balcon
# # machine_a_laver.flat = appartement_chambre
# # machine_a_laver.flat = appartement_chambres
# # machine_a_laver.flat = appart_chambres
# machine_a_laver.save!

# television = Equipment.new(name: 'television', available: false, pricing: false )
# television.flat = studio
# # television.flat = studio_terrasse
# # television.flat = studio_balcon
# # television.flat = appartement_chambre
# # television.flat = appartement_chambres
# television.save!

# entree_privee = Equipment.new(name: 'private entrance', available: true, pricing: false )
# entree_privee.flat = studio
# # entree_privee.flat = studio_terrasse
# # entree_privee.flat = studio_balcon
# # entree_privee.flat = appartement_chambre
# # entree_privee.flat = appartement_chambres
# # entree_privee.flat = appart_chambres
# entree_privee.save!

# draps = Equipment.new(name: 'sheets', available: true, pricing: false )
# draps.flat = studio
# # draps.flat = studio_terrasse
# # draps.flat = studio_balcon
# # draps.flat = appartement_chambre
# # draps.flat = appartement_chambres
# # draps.flat = appart_chambres
# draps.save!

# espace_de_travail = Equipment.new(name: 'work space', available: true, pricing: false )
# espace_de_travail.flat = studio
# # espace_de_travail.flat = studio_balcon
# # espace_de_travail.flat = appartement_chambre
# espace_de_travail.save!

# frigo = Equipment.new(name: 'fridge', available: true, pricing: false )
# frigo.flat = studio
# # frigo.flat = studio_terrasse
# # frigo.flat = studio_balcon
# # frigo.flat = appartement_chambre
# # frigo.flat = appartement_chambres
# # frigo.flat = appart_chambres
# frigo.save!

# vaisselle = Equipment.new(name: 'dishes', available: true, pricing: false )
# vaisselle.flat = studio
# # vaisselle.flat = studio_terrasse
# # vaisselle.flat = studio_balcon
# # vaisselle.flat = appartement_chambre
# # vaisselle.flat = appartement_chambres
# # vaisselle.flat = appart_chambres
# vaisselle.save!

# ustensil = Equipment.new(name: 'utensil', available: true, pricing: false )
# ustensil.flat = studio
# # ustensil.flat = studio_terrasse
# # ustensil.flat = studio_balcon
# # ustensil.flat = appartement_chambre
# # ustensil.flat = appartement_chambres
# # ustensil.flat = appart_chambres
# ustensil.save!

# # gaziniere = Equipment.new(name: 'cooker', available: true, pricing: false )
# # gaziniere.flat = studio_balcon
# # gaziniere.flat = appartement_chambre
# # gaziniere.flat = appartement_chambres
# # gaziniere.save!

# balcon = Equipment.new(name: 'balcony', available: true, pricing: false )
# balcon.flat = studio
# # balcon.flat = studio_terrasse
# # balcon.flat = appartement_chambres
# balcon.save!

# # arriere_cour = Equipment.new(name: 'backyard', available: true, pricing: false )
# # arriere_cour.flat = studio_balcon
# # arriere_cour.flat = appartement_chambre
# # arriere_cour.flat = appart_chambres
# # arriere_cour.save!

# detecteur = Equipment.new(name: 'carbon monoxide detector', available: true, pricing: false )
# detecteur.flat = studio
# # detecteur.flat = studio_balcon
# # detecteur.flat = appartement_chambre
# detecteur.save!

# eau_chaude = Equipment.new(name: 'hot water', available: true, pricing: false )
# eau_chaude.flat = studio
# # eau_chaude.flat = studio_terrasse
# # eau_chaude.flat = studio_balcon
# # eau_chaude.flat = appartement_chambre
# # eau_chaude.flat = appartement_chambres
# # eau_chaude.flat = appart_chambres
# eau_chaude.save!

# parking = Equipment.new(name: 'parking', available: true, pricing: false )
# parking.flat = studio
# # parking.flat = studio_balcon
# # parking.flat = appartement_chambre
# parking.save!

# sejour_long = Equipment.new(name: 'long stay', available: true, pricing: false )
# sejour_long.flat = studio
# # sejour_long.flat = studio_terrasse
# # sejour_long.flat = studio_balcon
# # sejour_long.flat = appartement_chambres
# sejour_long.save!

# # seche_linge = Equipment.new(name: 'tumble_dryer', available: true, pricing: false )
# # seche_linge.flat = studio_terrasse
# # seche_linge.flat = studio_balcon
# # seche_linge.flat = appartement_chambre
# # seche_linge.save!

# # wi_fi = Equipment.new(name: 'wi_fi', available: true, pricing: false )
# # wi_fi.flat = studio_terrasse
# # wi_fi.flat = studio_balcon
# # wi_fi.flat = appartement_chambres
# # wi_fi.save!

# store = Equipment.new(name: 'store', available: true, pricing: false )
# store.flat = studio
# # store.flat = studio_balcon
# # store.flat = appartement_chambres
# store.save!

# bagagerie = Equipment.new(name: 'luggage', available: true, pricing: false )
# bagagerie.flat = studio
# # bagagerie.flat = studio_terrasse
# # bagagerie.flat = studio_balcon
# # bagagerie.flat = appartement_chambre
# # bagagerie.flat = appartement_chambres
# # bagagerie.flat = appart_chambres
# bagagerie.save!


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
