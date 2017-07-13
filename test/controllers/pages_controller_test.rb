require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get pages_search_url
    assert_response :success
  end

  test "should get favorite" do
    get pages_favorite_url
    assert_response :success
  end

  test "should get search_gems" do
    get pages_search_gems_url
    assert_response :success
  end

end
