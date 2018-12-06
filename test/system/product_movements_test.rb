require "application_system_test_case"

class ProductMovementsTest < ApplicationSystemTestCase
  setup do
    @product_movement = product_movements(:one)
  end

  test "visiting the index" do
    visit product_movements_url
    assert_selector "h1", text: "Productmovements"
  end

  test "creating a Product movement" do
    visit product_movements_url
    click_on "New Productmovement"

    fill_in "Kind", with: @product_movement.kind
    fill_in "Price", with: @product_movement.price
    fill_in "Product", with: @product_movement.product_id
    fill_in "Quantity", with: @product_movement.quantity
    click_on "Create Product movement"

    assert_text "Product movement was successfully created"
    click_on "Back"
  end

  test "updating a Product movement" do
    visit product_movements_url
    click_on "Edit", match: :first

    fill_in "Kind", with: @product_movement.kind
    fill_in "Price", with: @product_movement.price
    fill_in "Product", with: @product_movement.product_id
    fill_in "Quantity", with: @product_movement.quantity
    click_on "Update Product movement"

    assert_text "Product movement was successfully updated"
    click_on "Back"
  end

  test "destroying a Product movement" do
    visit product_movements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product movement was successfully destroyed"
  end
end
