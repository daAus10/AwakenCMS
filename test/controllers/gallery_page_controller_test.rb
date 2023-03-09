require "test_helper"

class GalleryPageControllerTest < ActionDispatch::IntegrationTest
  test "should get galleryIndex" do
    get gallery_page_galleryIndex_url
    assert_response :success
  end
end
