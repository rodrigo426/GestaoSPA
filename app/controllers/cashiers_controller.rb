class CashiersController < ApplicationController
  before_action :set_cashier, only: [:show, :edit, :update, :destroy]

  # GET /cashiers
  # GET /cashiers.json
  def index
    @cashiers = Cashier.all
    @cashier = Cashier.new
    @cashier.item.build
    @item = Item.new
    @users = User.all
    authorize @users

    respond_to do |format|
      format.html
      format.json { render json: CashiersDatatable.new(view_context) }
    end 
  end

  # GET /cashiers/1
  # GET /cashiers/1.json
  def show
    @users = User.all
    authorize @users
  end

  # GET /cashiers/new
  def new
    @cashier = Cashier.new
    @client = Client.all
  end

  # GET /cashiers/1/edit
  def edit
  end
  

  def produtos
    @cashier = Cashier.new
    @product_movement = ProductMovement.new
  end
  # POST /cashiers
  # POST /cashiers.json
  def create
    @cashier = Cashier.new(cashier_params)

    respond_to do |format|
      if @cashier.save
        format.html { redirect_to @cashier, notice: 'Comanda Cadastrada!' }
        format.json { render :show, status: :created, location: @cashier }
      else
        format.html { render :new }
        format.json { render json: @cashier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cashiers/1
  # PATCH/PUT /cashiers/1.json
  def update
    respond_to do |format|
      if @cashier.update(cashier_params)
        format.html { redirect_to '/cashiers', notice: 'Comanda Atualizada!' }
        format.json { render :show, status: :ok, location: @cashier }
      else
        format.html { render :edit }
        format.json { render json: @cashier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cashiers/1
  # DELETE /cashiers/1.json
  def destroy
    @cashier.destroy
    respond_to do |format|
      format.html { redirect_to cashiers_url, notice: 'Comanda Removida!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cashier
      @cashier = Cashier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cashier_params
      cp = params.require(:cashier).permit(:client_id, :user_id, :price, :paymment , :paid_value, :paid, :discount, :therapist_value , items_attributes: [:id, :client, :user, :therapy, :description, :_destroy], product_movements_attributes: [:id, :product_id, :kind, :price, :quantity, :user_id, :_destroy], pagamento_caixa_attributes: [:id, :pagamento_id, :value, :_destroy])
      cp[:therapist_value] = params[:cashier][:therapist_value].to_d
      cp[:discount] = params[:cashier][:discount].to_i
      cp[:paymment] = params[:cashier][:paymment].to_i
      cp[:paid] = params[:cashier][:paid].to_i
      return cp
    end
end
