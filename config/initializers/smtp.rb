ActionMailer::Base.smtp_settings = {
  user_name: ENV['SENGGRID_USERNAME'],
  password: ENV['SENDGRID_PASSWORD'],
  domain: 'evisanoll.com',
  address: ENV['SENDGRID_SMTP_SERVER'],
  port: 587,
  authentication: :plain,
  enable_starttls_auto: true
}
