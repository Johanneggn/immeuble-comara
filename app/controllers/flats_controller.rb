class FlatsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :show]
    before_action :set_flat, only: %i[show edit update]

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
  end

  def create
    @flat= Flat.new(flat_params)

    if @flat.save
      # @airconditioner = create_air_conditionner(@flat)
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
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :description, :price_per_day, :address, :picture, :photos)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end

  # def create_kitchen(flat)
  #   kitchen = Equipment.create!(name: 'kitchen', available: true, pricing: true, flat: flat)
  #   # airconditioner = Equipment.create!(name: 'air conditioner', available: true, pricing: true)
  #   # hangers = Equipment.create!(name: 'hangers', available: false, pricing: false)
  #   # washing_machine = Equipment.create!(name: 'washing machine', available: false, pricing: false)
  #   # television = Equipment.create!(name: 'television', available: false, pricing: false)
  #   # private_entrance = Equipment.create!(name: 'private entrance', available: false, pricing: false)
  #   # sheets = Equipment.create!(name: 'sheets', available: false, pricing: false)
  #   # work_space = Equipment.create!(name: 'work space', available: false, pricing: false)
  #   # fridge = Equipment.create!(name: 'fridge', available: false, pricing: false)
  #   # dishes = Equipment.create!(name: 'dishes', available: false, pricing: false)
  #   # utensil = Equipment.create!(name: 'utensil', available: false, pricing: false)
  #   # cooker = Equipment.create!(name: 'cooker', available: false, pricing: false)
  #   # balcony = Equipment.create!(name: 'balcony', available: false, pricing: false)
  #   # backyard = Equipment.create!(name: 'backyard', available: false, pricing: false)
  #   # carbon_monoxide_detector = Equipment.create!(name: 'carbon monoxide detector', available: false, pricing: false)
  #   # hot_water = Equipment.create!(name: 'hot water', available: false, pricing: false)
  #   # parking = Equipment.create!(name: 'parking', available: false, pricing: false)
  #   # long_stay= Equipment.create!(name: 'long stay', available: false, pricing: false)
  #   # tumble_dryer = Equipment.create!(name: 'tumble dryer', available: false, pricing: false)
  #   # wi_fi = Equipment.create!(name: 'wifi', available: false, pricing: false)
  #   # store = Equipment.create!(name: 'store', available: false, pricing: false)
  #   # luggage = Equipment.create!(name: 'luggage', available: false, pricing: false)
  # end

  def create_air_conditionner(flat)
    airconditioner = Equipment.create!(name: 'air conditioner', available: false, pricing: false, flat: flat)
  end

end

