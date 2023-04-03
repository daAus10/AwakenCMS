require "test_helper"

class ReviewViewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @review_view = review_views(:one)
  end

  test "should get index" do
    get review_views_url
    assert_response :success
  end

  test "should get new" do
    get new_review_view_url
    assert_response :success
  end

  test "should create review_view" do
    assert_difference("ReviewView.count") do
      post review_views_url, params: { review_view: { content: @review_view.content, title: @review_view.title } }
    end

    assert_redirected_to review_view_url(ReviewView.last)
  end

  test "should show review_view" do
    get review_view_url(@review_view)
    assert_response :success
  end

  test "should get edit" do
    get edit_review_view_url(@review_view)
    assert_response :success
  end

  test "should update review_view" do
    patch review_view_url(@review_view), params: { review_view: { content: @review_view.content, title: @review_view.title } }
    assert_redirected_to review_view_url(@review_view)
  end

  test "should destroy review_view" do
    assert_difference("ReviewView.count", -1) do
      delete review_view_url(@review_view)
    end

    assert_redirected_to review_views_url
  end
end
