class ProductCashierController < ApplicationController
  def index
  	@cashier = Cashier.new
  	@product_movement = ProductMovement.new
  end
end
