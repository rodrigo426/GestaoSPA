class ProductCashierController < ApplicationController
  def index
  	@cashier = Cashier.new
  	@product_movement = ProductMovement.new

	  if @product_movement.save
	    format.html { 'Product movement was successfully created.' }
	  end
  end


  def create
    @product_movement = ProductMovement.new(product_movement_params)


  end
end
