class FlatsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @flats = Flat.all

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
