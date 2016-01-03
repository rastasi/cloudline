require 'test_helper'

class InfoControllerTest < ActionController::TestCase
  test "should get about_us" do
    get :about_us
    assert_response :success
  end

  test "should get premium" do
    get :premium
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
