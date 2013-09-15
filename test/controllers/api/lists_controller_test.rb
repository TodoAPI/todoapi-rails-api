require 'test_helper'

class Api::ListsControllerTest < ActionController::TestCase

  test "GET index" do
    get :index
    assert_response :success
  end
end
