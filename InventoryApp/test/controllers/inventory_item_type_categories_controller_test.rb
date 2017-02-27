require 'test_helper'

class InventoryItemTypeCategoriesControllerTest < ActionController::TestCase
  test "should get ItemTypeCategory:string" do
    get :ItemTypeCategory:string
    assert_response :success
  end

end
