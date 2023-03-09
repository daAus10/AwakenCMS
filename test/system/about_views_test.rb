require "application_system_test_case"

class AboutViewsTest < ApplicationSystemTestCase
  setup do
    @about_view = about_views(:one)
  end

  test "visiting the index" do
    visit about_views_url
    assert_selector "h1", text: "About views"
  end

  test "should create about view" do
    visit about_views_url
    click_on "New about view"

    fill_in "About link", with: @about_view.about_link
    fill_in "Description", with: @about_view.description
    fill_in "Title", with: @about_view.title
    click_on "Create About view"

    assert_text "About view was successfully created"
    click_on "Back"
  end

  test "should update About view" do
    visit about_view_url(@about_view)
    click_on "Edit this about view", match: :first

    fill_in "About link", with: @about_view.about_link
    fill_in "Description", with: @about_view.description
    fill_in "Title", with: @about_view.title
    click_on "Update About view"

    assert_text "About view was successfully updated"
    click_on "Back"
  end

  test "should destroy About view" do
    visit about_view_url(@about_view)
    click_on "Destroy this about view", match: :first

    assert_text "About view was successfully destroyed"
  end
end
