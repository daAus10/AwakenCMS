require "test_helper"

class NavbarViewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @navbar_view = navbar_views(:one)
  end

  test "should get index" do
    get navbar_views_url
    assert_response :success
  end

  test "should get new" do
    get new_navbar_view_url
    assert_response :success
  end

  test "should create navbar_view" do
    assert_difference("NavbarView.count") do
      post navbar_views_url, params: { navbar_view: { brand_name: @navbar_view.brand_name, gallery_link: @navbar_view.gallery_link, link_name1: @navbar_view.link_name1, link_name2: @navbar_view.link_name2, link_name3: @navbar_view.link_name3, link_name4: @navbar_view.link_name4, services_link: @navbar_view.services_link } }
    end

    assert_redirected_to navbar_view_url(NavbarView.last)
  end

  test "should show navbar_view" do
    get navbar_view_url(@navbar_view)
    assert_response :success
  end

  test "should get edit" do
    get edit_navbar_view_url(@navbar_view)
    assert_response :success
  end

  test "should update navbar_view" do
    patch navbar_view_url(@navbar_view), params: { navbar_view: { brand_name: @navbar_view.brand_name, gallery_link: @navbar_view.gallery_link, link_name1: @navbar_view.link_name1, link_name2: @navbar_view.link_name2, link_name3: @navbar_view.link_name3, link_name4: @navbar_view.link_name4, services_link: @navbar_view.services_link } }
    assert_redirected_to navbar_view_url(@navbar_view)
  end

  test "should destroy navbar_view" do
    assert_difference("NavbarView.count", -1) do
      delete navbar_view_url(@navbar_view)
    end

    assert_redirected_to navbar_views_url
  end
end
