require 'test_helper'

class AttendUsersControllerTest < ActionController::TestCase
  setup do
    @attend_user = attend_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attend_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attend_user" do
    assert_difference('AttendUser.count') do
      post :create, attend_user: { event_id: @attend_user.event_id, status: @attend_user.status, user_id: @attend_user.user_id }
    end

    assert_redirected_to attend_user_path(assigns(:attend_user))
  end

  test "should show attend_user" do
    get :show, id: @attend_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attend_user
    assert_response :success
  end

  test "should update attend_user" do
    patch :update, id: @attend_user, attend_user: { event_id: @attend_user.event_id, status: @attend_user.status, user_id: @attend_user.user_id }
    assert_redirected_to attend_user_path(assigns(:attend_user))
  end

  test "should destroy attend_user" do
    assert_difference('AttendUser.count', -1) do
      delete :destroy, id: @attend_user
    end

    assert_redirected_to attend_users_path
  end
end
