class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome
    mail(to: 'johanne.gueguen@gmail.com', subject: 'Votre réservation')
  end

end
