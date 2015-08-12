require 'test_helper'

class SecretControllerTest < ActionController::TestCase
  test "should get secret1" do
    get :secret1
    assert_response :success
  end

  test "should get secret2" do
    get :secret2
    assert_response :success
  end

end
