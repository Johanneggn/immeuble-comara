class EquipementsController < ApplicationController
  def new

  end

  def create
    kitchen = Equipment.create!(name: 'kitchen', available: true, pricing: true)
    # airconditioner = Equipment.create!(name: 'air conditioner', available: true, pricing: true)
    # hangers = Equipment.create!(name: 'hangers', available: false, pricing: false)
    # washing_machine = Equipment.create!(name: 'washing machine', available: false, pricing: false)
    # television = Equipment.create!(name: 'television', available: false, pricing: false)
    # private_entrance = Equipment.create!(name: 'private entrance', available: false, pricing: false)
    # sheets = Equipment.create!(name: 'sheets', available: false, pricing: false)
    # work_space = Equipment.create!(name: 'work space', available: false, pricing: false)
    # fridge = Equipment.create!(name: 'fridge', available: false, pricing: false)
    # dishes = Equipment.create!(name: 'dishes', available: false, pricing: false)
    # utensil = Equipment.create!(name: 'utensil', available: false, pricing: false)
    # cooker = Equipment.create!(name: 'cooker', available: false, pricing: false)
    # balcony = Equipment.create!(name: 'balcony', available: false, pricing: false)
    # backyard = Equipment.create!(name: 'backyard', available: false, pricing: false)
    # carbon_monoxide_detector = Equipment.create!(name: 'carbon monoxide detector', available: false, pricing: false)
    # hot_water = Equipment.create!(name: 'hot water', available: false, pricing: false)
    # parking = Equipment.create!(name: 'parking', available: false, pricing: false)
    # long_stay= Equipment.create!(name: 'long stay', available: false, pricing: false)
    # tumble_dryer = Equipment.create!(name: 'tumble dryer', available: false, pricing: false)
    # wi_fi = Equipment.create!(name: 'wifi', available: false, pricing: false)
    # store = Equipment.create!(name: 'store', available: false, pricing: false)
    # luggage = Equipment.create!(name: 'luggage', available: false, pricing: false)
  end
end
