require 'test_helper'

class FightControllerTest < ActionController::TestCase
  test "should get monster" do
    get :monster
    assert_response :success
  end

end
