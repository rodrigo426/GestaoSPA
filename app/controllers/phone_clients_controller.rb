class PhoneClientsController < ApplicationController
  before_action :set_phone_client, only: [:show, :edit, :update, :destroy]

  # GET /phone_clients
  # GET /phone_clients.json
  def index
    @phone_clients = PhoneClient.all
  end

  # GET /phone_clients/1
  # GET /phone_clients/1.json
  def show
  end

  # GET /phone_clients/new
  def new
    @phone_client = PhoneClient.new
  end

  # GET /phone_clients/1/edit
  def edit
  end

  # POST /phone_clients
  # POST /phone_clients.json
  def create
    @phone_client = PhoneClient.new(phone_client_params)

    respond_to do |format|
      if @phone_client.save
        format.html { redirect_to @phone_client, notice: 'Phone client was successfully created.' }
        format.json { render :show, status: :created, location: @phone_client }
      else
        format.html { render :new }
        format.json { render json: @phone_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phone_clients/1
  # PATCH/PUT /phone_clients/1.json
  def update
    respond_to do |format|
      if @phone_client.update(phone_client_params)
        format.html { redirect_to @phone_client, notice: 'Phone client was successfully updated.' }
        format.json { render :show, status: :ok, location: @phone_client }
      else
        format.html { render :edit }
        format.json { render json: @phone_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phone_clients/1
  # DELETE /phone_clients/1.json
  def destroy
    @phone_client.destroy
    respond_to do |format|
      format.html { redirect_to phone_clients_url, notice: 'Phone client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone_client
      @phone_client = PhoneClient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phone_client_params
      params.require(:phone_client).permit(:number, :client_id)
    end
end
