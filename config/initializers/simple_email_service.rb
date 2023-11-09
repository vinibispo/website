if Rails.env.production?
  Rails.application.configure do
    config.action_mailer.smtp_settings = {
      address: "email-smtp.us-east-2.amazonaws.com",
      port: 587,
      user_name: ENV["AWS_SES_USERNAME"],
      password: ENV["AWS_SES_PASSWORD"],
      authentication: :login,
      enable_starttls_auto: true
    }
  end
end
