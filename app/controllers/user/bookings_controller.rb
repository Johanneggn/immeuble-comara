class User::BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    # calendar-day
    # @end_bookings = @bookings.group_by(&:end_date)
    # @booking_in_progress = @bookings.where('start_date > ? AND end_date < ?', calendar_day, calendar_day)
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
