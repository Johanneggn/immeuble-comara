
class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]



  def new
    @booking = Booking.new(booking_params)
    @client = Client.new
  end

  def create
    @booking = Booking.new(booking_params)
    @flat = Flat.find(params[:flat_id])
    @booking.flat = @flat
    @client = Client.new
    @booking.client = @client
    @booking.total_price = @booking.flat.price_per_day*((@booking.end_date - @booking.start_date).to_i)
    @booking.status = 'pending'
    if @booking.save
      redirect_to flat_client_booking_path
    else
      render :new
    end
  end

private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price)
  end

end
