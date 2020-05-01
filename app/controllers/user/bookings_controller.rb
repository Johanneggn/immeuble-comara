class User::BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    #calendar_day = (start_date..end_date)
    # @end_bookings = current_user.bookings.group_by(&:end_date)
    # @booking_in_progress = current_user.bookings.where('start_date > ? AND end_date < ?', calendar_day, calendar_day)
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
