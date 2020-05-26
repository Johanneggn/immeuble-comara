class Booking < ApplicationRecord
  TRAVELLERS = [1, 2, 3, 4]
  STATUS = ["pending", "refused", "confirmed"]
  belongs_to :flat
  belongs_to :client
  # accepts_nested_attributes_for :client
  # accepts_nested_attributes_for :flat
  validates :start_date, :end_date, presence: true
  validate :end_date_after_start_date

  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    if end_date < start_date
      errors.add(:end_date, "must be after the start date")
    end
 end
end
