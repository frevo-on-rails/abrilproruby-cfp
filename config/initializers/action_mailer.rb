ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address:              ENV['EMAIL_HOST'],
  port:                 ENV['EMAIL_PORT'],
  user_name:            ENV['EMAIL_USER_NAME'],
  password:             ENV['EMAIL_PASSWORD'],
  authentication:       'plain',
  enable_starttls_auto: true
}
ActionMailer::Base.default_url_options = { host: ENV['HOST'] }
