class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]



  def new
  end

  def create
    @client = Client.new(client_params)
    @booking = Booking.new(booking_params)
    @booking.client = @client
    @booking.flat = current_flat
    @booking.total_price = @booking.flat.price_per_day*((@booking.end_date - @booking.start_date).to_i)
    @booking.status = 'pending'
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end
end
