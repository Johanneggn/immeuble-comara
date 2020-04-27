class ClientsController < ApplicationController
  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to client_bookings_path
    else
      render :new
    end
  end

  private

  def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :phone_number, :address)
  end
end
