require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test "uniqueness" do
    list = List.create!(name: "Books to Read")

    title = "RESTful Web APIs"
    list.tasks.create!(title: title)

    duplicate = list.tasks.build(title: title)
    assert !duplicate.valid?
  end

  test "uniqueness - is per list" do
    title = "RESTful Web APIs"
    list1 = List.create!(name: "Books to Read")
    list2 = List.create!(name: "Books to Recommend")

    list1.tasks.create!(title: title)
    list2.tasks.create!(title: title)
  end
end
