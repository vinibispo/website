require "test_helper"


class ErrorsControllerTest < ActionDispatch::IntegrationTest

  setup do
    Rails.application.configure do
      config.consider_all_requests_local = false
    end
  end
  test "should get not_found" do
    get "/404"
    assert_response :not_found
  end

  teardown do
    Rails.application.configure do
      config.consider_all_requests_local = true
    end
  end
end
