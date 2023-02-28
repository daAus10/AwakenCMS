require "application_system_test_case"

class GalleryViewsTest < ApplicationSystemTestCase
  setup do
    @gallery_view = gallery_views(:one)
  end

  test "visiting the index" do
    visit gallery_views_url
    assert_selector "h1", text: "Gallery views"
  end

  test "should create gallery view" do
    visit gallery_views_url
    click_on "New gallery view"

    fill_in "Description", with: @gallery_view.description
    fill_in "External link", with: @gallery_view.external_link
    fill_in "Title", with: @gallery_view.title
    click_on "Create Gallery view"

    assert_text "Gallery view was successfully created"
    click_on "Back"
  end

  test "should update Gallery view" do
    visit gallery_view_url(@gallery_view)
    click_on "Edit this gallery view", match: :first

    fill_in "Description", with: @gallery_view.description
    fill_in "External link", with: @gallery_view.external_link
    fill_in "Title", with: @gallery_view.title
    click_on "Update Gallery view"

    assert_text "Gallery view was successfully updated"
    click_on "Back"
  end

  test "should destroy Gallery view" do
    visit gallery_view_url(@gallery_view)
    click_on "Destroy this gallery view", match: :first

    assert_text "Gallery view was successfully destroyed"
  end
end
