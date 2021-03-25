class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      ContactMailer.contact_confirmation(@contact).deliver_now
      flash.now[:error] = nil
      redirect_to root_path, notice: 'Message sent successfully.'
    else
      flash.now[:error] = 'Cannot send message, please try again.'
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :phone, :message, :nickname)
  end
end
