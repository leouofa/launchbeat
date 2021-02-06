require "test_helper"

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome" do
    get page_welcome_url
    assert_response :success
  end
end
