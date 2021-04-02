class ContactMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact.subject
  #
  def contact_confirmation
    @contact = params[:contact]

    mail(
      to: 'evi.sanoll@hotmail.de',
      subject: '❗️New message on EviSanoll.com 🎶🎺'
    )
  end
end
