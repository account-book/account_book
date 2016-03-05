require 'test_helper'

class TransferGroupsControllerTest < ActionController::TestCase
  setup do
    @transfer_group = transfer_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transfer_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transfer_group" do
    assert_difference('TransferGroup.count') do
      post :create, transfer_group: { place: @transfer_group.place, user_id: @transfer_group.user_id }
    end

    assert_redirected_to transfer_group_path(assigns(:transfer_group))
  end

  test "should show transfer_group" do
    get :show, id: @transfer_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transfer_group
    assert_response :success
  end

  test "should update transfer_group" do
    patch :update, id: @transfer_group, transfer_group: { place: @transfer_group.place, user_id: @transfer_group.user_id }
    assert_redirected_to transfer_group_path(assigns(:transfer_group))
  end

  test "should destroy transfer_group" do
    assert_difference('TransferGroup.count', -1) do
      delete :destroy, id: @transfer_group
    end

    assert_redirected_to transfer_groups_path
  end
end
