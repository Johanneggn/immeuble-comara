class User::FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end
end
