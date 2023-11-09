class ContactController < ApplicationController
  def show
  end

  def create
    input = {
      from: contact_params[:email],
      message: contact_params[:message]
    }
    Contact::Mailer
      .send_contact(**input)
      .deliver_later

    flash[:info] = "Email sent, soon I'll contact you"

    redirect_to root_path

  end

  def contact_params
    params.permit(:email, :message)
  end
end
