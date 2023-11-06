require 'test_helper'
class Contact::MailerTest < ActionMailer::TestCase
  test "send_contact" do
    # Create the email and store it for further assertions
    email = Contact::Mailer.send_contact(from: "user@user.com", message: "Hey! I wanna meet you")

    # Send the email, then test that it got queued

    assert_emails 1 do
      email.deliver_now
    end

    # Test the body of the sent email contains what we expect it to
    assert_equal "Contact", email.subject

    assert_match(/Hey! I wanna meet you/, email.body.encoded)
      
  end
end
