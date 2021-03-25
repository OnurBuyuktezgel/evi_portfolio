class Contact < MailForm::Base
  attribute :first_name, validate: true
  attribute :last_name,  validate: true
  attribute :phone,      validate: true
  attribute :email,      validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,    validate: true
  attribute :nickname,   captcha: true

  def headers
    {
      subject: "Contact Form - EviSanoll.com",
      to: "obuyuktezgel@gmail.com",
      from: %("#{first_name} #{last_name}" <#{email}>)
    }
  end
end
