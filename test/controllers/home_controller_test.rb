require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_titile = "Hello App"
  end

  test "should get about" do
    get about_url
    assert_response :success
    assert_select 'h1', "This is #{@base_titile} page"
  end

  test "should get contact" do
    get contact_url
    assert_response :success
  end
end
