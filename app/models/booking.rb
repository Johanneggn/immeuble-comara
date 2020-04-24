class Booking < ApplicationRecord
  TRAVELLERS = [1, 2, 3, 4]
  belongs_to :flat
  belongs_to :client
  # accepts_nested_attributes_for :client
  # accepts_nested_attributes_for :flat
end
