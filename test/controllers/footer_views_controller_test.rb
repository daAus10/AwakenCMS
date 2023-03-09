require "test_helper"

class FooterViewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @footer_view = footer_views(:one)
  end

  test "should get index" do
    get footer_views_url
    assert_response :success
  end

  test "should get new" do
    get new_footer_view_url
    assert_response :success
  end

  test "should create footer_view" do
    assert_difference("FooterView.count") do
      post footer_views_url, params: { footer_view: { brand_name: @footer_view.brand_name, friday: @footer_view.friday, group_title: @footer_view.group_title, monday: @footer_view.monday, saturday: @footer_view.saturday, sunday: @footer_view.sunday, thursday: @footer_view.thursday, tuesday: @footer_view.tuesday, wednesday: @footer_view.wednesday } }
    end

    assert_redirected_to footer_view_url(FooterView.last)
  end

  test "should show footer_view" do
    get footer_view_url(@footer_view)
    assert_response :success
  end

  test "should get edit" do
    get edit_footer_view_url(@footer_view)
    assert_response :success
  end

  test "should update footer_view" do
    patch footer_view_url(@footer_view), params: { footer_view: { brand_name: @footer_view.brand_name, friday: @footer_view.friday, group_title: @footer_view.group_title, monday: @footer_view.monday, saturday: @footer_view.saturday, sunday: @footer_view.sunday, thursday: @footer_view.thursday, tuesday: @footer_view.tuesday, wednesday: @footer_view.wednesday } }
    assert_redirected_to footer_view_url(@footer_view)
  end

  test "should destroy footer_view" do
    assert_difference("FooterView.count", -1) do
      delete footer_view_url(@footer_view)
    end

    assert_redirected_to footer_views_url
  end
end
