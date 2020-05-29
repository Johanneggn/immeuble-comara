class User::BookingsController < ApplicationController
  before_action :set_booking, only: %i[edit update destroy refused_booking accepted_booking]

  def index
    @bookings = Booking.all
    @bookings_accepted = Booking.where(status: 'confirmed')
    @clients = Client.all
  end
  def new
    @booking = Booking.new
    @client = @booking.build_client
    @display_flat_names = Flat.order(:name).map do | flat |
      [flat.name, flat.id]
    end



  end

  def create
    @booking = Booking.new(booking_params)


    # @booking.flat = Flat.find(params[:id])

    if @booking.save
      redirect_to user_bookings_path
    else
      render :new
    end
  end

  def edit
  end
  def update
  end
  def destroy
    @booking.destroy
    redirect_to user_bookings_path
  end

  def refused
    @booking = Booking.find(params[:id])
    @booking.update(status: 'refused')
    redirect_to user_bookings_path
  end

  def accepted
    @booking = Booking.find(params[:id])
    @booking.update(status: 'confirmed')
    redirect_to user_bookings_path
  end

  def set_booking
    @booking = Booking.find(params[:id])
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
      :client_id,
      flat_attributes: [:name, :description, :price_per_day, :longitude, :latitude, :address, :max_capacity, :min_capacity],
      client_attributes: [:civilty, :first_name, :last_name, :address, :phone_number, :email])
  end

  def client_params
    params.require(:client).permit(
      :civilty,
      :first_name,
      :last_name,
      :address,
      :phone_number,
      :email)
  end

  # def set_flat
  #   @flat = Flat.all
  # end
end
