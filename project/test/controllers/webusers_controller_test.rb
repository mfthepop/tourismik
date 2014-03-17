require 'test_helper'

class WebusersControllerTest < ActionController::TestCase
  setup do
    @webuser = webusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:webusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create webuser" do
    assert_difference('Webuser.count') do
      post :create, webuser: { ip: @webuser.ip, user_id: @webuser.user_id }
    end

    assert_redirected_to webuser_path(assigns(:webuser))
  end

  test "should show webuser" do
    get :show, id: @webuser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @webuser
    assert_response :success
  end

  test "should update webuser" do
    patch :update, id: @webuser, webuser: { ip: @webuser.ip, user_id: @webuser.user_id }
    assert_redirected_to webuser_path(assigns(:webuser))
  end

  test "should destroy webuser" do
    assert_difference('Webuser.count', -1) do
      delete :destroy, id: @webuser
    end

    assert_redirected_to webusers_path
  end
end
