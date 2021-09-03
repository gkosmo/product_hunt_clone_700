require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "full_name returns the full name of the user" do
    user = User.new(first_name: "john", last_name: "lennon")
    assert_equal "John Lennon", user.full_name
  end
end
