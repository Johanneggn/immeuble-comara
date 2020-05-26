class Flat < ApplicationRecord
  has_one_attached :picture
  has_many_attached :photos
  has_many :bookings, dependent: :destroy
  has_many :equipment, dependent: :destroy
  accepts_nested_attributes_for :equipment
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

    def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
