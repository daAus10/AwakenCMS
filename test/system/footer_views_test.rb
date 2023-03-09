require "application_system_test_case"

class FooterViewsTest < ApplicationSystemTestCase
  setup do
    @footer_view = footer_views(:one)
  end

  test "visiting the index" do
    visit footer_views_url
    assert_selector "h1", text: "Footer views"
  end

  test "should create footer view" do
    visit footer_views_url
    click_on "New footer view"

    fill_in "Brand name", with: @footer_view.brand_name
    fill_in "Friday", with: @footer_view.friday
    fill_in "Group title", with: @footer_view.group_title
    fill_in "Monday", with: @footer_view.monday
    fill_in "Saturday", with: @footer_view.saturday
    fill_in "Sunday", with: @footer_view.sunday
    fill_in "Thursday", with: @footer_view.thursday
    fill_in "Tuesday", with: @footer_view.tuesday
    fill_in "Wednesday", with: @footer_view.wednesday
    click_on "Create Footer view"

    assert_text "Footer view was successfully created"
    click_on "Back"
  end

  test "should update Footer view" do
    visit footer_view_url(@footer_view)
    click_on "Edit this footer view", match: :first

    fill_in "Brand name", with: @footer_view.brand_name
    fill_in "Friday", with: @footer_view.friday
    fill_in "Group title", with: @footer_view.group_title
    fill_in "Monday", with: @footer_view.monday
    fill_in "Saturday", with: @footer_view.saturday
    fill_in "Sunday", with: @footer_view.sunday
    fill_in "Thursday", with: @footer_view.thursday
    fill_in "Tuesday", with: @footer_view.tuesday
    fill_in "Wednesday", with: @footer_view.wednesday
    click_on "Update Footer view"

    assert_text "Footer view was successfully updated"
    click_on "Back"
  end

  test "should destroy Footer view" do
    visit footer_view_url(@footer_view)
    click_on "Destroy this footer view", match: :first

    assert_text "Footer view was successfully destroyed"
  end
end
