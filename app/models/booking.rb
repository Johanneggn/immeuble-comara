class Booking < ApplicationRecord
  TRAVELLERS = [1, 2, 3, 4]
  STATUS = ["pending", "refused", "confirmed"]

  belongs_to :flat
  belongs_to :client

  accepts_nested_attributes_for :flat

  validates :start_date, :end_date, presence: true
end
