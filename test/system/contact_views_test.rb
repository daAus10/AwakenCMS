require "application_system_test_case"

class ContactViewsTest < ApplicationSystemTestCase
  setup do
    @contact_view = contact_views(:one)
  end

  test "visiting the index" do
    visit contact_views_url
    assert_selector "h1", text: "Contact views"
  end

  test "should create contact view" do
    visit contact_views_url
    click_on "New contact view"

    fill_in "Email", with: @contact_view.email
    fill_in "Message", with: @contact_view.message
    fill_in "Name", with: @contact_view.name
    click_on "Create Contact view"

    assert_text "Contact view was successfully created"
    click_on "Back"
  end

  test "should update Contact view" do
    visit contact_view_url(@contact_view)
    click_on "Edit this contact view", match: :first

    fill_in "Email", with: @contact_view.email
    fill_in "Message", with: @contact_view.message
    fill_in "Name", with: @contact_view.name
    click_on "Update Contact view"

    assert_text "Contact view was successfully updated"
    click_on "Back"
  end

  test "should destroy Contact view" do
    visit contact_view_url(@contact_view)
    click_on "Destroy this contact view", match: :first

    assert_text "Contact view was successfully destroyed"
  end
end
