require "application_system_test_case"

class ProductMovmentsTest < ApplicationSystemTestCase
  setup do
    @product_movment = product_movments(:one)
  end

  test "visiting the index" do
    visit product_movments_url
    assert_selector "h1", text: "Productmovments"
  end

  test "creating a Product movment" do
    visit product_movments_url
    click_on "New Productmovment"

    fill_in "Kind", with: @product_movment.kind
    fill_in "Price", with: @product_movment.price
    fill_in "Product", with: @product_movment.product_id
    fill_in "Quantity", with: @product_movment.quantity
    click_on "Create Product movment"

    assert_text "Product movment was successfully created"
    click_on "Back"
  end

  test "updating a Product movment" do
    visit product_movments_url
    click_on "Edit", match: :first

    fill_in "Kind", with: @product_movment.kind
    fill_in "Price", with: @product_movment.price
    fill_in "Product", with: @product_movment.product_id
    fill_in "Quantity", with: @product_movment.quantity
    click_on "Update Product movment"

    assert_text "Product movment was successfully updated"
    click_on "Back"
  end

  test "destroying a Product movment" do
    visit product_movments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product movment was successfully destroyed"
  end
end
