class AddCarToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :airport_car, :boolean
    add_column :bookings, :rental_car, :boolean
  end
end
