require "test_helper"

class ContactItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact_item = contact_items(:one)
  end

  test "should get index" do
    get contact_items_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_item_url
    assert_response :success
  end

  test "should create contact_item" do
    assert_difference("ContactItem.count") do
      post contact_items_url, params: { contact_item: { attachment: @contact_item.attachment, contact: @contact_item.contact, contactType: @contact_item.contactType, image: @contact_item.image, string: @contact_item.string } }
    end

    assert_redirected_to contact_item_url(ContactItem.last)
  end

  test "should show contact_item" do
    get contact_item_url(@contact_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_item_url(@contact_item)
    assert_response :success
  end

  test "should update contact_item" do
    patch contact_item_url(@contact_item), params: { contact_item: { attachment: @contact_item.attachment, contact: @contact_item.contact, contactType: @contact_item.contactType, image: @contact_item.image, string: @contact_item.string } }
    assert_redirected_to contact_item_url(@contact_item)
  end

  test "should destroy contact_item" do
    assert_difference("ContactItem.count", -1) do
      delete contact_item_url(@contact_item)
    end

    assert_redirected_to contact_items_url
  end
end
