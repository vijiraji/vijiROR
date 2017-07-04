require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get users_home_url
    assert_response :success
  end

  test "should get login" do
    get users_login_url
    assert_response :success
  end

  test "should get register" do
    get users_register_url
    assert_response :success
  end

  test "should get dashboard" do
    get users_dashboard_url
    assert_response :success
  end

end
