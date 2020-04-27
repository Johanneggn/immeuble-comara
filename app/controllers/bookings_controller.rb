
class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]



  def new
  end

  def create
    # @booking = Booking.new(booking_params)
    # @booking.client = Client.new
    # @booking.flat = @flat
    # @booking.total_price = @booking.flat.price_per_day*((@booking.end_date - @booking.start_date).to_i)
    # @booking.status = 'pending'
    # if @booking.save
    #   redirect_to bookings_path
    # else
    #   render :new
    # end
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price)
  end

end
