require "test_helper"

class HotNewViewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hot_new_view = hot_new_views(:one)
  end

  test "should get index" do
    get hot_new_views_url
    assert_response :success
  end

  test "should get new" do
    get new_hot_new_view_url
    assert_response :success
  end

  test "should create hot_new_view" do
    assert_difference("HotNewView.count") do
      post hot_new_views_url, params: { hot_new_view: { description: @hot_new_view.description, isVisible: @hot_new_view.isVisible, link: @hot_new_view.link, title: @hot_new_view.title } }
    end

    assert_redirected_to hot_new_view_url(HotNewView.last)
  end

  test "should show hot_new_view" do
    get hot_new_view_url(@hot_new_view)
    assert_response :success
  end

  test "should get edit" do
    get edit_hot_new_view_url(@hot_new_view)
    assert_response :success
  end

  test "should update hot_new_view" do
    patch hot_new_view_url(@hot_new_view), params: { hot_new_view: { description: @hot_new_view.description, isVisible: @hot_new_view.isVisible, link: @hot_new_view.link, title: @hot_new_view.title } }
    assert_redirected_to hot_new_view_url(@hot_new_view)
  end

  test "should destroy hot_new_view" do
    assert_difference("HotNewView.count", -1) do
      delete hot_new_view_url(@hot_new_view)
    end

    assert_redirected_to hot_new_views_url
  end
end
