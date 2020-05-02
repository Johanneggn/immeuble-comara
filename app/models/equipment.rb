class Equipment < ApplicationRecord
  NAMES = ['kitchen','air conditioner','hangers','washing machine','television',
    'private entrance','sheets','work space','fridge','dishes','utensil','cooker',
    'balcony','backyard','carbon monoxide detector','hot water','parking','long stay',
    'tumble dryer','wifi','store','luggage']

  belongs_to :flat
  validates :name, presence: true, inclusion: { in: NAMES }
end
