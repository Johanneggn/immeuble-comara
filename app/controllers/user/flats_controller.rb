class User::FlatsController < ApplicationController
  def index
    @flats = current_user.flats
  end
end
