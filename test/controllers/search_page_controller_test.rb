require "test_helper"

class SearchPageControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get search_page_search_url
    assert_response :success
  end
end
