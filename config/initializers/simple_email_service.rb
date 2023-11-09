if Rails.env.production?
  Rails.application.configure do
    config.action_mailer.smtp_settings = {
      address: "smtp.amazonaws.com",
      port: 587,
      user_name: ENV["AWS_SES_USERNAME"],
      password: ENV["AWS_SES_PASSWORD"],
      authentication: :login,
      enable_starttls_auto: true
    }
  end
end
