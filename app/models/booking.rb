class Booking < ApplicationRecord
  TRAVELLERS = [1, 2, 3, 4]
  belongs_to :flat
  belongs_to :client
end
