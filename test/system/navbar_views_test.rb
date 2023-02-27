require "application_system_test_case"

class NavbarViewsTest < ApplicationSystemTestCase
  setup do
    @navbar_view = navbar_views(:one)
  end

  test "visiting the index" do
    visit navbar_views_url
    assert_selector "h1", text: "Navbar views"
  end

  test "should create navbar view" do
    visit navbar_views_url
    click_on "New navbar view"

    fill_in "Brand name", with: @navbar_view.brand_name
    fill_in "Gallery link", with: @navbar_view.gallery_link
    fill_in "Link name1", with: @navbar_view.link_name1
    fill_in "Link name2", with: @navbar_view.link_name2
    fill_in "Link name3", with: @navbar_view.link_name3
    fill_in "Link name4", with: @navbar_view.link_name4
    fill_in "Services link", with: @navbar_view.services_link
    click_on "Create Navbar view"

    assert_text "Navbar view was successfully created"
    click_on "Back"
  end

  test "should update Navbar view" do
    visit navbar_view_url(@navbar_view)
    click_on "Edit this navbar view", match: :first

    fill_in "Brand name", with: @navbar_view.brand_name
    fill_in "Gallery link", with: @navbar_view.gallery_link
    fill_in "Link name1", with: @navbar_view.link_name1
    fill_in "Link name2", with: @navbar_view.link_name2
    fill_in "Link name3", with: @navbar_view.link_name3
    fill_in "Link name4", with: @navbar_view.link_name4
    fill_in "Services link", with: @navbar_view.services_link
    click_on "Update Navbar view"

    assert_text "Navbar view was successfully updated"
    click_on "Back"
  end

  test "should destroy Navbar view" do
    visit navbar_view_url(@navbar_view)
    click_on "Destroy this navbar view", match: :first

    assert_text "Navbar view was successfully destroyed"
  end
end
