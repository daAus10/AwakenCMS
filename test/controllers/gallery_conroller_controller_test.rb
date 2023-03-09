require "test_helper"

class GalleryConrollerControllerTest < ActionDispatch::IntegrationTest
  test "should get galleryIndex" do
    get gallery_conroller_galleryIndex_url
    assert_response :success
  end
end
