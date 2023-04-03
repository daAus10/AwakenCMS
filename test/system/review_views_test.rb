require "application_system_test_case"

class ReviewViewsTest < ApplicationSystemTestCase
  setup do
    @review_view = review_views(:one)
  end

  test "visiting the index" do
    visit review_views_url
    assert_selector "h1", text: "Review views"
  end

  test "should create review view" do
    visit review_views_url
    click_on "New review view"

    fill_in "Content", with: @review_view.content
    fill_in "Title", with: @review_view.title
    click_on "Create Review view"

    assert_text "Review view was successfully created"
    click_on "Back"
  end

  test "should update Review view" do
    visit review_view_url(@review_view)
    click_on "Edit this review view", match: :first

    fill_in "Content", with: @review_view.content
    fill_in "Title", with: @review_view.title
    click_on "Update Review view"

    assert_text "Review view was successfully updated"
    click_on "Back"
  end

  test "should destroy Review view" do
    visit review_view_url(@review_view)
    click_on "Destroy this review view", match: :first

    assert_text "Review view was successfully destroyed"
  end
end
