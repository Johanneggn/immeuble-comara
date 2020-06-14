
class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :new, :create]
  before_action :set_flat, only: [:new, :create]
  before_action :set_booking, only: [:show, :edit, :update]

  def show
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
    if @client.save
      mail = UserMailer.with(booking: @booking).welcome.deliver_now
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def edit
    @display_flat_names = Flat.order(:name).map do | flat |
      [flat.name, flat.id]
    end
  end

  def update
    @booking.update(booking_params)

    if @booking.save
      redirect_to user_bookings_path
    else
      render :edit
    end
  end

private

  def booking_params
    params.require(:booking).permit(
    :start_date,
    :end_date,
    :travellers,
    :flat_id,
    :total_price,
    :status,
    :origin,
    client_attributes: [:id, :civilty, :first_name, :last_name, :address, :phone_number, :email])
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

  def set_booking
    @booking = Booking.find(params[:id])
  end

end
