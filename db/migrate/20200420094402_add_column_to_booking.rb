class AddColumnToBooking < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :client, foreign_key: true
    add_reference :bookings, :flat, foreign_key: true
    add_column :bookings, :travellers, :integer
  end
end
