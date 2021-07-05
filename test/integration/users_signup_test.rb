require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "invalid users signing up test" do
    assert_no_difference "User.count" do
      post users_path, params: {
        user: {
          name: "", email: "user@invalid", password: "foo", 
          password_confirmation: "bar"
        }
      }
    end
    assert_select 'div#error_explanation'
    assert_select 'div.field_with_errors'
  end

  test "valid users signing up test" do
    assert_difference "User.count" do
      post users_path, params: {
        user: {
          name: "shashil sravan", email: "user@gmail.com", password: "foobar123", 
          password_confirmation: "foobar123"
        }
      }
    end
  end
end
