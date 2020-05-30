class User::FlatsController < ApplicationController
  def index
    @flats_comara = Flat.where(belonging: true)
    @flats_partners = Flat.where(belonging: false)
  end
end
