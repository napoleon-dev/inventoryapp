require 'test_helper'

class ItemTypeCategoriesControllerTest < ActionController::TestCase
  setup do
    @item_type_category = item_type_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_type_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_type_category" do
    assert_difference('ItemTypeCategory.count') do
      post :create, item_type_category: { itemtypecategory: @item_type_category.itemtypecategory }
    end

    assert_redirected_to item_type_category_path(assigns(:item_type_category))
  end

  test "should show item_type_category" do
    get :show, id: @item_type_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_type_category
    assert_response :success
  end

  test "should update item_type_category" do
    patch :update, id: @item_type_category, item_type_category: { itemtypecategory: @item_type_category.itemtypecategory }
    assert_redirected_to item_type_category_path(assigns(:item_type_category))
  end

  test "should destroy item_type_category" do
    assert_difference('ItemTypeCategory.count', -1) do
      delete :destroy, id: @item_type_category
    end

    assert_redirected_to item_type_categories_path
  end
end
