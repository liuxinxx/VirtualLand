require 'test_helper'

class LandsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get lands_show_url
    assert_response :success
  end

  test "should get index" do
    get lands_index_url
    assert_response :success
  end

end
