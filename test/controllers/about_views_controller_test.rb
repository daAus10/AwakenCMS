require "test_helper"

class AboutViewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @about_view = about_views(:one)
  end

  test "should get index" do
    get about_views_url
    assert_response :success
  end

  test "should get new" do
    get new_about_view_url
    assert_response :success
  end

  test "should create about_view" do
    assert_difference("AboutView.count") do
      post about_views_url, params: { about_view: { about_link: @about_view.about_link, description: @about_view.description, title: @about_view.title } }
    end

    assert_redirected_to about_view_url(AboutView.last)
  end

  test "should show about_view" do
    get about_view_url(@about_view)
    assert_response :success
  end

  test "should get edit" do
    get edit_about_view_url(@about_view)
    assert_response :success
  end

  test "should update about_view" do
    patch about_view_url(@about_view), params: { about_view: { about_link: @about_view.about_link, description: @about_view.description, title: @about_view.title } }
    assert_redirected_to about_view_url(@about_view)
  end

  test "should destroy about_view" do
    assert_difference("AboutView.count", -1) do
      delete about_view_url(@about_view)
    end

    assert_redirected_to about_views_url
  end
end
