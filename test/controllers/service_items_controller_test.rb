require "test_helper"

class ServiceItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_item = service_items(:one)
  end

  test "should get index" do
    get service_items_url
    assert_response :success
  end

  test "should get new" do
    get new_service_item_url
    assert_response :success
  end

  test "should create service_item" do
    assert_difference("ServiceItem.count") do
      post service_items_url, params: { service_item: { description: @service_item.description, price: @service_item.price, service_name: @service_item.service_name, time: @service_item.time } }
    end

    assert_redirected_to service_item_url(ServiceItem.last)
  end

  test "should show service_item" do
    get service_item_url(@service_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_item_url(@service_item)
    assert_response :success
  end

  test "should update service_item" do
    patch service_item_url(@service_item), params: { service_item: { description: @service_item.description, price: @service_item.price, service_name: @service_item.service_name, time: @service_item.time } }
    assert_redirected_to service_item_url(@service_item)
  end

  test "should destroy service_item" do
    assert_difference("ServiceItem.count", -1) do
      delete service_item_url(@service_item)
    end

    assert_redirected_to service_items_url
  end
end
