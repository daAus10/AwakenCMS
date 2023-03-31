require "application_system_test_case"

class ProductCategoriesTest < ApplicationSystemTestCase
  setup do
    @product_category = product_categories(:one)
  end

  test "visiting the index" do
    visit product_categories_url
    assert_selector "h1", text: "Product categories"
  end

  test "should create product category" do
    visit product_categories_url
    click_on "New product category"

    fill_in "Description", with: @product_category.description
    fill_in "Link", with: @product_category.link
    fill_in "Title", with: @product_category.title
    click_on "Create Product category"

    assert_text "Product category was successfully created"
    click_on "Back"
  end

  test "should update Product category" do
    visit product_category_url(@product_category)
    click_on "Edit this product category", match: :first

    fill_in "Description", with: @product_category.description
    fill_in "Link", with: @product_category.link
    fill_in "Title", with: @product_category.title
    click_on "Update Product category"

    assert_text "Product category was successfully updated"
    click_on "Back"
  end

  test "should destroy Product category" do
    visit product_category_url(@product_category)
    click_on "Destroy this product category", match: :first

    assert_text "Product category was successfully destroyed"
  end
end
