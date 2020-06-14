class User::BookingsController < ApplicationController
  before_action :set_booking, only: %i[edit update destroy refused_booking accepted_booking]

  def index
    @bookings = Booking.all
    @bookings_accepted = Booking.where(status: 'confirmed')
    @clients = Client.all
  end
  def new
    @booking = Booking.new
      @display_flat_names = Flat.order(:name).map do | flat |
        [flat.name, flat.id]
      end
    @client = @booking.build_client

  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to user_bookings_path
    else
      render :new
    end
  end

  def edit
  end
  def update
    @booking.update(booking_params)

    if @booking.save
      redirect_to user_bookings_path
    else
      render :edit
    end
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
      :id,
      :start_date,
      :end_date,
      :travellers,
      :flat_id,
      :total_price,
      :status,
      :origin,
      client_attributes: [:id, :civilty, :first_name, :last_name, :address, :phone_number, :email])
  end


  # def set_flat
  #   @flat = Flat.all
  # end
end
