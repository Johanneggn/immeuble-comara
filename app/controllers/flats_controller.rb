class FlatsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :show]

  def index

  @flats = Flat.where(capacity: params[:capacity_response]).joins(:bookings)
  .where.not('bookings.start_date > ? AND bookings.end_date < ?', params[:start_date_response], params[:end_date_response])
  .where.not('bookings.start_date < ? AND bookings.end_date > ?', params[:end_date_response], params[:start_date_response])

    @flat_place = Flat.geocoded
      @markers = @flats.map do |event|
        {
          lat: event.latitude,
          lng: event.longitude
        }
      end
  end

  def show
    @flat = Flat.find(params[:id])
    @booking = Booking.new
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
  end
end
