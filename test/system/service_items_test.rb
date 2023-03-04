require "application_system_test_case"

class ServiceItemsTest < ApplicationSystemTestCase
  setup do
    @service_item = service_items(:one)
  end

  test "visiting the index" do
    visit service_items_url
    assert_selector "h1", text: "Service items"
  end

  test "should create service item" do
    visit service_items_url
    click_on "New service item"

    fill_in "Description", with: @service_item.description
    fill_in "Price", with: @service_item.price
    fill_in "Service name", with: @service_item.service_name
    fill_in "Time", with: @service_item.time
    click_on "Create Service item"

    assert_text "Service item was successfully created"
    click_on "Back"
  end

  test "should update Service item" do
    visit service_item_url(@service_item)
    click_on "Edit this service item", match: :first

    fill_in "Description", with: @service_item.description
    fill_in "Price", with: @service_item.price
    fill_in "Service name", with: @service_item.service_name
    fill_in "Time", with: @service_item.time
    click_on "Update Service item"

    assert_text "Service item was successfully updated"
    click_on "Back"
  end

  test "should destroy Service item" do
    visit service_item_url(@service_item)
    click_on "Destroy this service item", match: :first

    assert_text "Service item was successfully destroyed"
  end
end
