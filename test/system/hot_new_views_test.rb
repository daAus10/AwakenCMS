require "application_system_test_case"

class HotNewViewsTest < ApplicationSystemTestCase
  setup do
    @hot_new_view = hot_new_views(:one)
  end

  test "visiting the index" do
    visit hot_new_views_url
    assert_selector "h1", text: "Hot new views"
  end

  test "should create hot new view" do
    visit hot_new_views_url
    click_on "New hot new view"

    fill_in "Description", with: @hot_new_view.description
    check "Isvisible" if @hot_new_view.isVisible
    fill_in "Link", with: @hot_new_view.link
    fill_in "Title", with: @hot_new_view.title
    click_on "Create Hot new view"

    assert_text "Hot new view was successfully created"
    click_on "Back"
  end

  test "should update Hot new view" do
    visit hot_new_view_url(@hot_new_view)
    click_on "Edit this hot new view", match: :first

    fill_in "Description", with: @hot_new_view.description
    check "Isvisible" if @hot_new_view.isVisible
    fill_in "Link", with: @hot_new_view.link
    fill_in "Title", with: @hot_new_view.title
    click_on "Update Hot new view"

    assert_text "Hot new view was successfully updated"
    click_on "Back"
  end

  test "should destroy Hot new view" do
    visit hot_new_view_url(@hot_new_view)
    click_on "Destroy this hot new view", match: :first

    assert_text "Hot new view was successfully destroyed"
  end
end
