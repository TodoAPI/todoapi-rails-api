require 'test_helper'

class Api::ListsControllerTest < ActionController::TestCase

  test "GET index" do
    get :index
    assert_response :success
  end

  test "POST create" do
    post :create, {
      list: {
        name: "Books to Read"
      }
    }
    assert_response 201
  end

  test "POST create - validation" do
    name = "Books to Read"
    duplicate = List.create!(name: name)

    post :create, {
      list: {
        name: name
      }
    }
    assert_response 422
  end
end
