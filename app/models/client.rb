class Client < ApplicationRecord
  has_one :booking
  accepts_nested_attributes_for :booking
end
