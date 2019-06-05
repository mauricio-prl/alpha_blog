require 'test_helper'

  class SigningUpUser < ActionDispatch::IntegrationTest

    test "shouldn't create a new user without username, email and password" do
    user = User.new()
    assert_not user.save
  end
end
