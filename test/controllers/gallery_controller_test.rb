require "test_helper"

class GalleryControllerTest < ActionDispatch::IntegrationTest
  test "should get galleryIndex" do
    get gallery_galleryIndex_url
    assert_response :success
  end
end
