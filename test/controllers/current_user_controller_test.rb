require "test_helper"

class CurrentUserControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get current_user_edit_url
    assert_response :success
  end
end
