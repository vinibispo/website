require "application_system_test_case"

class ContactTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit contact_url

    assert_selector "h1", text: "Contact"

    fill_in "Email", with: "test@from.com"

    fill_in "Message", with: "This is a test message"

    click_on "Submit"

    assert_text "Email sent, soon I'll contact you"
  end
end
