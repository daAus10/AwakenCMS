require "test_helper"

class ReviewDisplaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @review_display = review_displays(:one)
  end

  test "should get index" do
    get review_displays_url
    assert_response :success
  end

  test "should get new" do
    get new_review_display_url
    assert_response :success
  end

  test "should create review_display" do
    assert_difference("ReviewDisplay.count") do
      post review_displays_url, params: { review_display: { description: @review_display.description, title: @review_display.title } }
    end

    assert_redirected_to review_display_url(ReviewDisplay.last)
  end

  test "should show review_display" do
    get review_display_url(@review_display)
    assert_response :success
  end

  test "should get edit" do
    get edit_review_display_url(@review_display)
    assert_response :success
  end

  test "should update review_display" do
    patch review_display_url(@review_display), params: { review_display: { description: @review_display.description, title: @review_display.title } }
    assert_redirected_to review_display_url(@review_display)
  end

  test "should destroy review_display" do
    assert_difference("ReviewDisplay.count", -1) do
      delete review_display_url(@review_display)
    end

    assert_redirected_to review_displays_url
  end
end
