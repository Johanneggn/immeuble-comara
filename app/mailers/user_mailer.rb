class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome
    @booking = params[:booking]
    mail(to: @booking.client.email, subject: 'Votre réservation')
  end

  def new_booking
    mail(to: 'Sides.lgr@gmail.com', subject: 'Vous avez une nouvelle demande de réservation')
  end

  def new_contact_car(contact)
    @contact = contact

    mail(to: 'johanne.gueguen@gmail.com', subject: 'Vous avez un message pour une location de voiture')
  end

end
