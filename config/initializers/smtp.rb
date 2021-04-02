ActionMailer::Base.smtp_settings = {
  address: ENV['SENDGRID_SMTP_SERVER'],
  port: 465,
  domain: 'evisanoll.com',
  user_name: ENV['SENGGRID_USERNAME'],
  password: ENV['SENDGRID_PASSWORD'],
  authentication: :login,
  enable_starttls_auto: true
}
