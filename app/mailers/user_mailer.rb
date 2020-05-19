class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome
    @client = Client.find(params[:id])
    mail(to: @client.email, subject: 'Welcome to Le Wagon')
  end
  def new_booking
    mail(to: 'johanne.gueguen@gmail.com', subject: 'Vous avez une nouvelle réservation')
  end
end
