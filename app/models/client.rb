class Client < ApplicationRecord
  CIVILITY = ["M.", "Mme"]
  has_one :booking

  accepts_nested_attributes_for :booking

  validates :first_name,:last_name, presence: true
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i}
end
