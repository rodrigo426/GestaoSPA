class ProductMovementsController < ApplicationController
  before_action :set_product_movement, only: [:show, :edit, :update, :destroy]

  # GET /product_movements
  # GET /product_movements.json
  def index
    @product_movements = ProductMovement.all
  end

  # GET /product_movements/1
  # GET /product_movements/1.json
  def show
  end

  # GET /product_movements/new
  def new
    @product_movement = ProductMovement.new
  end

  # GET /product_movements/1/edit
  def edit
  end

  # POST /product_movements
  # POST /product_movements.json
  def create
    @product_movement = ProductMovement.new(product_movement_params)

    respond_to do |format|
      if @product_movement.save
        format.html { redirect_to @product_movement, notice: 'Product movement was successfully created.' }
        format.json { render :show, status: :created, location: @product_movement }
      else
        format.html { render :new }
        format.json { render json: @product_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_movements/1
  # PATCH/PUT /product_movements/1.json
  def update
    respond_to do |format|
      if @product_movement.update(product_movement_params)
        format.html { redirect_to @product_movement, notice: 'Product movement was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_movement }
      else
        format.html { render :edit }
        format.json { render json: @product_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_movements/1
  # DELETE /product_movements/1.json
  def destroy
    @product_movement.destroy
    respond_to do |format|
      format.html { redirect_to product_movements_url, notice: 'Product movement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_movement
      @product_movement = ProductMovement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_movement_params
      params.require(:product_movement).permit(:id, :product_id, :kind, :price, :quantity, :_destroy)
    end
end
