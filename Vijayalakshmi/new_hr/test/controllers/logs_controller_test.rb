require 'test_helper'

class LogsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get logs_home_url
    assert_response :success
  end

  test "should get login" do
    get logs_login_url
    assert_response :success
  end

  test "should get signup" do
    get logs_signup_url
    assert_response :success
  end

end
