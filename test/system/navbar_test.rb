require "application_system_test_case"

class NavbarTest < ApplicationSystemTestCase
  test "visiting the resume by the navbar" do
    visit root_url

    pdf_window = window_opened_by { click_link "Resume" }

    within_window pdf_window do
      assert_selector "embed"
    end
  end

  test "visiting the projects by the navbar" do
    visit root_url

    click_link "Projects"

    assert_selector "h1", text: "Projects"
  end
end
