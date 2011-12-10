require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get home_timeline" do
    get :home_timeline
    assert_response :success
  end

end
