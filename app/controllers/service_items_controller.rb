class ServiceItemsController < ApplicationController
  before_action :set_service_item, only: %i[ show edit update destroy ]
  before_action :authorize_user,
    def authorize_user
      unless current_user
        redirect_to root_path, alert: "You must be an editor to access this page."
      end
    end

  # GET /service_items or /service_items.json
  def index
    @service_items = ServiceItem.all
  end

  # GET /service_items/1 or /service_items/1.json
  def show
  end

  # GET /service_items/new
  def new
    @service_item = ServiceItem.new
  end

  # GET /service_items/1/edit
  def edit
  end

  # POST /service_items or /service_items.json
  def create
    @service_item = ServiceItem.new(service_item_params)

    respond_to do |format|
      if @service_item.save
        format.html { redirect_to service_item_url(@service_item), notice: "Service item was successfully created." }
        format.json { render :show, status: :created, location: @service_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @service_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_items/1 or /service_items/1.json
  def update
    respond_to do |format|
      if @service_item.update(service_item_params)
        format.html { redirect_to service_item_url(@service_item), notice: "Service item was successfully updated." }
        format.json { render :show, status: :ok, location: @service_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @service_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_items/1 or /service_items/1.json
  def destroy
    @service_item.destroy

    respond_to do |format|
      format.html { redirect_to service_items_url, notice: "Service item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_item
      @service_item = ServiceItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_item_params
      params.require(:service_item).permit(:service_name, :time, :price, :description)
    end
end
