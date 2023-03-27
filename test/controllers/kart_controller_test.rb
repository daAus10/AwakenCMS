require "test_helper"

class KartControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get kart_show_url
    assert_response :success
  end
end
