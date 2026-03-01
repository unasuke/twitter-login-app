require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should logout" do
    get logout_url
    assert_response :redirect
    assert_redirected_to root_path
  end
end
