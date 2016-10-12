require 'test_helper'

class DestinationTypesControllerTest < ActionController::TestCase
  setup do
    @destination_type = destination_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:destination_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create destination_type" do
    assert_difference('DestinationType.count') do
      post :create, destination_type: { destination_category_id: @destination_type.destination_category_id, destination_id: @destination_type.destination_id }
    end

    assert_redirected_to destination_type_path(assigns(:destination_type))
  end

  test "should show destination_type" do
    get :show, id: @destination_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @destination_type
    assert_response :success
  end

  test "should update destination_type" do
    patch :update, id: @destination_type, destination_type: { destination_category_id: @destination_type.destination_category_id, destination_id: @destination_type.destination_id }
    assert_redirected_to destination_type_path(assigns(:destination_type))
  end

  test "should destroy destination_type" do
    assert_difference('DestinationType.count', -1) do
      delete :destroy, id: @destination_type
    end

    assert_redirected_to destination_types_path
  end
end
