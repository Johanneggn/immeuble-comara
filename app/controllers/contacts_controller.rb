class ContactsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

   if @contact.save
    UserMailer.new_contact_car(@contact).deliver_now
    redirect_to new_contact_path, flash: {success: 'Votre message a été envoyé.'}
   else
     render :new
   end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :text, :email)
  end
end
