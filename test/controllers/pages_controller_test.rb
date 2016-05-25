require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get signup" do
    get :signup
    assert_response :success
  end

  test "should get post" do
    get :post
    assert_response :success
  end

  test "should get view" do
    get :view
    assert_response :success
  end

  test "should get find" do
    get :find
    assert_response :success
  end

end
