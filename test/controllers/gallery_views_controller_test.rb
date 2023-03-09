require "test_helper"

class GalleryViewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gallery_view = gallery_views(:one)
  end

  test "should get index" do
    get gallery_views_url
    assert_response :success
  end

  test "should get new" do
    get new_gallery_view_url
    assert_response :success
  end

  test "should create gallery_view" do
    assert_difference("GalleryView.count") do
      post gallery_views_url, params: { gallery_view: { description: @gallery_view.description, external_link: @gallery_view.external_link, title: @gallery_view.title } }
    end

    assert_redirected_to gallery_view_url(GalleryView.last)
  end

  test "should show gallery_view" do
    get gallery_view_url(@gallery_view)
    assert_response :success
  end

  test "should get edit" do
    get edit_gallery_view_url(@gallery_view)
    assert_response :success
  end

  test "should update gallery_view" do
    patch gallery_view_url(@gallery_view), params: { gallery_view: { description: @gallery_view.description, external_link: @gallery_view.external_link, title: @gallery_view.title } }
    assert_redirected_to gallery_view_url(@gallery_view)
  end

  test "should destroy gallery_view" do
    assert_difference("GalleryView.count", -1) do
      delete gallery_view_url(@gallery_view)
    end

    assert_redirected_to gallery_views_url
  end
end
