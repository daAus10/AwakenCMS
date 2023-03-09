require "application_system_test_case"

class ServiceViewCardsTest < ApplicationSystemTestCase
  setup do
    @service_view_card = service_view_cards(:one)
  end

  test "visiting the index" do
    visit service_view_cards_url
    assert_selector "h1", text: "Service view cards"
  end

  test "should create service view card" do
    visit service_view_cards_url
    click_on "New service view card"

    fill_in "Description", with: @service_view_card.description
    fill_in "Title", with: @service_view_card.title
    click_on "Create Service view card"

    assert_text "Service view card was successfully created"
    click_on "Back"
  end

  test "should update Service view card" do
    visit service_view_card_url(@service_view_card)
    click_on "Edit this service view card", match: :first

    fill_in "Description", with: @service_view_card.description
    fill_in "Title", with: @service_view_card.title
    click_on "Update Service view card"

    assert_text "Service view card was successfully updated"
    click_on "Back"
  end

  test "should destroy Service view card" do
    visit service_view_card_url(@service_view_card)
    click_on "Destroy this service view card", match: :first

    assert_text "Service view card was successfully destroyed"
  end
end
