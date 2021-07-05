require "test_helper"

class UsersLoginTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:sravan)
  end

  test "login with valid information" do
    get login_path
    post login_path, params: { sesssion: { email: @user.email,
      password: 'password' } }
    assert_redirected_to @user
  end
end
