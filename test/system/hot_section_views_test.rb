require "application_system_test_case"

class HotSectionViewsTest < ApplicationSystemTestCase
  setup do
    @hot_section_view = hot_section_views(:one)
  end

  test "visiting the index" do
    visit hot_section_views_url
    assert_selector "h1", text: "Hot section views"
  end

  test "should create hot section view" do
    visit hot_section_views_url
    click_on "New hot section view"

    fill_in "Description", with: @hot_section_view.description
    check "Isvisible" if @hot_section_view.isVisible
    fill_in "Link", with: @hot_section_view.link
    fill_in "Title", with: @hot_section_view.title
    click_on "Create Hot section view"

    assert_text "Hot section view was successfully created"
    click_on "Back"
  end

  test "should update Hot section view" do
    visit hot_section_view_url(@hot_section_view)
    click_on "Edit this hot section view", match: :first

    fill_in "Description", with: @hot_section_view.description
    check "Isvisible" if @hot_section_view.isVisible
    fill_in "Link", with: @hot_section_view.link
    fill_in "Title", with: @hot_section_view.title
    click_on "Update Hot section view"

    assert_text "Hot section view was successfully updated"
    click_on "Back"
  end

  test "should destroy Hot section view" do
    visit hot_section_view_url(@hot_section_view)
    click_on "Destroy this hot section view", match: :first

    assert_text "Hot section view was successfully destroyed"
  end
end
