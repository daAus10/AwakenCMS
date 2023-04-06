require "application_system_test_case"

class ReviewDisplaysTest < ApplicationSystemTestCase
  setup do
    @review_display = review_displays(:one)
  end

  test "visiting the index" do
    visit review_displays_url
    assert_selector "h1", text: "Review displays"
  end

  test "should create review display" do
    visit review_displays_url
    click_on "New review display"

    fill_in "Description", with: @review_display.description
    fill_in "Title", with: @review_display.title
    click_on "Create Review display"

    assert_text "Review display was successfully created"
    click_on "Back"
  end

  test "should update Review display" do
    visit review_display_url(@review_display)
    click_on "Edit this review display", match: :first

    fill_in "Description", with: @review_display.description
    fill_in "Title", with: @review_display.title
    click_on "Update Review display"

    assert_text "Review display was successfully updated"
    click_on "Back"
  end

  test "should destroy Review display" do
    visit review_display_url(@review_display)
    click_on "Destroy this review display", match: :first

    assert_text "Review display was successfully destroyed"
  end
end
