require 'test_helper'

class UserinfosControllerTest < ActionController::TestCase
  setup do
    @userinfo = userinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userinfo" do
    assert_difference('Userinfo.count') do
      post :create, userinfo: { email: @userinfo.email, firstname: @userinfo.firstname, lastname: @userinfo.lastname, password: @userinfo.password, school: @userinfo.school }
    end

    assert_redirected_to userinfo_path(assigns(:userinfo))
  end

  test "should show userinfo" do
    get :show, id: @userinfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userinfo
    assert_response :success
  end

  test "should update userinfo" do
    patch :update, id: @userinfo, userinfo: { email: @userinfo.email, firstname: @userinfo.firstname, lastname: @userinfo.lastname, password: @userinfo.password, school: @userinfo.school }
    assert_redirected_to userinfo_path(assigns(:userinfo))
  end

  test "should destroy userinfo" do
    assert_difference('Userinfo.count', -1) do
      delete :destroy, id: @userinfo
    end

    assert_redirected_to userinfos_path
  end
end
