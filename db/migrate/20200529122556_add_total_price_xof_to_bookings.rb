class AddTotalPriceXofToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :total_price_xof, :integer
  end
end
