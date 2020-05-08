class AddOriginToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :origin, :string
  end
end
