class FlatsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :show]
    before_action :set_flat, only: %i[show edit update destroy]

  def index
  @booked_flat_ids= Booking.where(status: 'confirmed')
    .where('(start_date BETWEEN :start_date AND :end_date) OR (end_date BETWEEN :start_date AND :end_date)', start_date: params[:start_date_response], end_date: params[:end_date_response])
    .pluck(:flat_id)

  @flats = Flat.where.not(id: @booked_flat_ids)
    .where('max_capacity = ? OR min_capacity = ?', params[:capacity_response], params[:capacity_response])

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

    if @flat.belonging == true
      @flat.longitude == -3.9679002709940625
      @flat.latitude == 5.302209635104108
    end


    if @flat.save

      redirect_to user_flats_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @flat.update(flat_params)

    if @flat.save
    redirect_to flat_path(@flat)

    else
      render :edit
    end
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
      :price_xof,
      :address,
      :picture,
      :longitude,
      :latitude,
      :max_capacity,
      :min_capacity,
      :belonging,
      photos: [],
      equipment_attributes: [:name, :available, :pricing, :icon])
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def build_equipments
    # Equipment::NAMES.each do |name|
    #   @flat.equipment.new(name: name)
    # end
    @flat.equipment.new(name: 'kitchen', icon: 'fal fa-hat-chef')
    @flat.equipment.new(name: 'air conditioner', icon: 'fal fa-air-conditioner')
    @flat.equipment.new(name: 'hangers', icon: 'fal fa-tshirt')
    @flat.equipment.new(name: 'washing machine', icon: 'fal fa-washer')
    @flat.equipment.new(name: 'television', icon: 'fal fa-tv')
    @flat.equipment.new(name: 'private entrance', icon: 'fal fa-key')
    @flat.equipment.new(name: 'sheets', icon: 'fal fa-blanket')
    @flat.equipment.new(name: 'work space', icon: 'fal fa-laptop-code')
    @flat.equipment.new(name: 'fridge', icon: 'fal fa-refrigerator')
    @flat.equipment.new(name: 'dishes', icon: 'fal fa-glass')
    @flat.equipment.new(name: 'utensil', icon: 'fal fa-utensils')
    @flat.equipment.new(name: 'cooker', icon: 'fal fa-oven')
    @flat.equipment.new(name: 'balcony', icon: 'fal fa-sun')
    @flat.equipment.new(name: 'backyard', icon: 'fal fa-sun')
    @flat.equipment.new(name: 'carbon monoxide detector', icon: 'fal fa-sensor')
    @flat.equipment.new(name: 'hot water', icon: 'fal fa-hand-holding-water')
    @flat.equipment.new(name: 'parking', icon: 'fal fa-car')
    @flat.equipment.new(name: 'long stay', icon: 'fal fa-calendar-plus')
    @flat.equipment.new(name: 'tumble dryer', icon: 'fal fa-dryer-alt')
    @flat.equipment.new(name: 'wifi', icon: 'fal fa-wifi')
    @flat.equipment.new(name: 'store', icon: 'fal fa-booth-curtain')
    @flat.equipment.new(name: 'luggage', icon: 'fal fa-suitcase')
  end

end

