require 'test_helper'

class DestinationCategoriesControllerTest < ActionController::TestCase
  setup do
    @destination_category = destination_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:destination_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create destination_category" do
    assert_difference('DestinationCategory.count') do
      post :create, destination_category: { name: @destination_category.name }
    end

    assert_redirected_to destination_category_path(assigns(:destination_category))
  end

  test "should show destination_category" do
    get :show, id: @destination_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @destination_category
    assert_response :success
  end

  test "should update destination_category" do
    patch :update, id: @destination_category, destination_category: { name: @destination_category.name }
    assert_redirected_to destination_category_path(assigns(:destination_category))
  end

  test "should destroy destination_category" do
    assert_difference('DestinationCategory.count', -1) do
      delete :destroy, id: @destination_category
    end

    assert_redirected_to destination_categories_path
  end
end
