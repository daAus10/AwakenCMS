require "application_system_test_case"

class ContactItemsTest < ApplicationSystemTestCase
  setup do
    @contact_item = contact_items(:one)
  end

  test "visiting the index" do
    visit contact_items_url
    assert_selector "h1", text: "Contact items"
  end

  test "should create contact item" do
    visit contact_items_url
    click_on "New contact item"

    fill_in "Attachment", with: @contact_item.attachment
    fill_in "Contact", with: @contact_item.contact
    fill_in "Contacttype", with: @contact_item.contactType
    fill_in "Image", with: @contact_item.image
    fill_in "String", with: @contact_item.string
    click_on "Create Contact item"

    assert_text "Contact item was successfully created"
    click_on "Back"
  end

  test "should update Contact item" do
    visit contact_item_url(@contact_item)
    click_on "Edit this contact item", match: :first

    fill_in "Attachment", with: @contact_item.attachment
    fill_in "Contact", with: @contact_item.contact
    fill_in "Contacttype", with: @contact_item.contactType
    fill_in "Image", with: @contact_item.image
    fill_in "String", with: @contact_item.string
    click_on "Update Contact item"

    assert_text "Contact item was successfully updated"
    click_on "Back"
  end

  test "should destroy Contact item" do
    visit contact_item_url(@contact_item)
    click_on "Destroy this contact item", match: :first

    assert_text "Contact item was successfully destroyed"
  end
end
