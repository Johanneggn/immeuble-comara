
class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :new, :create]
  before_action :set_flat, only: [:new, :create]

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @client = Client.new
    @booking = @client.build_booking(booking_params)
    @booking.total_price = @flat.price_per_day*((@booking.end_date - @booking.start_date).to_i)
    @booking.total_price_xof = @flat.price_xof*((@booking.end_date - @booking.start_date).to_i)
  end

  def create
    @client = Client.new(client_params)
    @booking = @client.booking
    @booking.flat = @flat
    @booking.total_price = @booking.flat.price_per_day*((@booking.end_date - @booking.start_date).to_i)
    @booking.total_price_xof = @booking.flat.price_xof*((@booking.end_date - @booking.start_date).to_i)
    @booking.status = 'pending'
    @booking.origin = 'website'
    mail = UserMailer.welcome
    mail.deliver_now
    if @client.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :travellers)
  end

  def client_params
    params.require(:client).permit(
      :civilty,
      :first_name,
      :last_name,
      :address,
      :phone_number,
      :email,
      booking_attributes: [:start_date, :end_date, :travellers])
  end

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end

end
