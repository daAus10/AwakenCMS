require "application_system_test_case"

class MapViewsTest < ApplicationSystemTestCase
  setup do
    @map_view = map_views(:one)
  end

  test "visiting the index" do
    visit map_views_url
    assert_selector "h1", text: "Map views"
  end

  test "should create map view" do
    visit map_views_url
    click_on "New map view"

    fill_in "Url", with: @map_view.url
    click_on "Create Map view"

    assert_text "Map view was successfully created"
    click_on "Back"
  end

  test "should update Map view" do
    visit map_view_url(@map_view)
    click_on "Edit this map view", match: :first

    fill_in "Url", with: @map_view.url
    click_on "Update Map view"

    assert_text "Map view was successfully updated"
    click_on "Back"
  end

  test "should destroy Map view" do
    visit map_view_url(@map_view)
    click_on "Destroy this map view", match: :first

    assert_text "Map view was successfully destroyed"
  end
end
