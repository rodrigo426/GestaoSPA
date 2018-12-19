require 'test_helper'

class ProductCashierControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get product_cashier_index_url
    assert_response :success
  end

end
