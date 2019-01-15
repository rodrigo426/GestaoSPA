class ProductCashierController < ApplicationController
  def index
  	@cashier = Cashier.new
  	@product_movement = ProductMovement.new
    @product_movements = ProductMovement.all

	  if @product_movement.save
	    format.html { 'Venda concluida!' }
	  end
  end


  def create
    @product_movement = ProductMovement.new(product_movement_params)
  end

end
