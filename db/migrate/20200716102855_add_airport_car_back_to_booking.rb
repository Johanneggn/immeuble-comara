class AddAirportCarBackToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :airport_car_back, :boolean
  end
end
