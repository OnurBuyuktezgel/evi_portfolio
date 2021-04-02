ActionMailer::Base.smtp_settings = {
  user_name: 'evisanoll',
  password: ENV['SENDGRID_PASSWORD'],
  domain: 'evisanoll.com',
  address: "smtp.sendgrid.net",
  port: 587,
  authentication: :plain,
  enable_starttls_auto: true
}
