require "application_system_test_case"

class GalleryImagePostsTest < ApplicationSystemTestCase
  setup do
    @gallery_image_post = gallery_image_posts(:one)
  end

  test "visiting the index" do
    visit gallery_image_posts_url
    assert_selector "h1", text: "Gallery image posts"
  end

  test "should create gallery image post" do
    visit gallery_image_posts_url
    click_on "New gallery image post"

    click_on "Create Gallery image post"

    assert_text "Gallery image post was successfully created"
    click_on "Back"
  end

  test "should update Gallery image post" do
    visit gallery_image_post_url(@gallery_image_post)
    click_on "Edit this gallery image post", match: :first

    click_on "Update Gallery image post"

    assert_text "Gallery image post was successfully updated"
    click_on "Back"
  end

  test "should destroy Gallery image post" do
    visit gallery_image_post_url(@gallery_image_post)
    click_on "Destroy this gallery image post", match: :first

    assert_text "Gallery image post was successfully destroyed"
  end
end
