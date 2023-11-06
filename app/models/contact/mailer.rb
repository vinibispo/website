class Contact::Mailer < ApplicationMailer
  def send_contact(from:, message:)
    # Make user send this mail to contact@vinibispo.com
    # Let's go copilot

    mail(to: 'contact@vinibispo.com', subject: 'Contact') do |format|
      format.html { render 'contact/mailer/send', locals: { from:, message: } }
    end
  end
end
