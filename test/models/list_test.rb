require 'test_helper'

class ListTest < ActiveSupport::TestCase
  test "uniqueness" do
    name = "Books to Read"
    List.create!(name: name)

    duplicate = List.new(name: name)
    assert !duplicate.valid?
  end
end
