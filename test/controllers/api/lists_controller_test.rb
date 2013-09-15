require 'test_helper'

class Api::ListsControllerTest < ActionController::TestCase

  test "GET index" do
    get :index
    assert_response :success
  end

  test "POST create" do
    name = "Books to Read"
    post :create, {
      list: {
        name: name
      }
    }
    assert_response 201

    response_json = JSON.parse(response.body)
    expected_json = {"list" => {"name" => name}}
    assert_contains_subhash expected_json, response_json
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

  private

  def assert_contains_subhash(expected_subhash, actual)
    assert_equal actual, actual.deep_merge(expected_subhash)
  end
end
