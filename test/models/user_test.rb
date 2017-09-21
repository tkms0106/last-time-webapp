require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "Example User", email: "user@example.com")
  end

  test "should be valid" do
    assert @user.valid?
  end
  
  test "name should be present" do
    @user.name = "     "
    assert @user.invalid?
  end
  
  test "email should be present" do
    @user.email = "     "
    assert @user.invalid?
  end
  
  test "name should not be too long" do
    @user.name = "a" * 51
    assert @user.invalid?
  end

  test "email should not be too long" do
    @user.email = "a" * 244 + "@example.com"
    assert @user.invalid?
  end
end
