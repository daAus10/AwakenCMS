require "test_helper"

class ContactViewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact_view = contact_views(:one)
  end

  test "should get index" do
    get contact_views_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_view_url
    assert_response :success
  end

  test "should create contact_view" do
    assert_difference("ContactView.count") do
      post contact_views_url, params: { contact_view: { email: @contact_view.email, message: @contact_view.message, name: @contact_view.name } }
    end

    assert_redirected_to contact_view_url(ContactView.last)
  end

  test "should show contact_view" do
    get contact_view_url(@contact_view)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_view_url(@contact_view)
    assert_response :success
  end

  test "should update contact_view" do
    patch contact_view_url(@contact_view), params: { contact_view: { email: @contact_view.email, message: @contact_view.message, name: @contact_view.name } }
    assert_redirected_to contact_view_url(@contact_view)
  end

  test "should destroy contact_view" do
    assert_difference("ContactView.count", -1) do
      delete contact_view_url(@contact_view)
    end

    assert_redirected_to contact_views_url
  end
end
