require 'test_helper'

  class SigningUpUser < ActionDispatch::IntegrationTest

    test "shouldn't create a new user without name" do
    user = User.new
    assert_not user.save
  end
end
