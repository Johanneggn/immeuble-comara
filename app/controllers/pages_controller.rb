class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @flats = Flat.all
    @bookings = Booking.all
  end
end
