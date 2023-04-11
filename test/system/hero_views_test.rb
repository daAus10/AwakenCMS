require "application_system_test_case"

class HeroViewsTest < ApplicationSystemTestCase
  setup do
    @hero_view = hero_views(:one)
  end

  test "visiting the index" do
    visit hero_views_url
    assert_selector "h1", text: "Hero views"
  end

  test "should create hero view" do
    visit hero_views_url
    click_on "New hero view"

    fill_in "Button", with: @hero_view.button
    fill_in "Description", with: @hero_view.description
    fill_in "Title", with: @hero_view.title
    click_on "Create Hero view"

    assert_text "Hero view was successfully created"
    click_on "Back"
  end

  test "should update Hero view" do
    visit hero_view_url(@hero_view)
    click_on "Edit this hero view", match: :first

    fill_in "Button", with: @hero_view.button
    fill_in "Description", with: @hero_view.description
    fill_in "Title", with: @hero_view.title
    click_on "Update Hero view"

    assert_text "Hero view was successfully updated"
    click_on "Back"
  end

  test "should destroy Hero view" do
    visit hero_view_url(@hero_view)
    click_on "Destroy this hero view", match: :first

    assert_text "Hero view was successfully destroyed"
  end
end
