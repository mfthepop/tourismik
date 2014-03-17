require 'test_helper'

class RagisterdUsersControllerTest < ActionController::TestCase
  setup do
    @ragisterd_user = ragisterd_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ragisterd_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ragisterd_user" do
    assert_difference('RagisterdUser.count') do
      post :create, ragisterd_user: { name: @ragisterd_user.name }
    end

    assert_redirected_to ragisterd_user_path(assigns(:ragisterd_user))
  end

  test "should show ragisterd_user" do
    get :show, id: @ragisterd_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ragisterd_user
    assert_response :success
  end

  test "should update ragisterd_user" do
    patch :update, id: @ragisterd_user, ragisterd_user: { name: @ragisterd_user.name }
    assert_redirected_to ragisterd_user_path(assigns(:ragisterd_user))
  end

  test "should destroy ragisterd_user" do
    assert_difference('RagisterdUser.count', -1) do
      delete :destroy, id: @ragisterd_user
    end

    assert_redirected_to ragisterd_users_path
  end
end
