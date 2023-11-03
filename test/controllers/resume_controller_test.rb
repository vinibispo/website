require "test_helper"

class ResumeControllerTest < ActionDispatch::IntegrationTest
  test "returns index" do
    get resume_url
    assert_response :success
  end

  test "is a pdf" do
    get resume_url
    assert_equal "application/pdf", response.content_type
  end

  test "has a filename" do
    get resume_url
    assert_not_nil response.headers["Content-Disposition"]
  end
end
