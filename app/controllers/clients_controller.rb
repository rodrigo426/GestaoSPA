 class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  #after_action :verify_authorized, except: :index
  #after_action :verify_policy_scoped, only: :index

  # GET /clients
  # GET /clients.json
  def index
    #@clients = policy_scope(Client).reverse
    @clients = Client.all
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
  end


  def autocomplete
    render json: Autocomplete::Clients.new(view_context)
  end




  # GET /clients/new
  def new
    @client = Client.new
    @client.build_address
    @client.build_record
  end

  # GET /clients/1/edit
  def edit
    #@client.phone_clients.build
    @client = Client.find(params[:id])
    if @client.address.blank?
      @client.build_address
    end
    if @client.record.blank?
      @client.build_record
    end
  end

  # POST /clients
  # POST /clients.json
  def create
    @client = Client.new(client_params)

    respond_to do |format|
      if @client.save
        format.html { redirect_to @client, notice: 'Client was successfully created.' }
        format.json { render :show, status: :created, location: @client }
      else
        format.html { render :new }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients/1
  # PATCH/PUT /clients/1.json
  def update
    respond_to do |format|
      if @client.update(client_params)
        format.html { redirect_to @client, notice: 'Client was successfully updated.' }
        format.json { render :show, status: :ok, location: @client }
      else
        format.html { render :edit }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    @client.destroy
    respond_to do |format|
      format.html { redirect_to clients_url, notice: 'Client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
      #authorize @client
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_params
      params.require(:client).permit(:name, :birthdate, :email, :occupation, :indication, :credit, 
        phone_clients_attributes: [:id, :number, :_destroy], 
        address_attributes: [:id, :state, :city, :street],
        record_attributes: [:id, :cream_allergy, :blood_pressure, :uses_pacemaker, :diabetes, :surgery, :surgery_where, :accident_fracture, :accident_where, :bone_disease, :medicine, :medicine_which, :faint_seizure, :woman_pregnant, :woman_contraceptive, :pains])
    end
end
