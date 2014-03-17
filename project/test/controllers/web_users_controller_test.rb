require 'test_helper'

class WebUsersControllerTest < ActionController::TestCase
  setup do
    @web_user = web_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:web_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create web_user" do
    assert_difference('WebUser.count') do
      post :create, web_user: { ip: @web_user.ip, user_id: @web_user.user_id }
    end

    assert_redirected_to web_user_path(assigns(:web_user))
  end

  test "should show web_user" do
    get :show, id: @web_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @web_user
    assert_response :success
  end

  test "should update web_user" do
    patch :update, id: @web_user, web_user: { ip: @web_user.ip, user_id: @web_user.user_id }
    assert_redirected_to web_user_path(assigns(:web_user))
  end

  test "should destroy web_user" do
    assert_difference('WebUser.count', -1) do
      delete :destroy, id: @web_user
    end

    assert_redirected_to web_users_path
  end
end