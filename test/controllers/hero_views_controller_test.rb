require "test_helper"

class HeroViewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hero_view = hero_views(:one)
  end

  test "should get index" do
    get hero_views_url
    assert_response :success
  end

  test "should get new" do
    get new_hero_view_url
    assert_response :success
  end

  test "should create hero_view" do
    assert_difference("HeroView.count") do
      post hero_views_url, params: { hero_view: { button: @hero_view.button, description: @hero_view.description, title: @hero_view.title } }
    end

    assert_redirected_to hero_view_url(HeroView.last)
  end

  test "should show hero_view" do
    get hero_view_url(@hero_view)
    assert_response :success
  end

  test "should get edit" do
    get edit_hero_view_url(@hero_view)
    assert_response :success
  end

  test "should update hero_view" do
    patch hero_view_url(@hero_view), params: { hero_view: { button: @hero_view.button, description: @hero_view.description, title: @hero_view.title } }
    assert_redirected_to hero_view_url(@hero_view)
  end

  test "should destroy hero_view" do
    assert_difference("HeroView.count", -1) do
      delete hero_view_url(@hero_view)
    end

    assert_redirected_to hero_views_url
  end
end
