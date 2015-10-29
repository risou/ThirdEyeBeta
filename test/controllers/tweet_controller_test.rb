require 'test_helper'

class TweetControllerTest < ActionController::TestCase
  test "should get fav" do
    get :fav
    assert_response :success
  end

end
