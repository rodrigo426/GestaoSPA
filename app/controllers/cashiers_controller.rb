#require 'user.rb'
require 'therapy.rb'
require 'client.rb'
class CashiersController < ApplicationController
  before_action :set_cashier, only: [:show, :edit, :update, :destroy]

  # GET /cashiers
  # GET /cashiers.json
  def index
    @cashiers = Cashier.all
    @cashier = Cashier.new
    #@user = User.all
    @therapy = Therapy.all
    @client = Client.all
  end

  # GET /cashiers/1
  # GET /cashiers/1.json
  def show
  end

  # GET /cashiers/new
  def new
    @cashier = Cashier.new
    @client = Client.all
  end

  # GET /cashiers/1/edit
  def edit
    @client = Client.all
  end

  # POST /cashiers
  # POST /cashiers.json
  def create
    @cashier = Cashier.new(cashier_params)

    respond_to do |format|
      if @cashier.save
        format.html { redirect_to @cashier, notice: 'Cashier was successfully created.' }
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
        format.html { redirect_to @cashier, notice: 'Cashier was successfully updated.' }
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
      format.html { redirect_to cashiers_url, notice: 'Cashier was successfully destroyed.' }
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
      cp = params.require(:cashier).permit(:price, :paymment, :paid_value, :paid)
      cp[:paymment] = params[:cashier][:paymment].to_i
      cp[:paid] = params[:cashier][:paid].to_i
      return cp
    end
end
