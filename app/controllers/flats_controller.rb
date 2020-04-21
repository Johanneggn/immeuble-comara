class FlatsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @flats = Flat.where(capacity: params[:capacity_response])
    # Je veux afficher les appartements
    # Les appartements qui n'ont pas de

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
