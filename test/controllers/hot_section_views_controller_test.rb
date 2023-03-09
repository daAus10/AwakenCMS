require "test_helper"

class HotSectionViewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hot_section_view = hot_section_views(:one)
  end

  test "should get index" do
    get hot_section_views_url
    assert_response :success
  end

  test "should get new" do
    get new_hot_section_view_url
    assert_response :success
  end

  test "should create hot_section_view" do
    assert_difference("HotSectionView.count") do
      post hot_section_views_url, params: { hot_section_view: { description: @hot_section_view.description, isVisible: @hot_section_view.isVisible, link: @hot_section_view.link, title: @hot_section_view.title } }
    end

    assert_redirected_to hot_section_view_url(HotSectionView.last)
  end

  test "should show hot_section_view" do
    get hot_section_view_url(@hot_section_view)
    assert_response :success
  end

  test "should get edit" do
    get edit_hot_section_view_url(@hot_section_view)
    assert_response :success
  end

  test "should update hot_section_view" do
    patch hot_section_view_url(@hot_section_view), params: { hot_section_view: { description: @hot_section_view.description, isVisible: @hot_section_view.isVisible, link: @hot_section_view.link, title: @hot_section_view.title } }
    assert_redirected_to hot_section_view_url(@hot_section_view)
  end

  test "should destroy hot_section_view" do
    assert_difference("HotSectionView.count", -1) do
      delete hot_section_view_url(@hot_section_view)
    end

    assert_redirected_to hot_section_views_url
  end
end
