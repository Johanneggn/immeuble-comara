class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contact, :rgpd, :rules, :presentation]

  def home
    @flats = Flat.all
    @bookings = Booking.all
  end

  def presentation; end
end
