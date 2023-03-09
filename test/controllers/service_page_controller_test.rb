require "test_helper"

class ServicePageControllerTest < ActionDispatch::IntegrationTest
  test "should get serviceIndex" do
    get service_page_serviceIndex_url
    assert_response :success
  end
end
