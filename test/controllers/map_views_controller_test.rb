require "test_helper"

class MapViewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @map_view = map_views(:one)
  end

  test "should get index" do
    get map_views_url
    assert_response :success
  end

  test "should get new" do
    get new_map_view_url
    assert_response :success
  end

  test "should create map_view" do
    assert_difference("MapView.count") do
      post map_views_url, params: { map_view: { url: @map_view.url } }
    end

    assert_redirected_to map_view_url(MapView.last)
  end

  test "should show map_view" do
    get map_view_url(@map_view)
    assert_response :success
  end

  test "should get edit" do
    get edit_map_view_url(@map_view)
    assert_response :success
  end

  test "should update map_view" do
    patch map_view_url(@map_view), params: { map_view: { url: @map_view.url } }
    assert_redirected_to map_view_url(@map_view)
  end

  test "should destroy map_view" do
    assert_difference("MapView.count", -1) do
      delete map_view_url(@map_view)
    end

    assert_redirected_to map_views_url
  end
end
