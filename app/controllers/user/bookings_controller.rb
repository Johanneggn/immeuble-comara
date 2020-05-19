class User::BookingsController < ApplicationController
  before_action :set_booking, only: %i[edit update destroy refused_booking accepted_booking]
  def index
    @bookings = Booking.all
    @bookings_accepted = Booking.where(status: 'confirmed')
    @clients = Client.all
  end
  def new
  end
  def create
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
end
