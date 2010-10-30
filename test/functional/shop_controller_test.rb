require 'test_helper'

class ShopControllerTest < ActionController::TestCase
  test "should get weapon" do
    get :weapon
    assert_response :success
  end

  test "should get armor" do
    get :armor
    assert_response :success
  end

  test "should get item" do
    get :item
    assert_response :success
  end

end
