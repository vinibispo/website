require "application_system_test_case"

class ProjectsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit projects_url

    assert_selector "h1", text: "Projects"

    assert_selector "a", text: "UpMedal"
  end
end
