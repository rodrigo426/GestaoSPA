require 'test_helper'

class ProductMovmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_movment = product_movments(:one)
  end

  test "should get index" do
    get product_movments_url
    assert_response :success
  end

  test "should get new" do
    get new_product_movment_url
    assert_response :success
  end

  test "should create product_movment" do
    assert_difference('ProductMovment.count') do
      post product_movments_url, params: { product_movment: { kind: @product_movment.kind, price: @product_movment.price, product_id: @product_movment.product_id, quantity: @product_movment.quantity } }
    end

    assert_redirected_to product_movment_url(ProductMovment.last)
  end

  test "should show product_movment" do
    get product_movment_url(@product_movment)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_movment_url(@product_movment)
    assert_response :success
  end

  test "should update product_movment" do
    patch product_movment_url(@product_movment), params: { product_movment: { kind: @product_movment.kind, price: @product_movment.price, product_id: @product_movment.product_id, quantity: @product_movment.quantity } }
    assert_redirected_to product_movment_url(@product_movment)
  end

  test "should destroy product_movment" do
    assert_difference('ProductMovment.count', -1) do
      delete product_movment_url(@product_movment)
    end

    assert_redirected_to product_movments_url
  end
end
