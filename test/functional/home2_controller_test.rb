require 'test_helper'

class Home2ControllerTest < ActionController::TestCase
  test "should get conditions_of_use" do
    get :conditions_of_use
    assert_response :success
  end

  test "should get privacy_policy" do
    get :privacy_policy
    assert_response :success
  end

  test "should get announcements" do
    get :announcements
    assert_response :success
  end

  test "should get support" do
    get :support
    assert_response :success
  end

  test "should get site_map" do
    get :site_map
    assert_response :success
  end

end
