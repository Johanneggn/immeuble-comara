class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]



  def new
  end

  def create
    @booking = Booking.new(booking_params)
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price)
  end

end
