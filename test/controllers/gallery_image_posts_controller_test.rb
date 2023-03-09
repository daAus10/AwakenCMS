require "test_helper"

class GalleryImagePostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gallery_image_post = gallery_image_posts(:one)
  end

  test "should get index" do
    get gallery_image_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_gallery_image_post_url
    assert_response :success
  end

  test "should create gallery_image_post" do
    assert_difference("GalleryImagePost.count") do
      post gallery_image_posts_url, params: { gallery_image_post: {  } }
    end

    assert_redirected_to gallery_image_post_url(GalleryImagePost.last)
  end

  test "should show gallery_image_post" do
    get gallery_image_post_url(@gallery_image_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_gallery_image_post_url(@gallery_image_post)
    assert_response :success
  end

  test "should update gallery_image_post" do
    patch gallery_image_post_url(@gallery_image_post), params: { gallery_image_post: {  } }
    assert_redirected_to gallery_image_post_url(@gallery_image_post)
  end

  test "should destroy gallery_image_post" do
    assert_difference("GalleryImagePost.count", -1) do
      delete gallery_image_post_url(@gallery_image_post)
    end

    assert_redirected_to gallery_image_posts_url
  end
end
