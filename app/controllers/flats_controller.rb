class FlatsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :show]
    before_action :set_flat, only: %i[show edit update destroy]

  def index
  @flats = Flat.where('max_capacity = ? OR min_capacity = ?', params[:capacity_response], params[:capacity_response]).joins(:bookings)
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
    @booking = Booking.new
  end

  def new
    @flat = Flat.new
    build_equipments
  end

  def create
    @flat= Flat.new(flat_params)

    if @flat.save

      redirect_to user_flats_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @flat.destroy
    redirect_to user_flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(
      :name,
      :description,
      :price_per_day,
      :address,
      :picture,
      :photos,
      equipment_attributes: [:name, :available, :pricing])
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def build_equipments
    Equipment::NAMES.each do |name|
      @flat.equipment.new(name: name)
    end
  end

end

