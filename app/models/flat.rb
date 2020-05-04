class Flat < ApplicationRecord
  has_one_attached :picture
  has_many_attached :photos
  has_many :bookings, dependent: :destroy
  has_many :equipments, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
