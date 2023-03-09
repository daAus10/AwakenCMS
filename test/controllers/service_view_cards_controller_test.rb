require "test_helper"

class ServiceViewCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_view_card = service_view_cards(:one)
  end

  test "should get index" do
    get service_view_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_service_view_card_url
    assert_response :success
  end

  test "should create service_view_card" do
    assert_difference("ServiceViewCard.count") do
      post service_view_cards_url, params: { service_view_card: { description: @service_view_card.description, title: @service_view_card.title } }
    end

    assert_redirected_to service_view_card_url(ServiceViewCard.last)
  end

  test "should show service_view_card" do
    get service_view_card_url(@service_view_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_view_card_url(@service_view_card)
    assert_response :success
  end

  test "should update service_view_card" do
    patch service_view_card_url(@service_view_card), params: { service_view_card: { description: @service_view_card.description, title: @service_view_card.title } }
    assert_redirected_to service_view_card_url(@service_view_card)
  end

  test "should destroy service_view_card" do
    assert_difference("ServiceViewCard.count", -1) do
      delete service_view_card_url(@service_view_card)
    end

    assert_redirected_to service_view_cards_url
  end
end
