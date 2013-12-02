require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get intro" do
    get :intro
    assert_response :success
  end

end
