require "test_helper"

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = User.new(name: "shashil", email: "something@gmail.com", 
      phone: "9182409060", password: "sravan", password_confirmation: "sravan")
  end

  test "user constraints check" do
    assert @user.valid?
  end

end
