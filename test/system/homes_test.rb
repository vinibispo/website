require "application_system_test_case"

class HomesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url

    assert_selector "h1", text: "Vinícius Bispo"

    assert_selector "h2", text: "Renaissance Developer"
  end
end
