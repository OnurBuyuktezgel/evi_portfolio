class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]
  invisible_captcha only: [:create], honeypot: :subtitle

  def index
    @contacts = policy_scope(Contact).order(created_at: :desc)
  end

  def new
    @contact = Contact.new
    authorize @contact
  end

  def create
    @contact = Contact.new(contact_params)
    authorize @contact

    if @contact.save
      mail = ContactMailer.with(contact: @contact).contact_confirmation
      mail.deliver_now
      flash[:notice] = 'Message sent successfully.'
      redirect_to new_contact_path
    else
      flash[:error] = 'Cannot send message, please try again.'
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :phone, :message, :nickname)
  end
end
