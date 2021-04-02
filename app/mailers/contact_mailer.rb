class ContactMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact.subject
  #
  def contact_confirmation
    @contact = params[:contact]

    mail(
      to: 'obuyuktezgel@gmail.com',
      subject: '❗️New message on EviSanoll.com 🎶🎺'
    )
  end
end
