class Contact::Mailer < ApplicationMailer
  default from: 'contact@vinibispo.com'

  def send_contact(from:, message:)
    mail(to: 'contact@vinibispo.com', subject: 'Contact') do |format|
      format.html { render 'contact/mailer/send', locals: { from:, message: } }
    end
  end
end
