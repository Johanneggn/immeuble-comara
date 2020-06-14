class Flat < ApplicationRecord
BELONGING = ["Immeuble Comara", "Partenaire"]

  has_one_attached :picture
  has_many_attached :photos
  has_many :bookings, dependent: :destroy
  has_many :equipment, dependent: :destroy
  accepts_nested_attributes_for :equipment
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, :description, :price_per_day, :longitude, :latitude, :max_capacity, :min_capacity, :price_xof, presence: true

    def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
