class ServiceViewCardsController < ApplicationController
  before_action :set_service_view_card, only: %i[ show edit update destroy ]

  before_action :authorize_user,
    def authorize_user
      unless current_user
        redirect_to root_path, alert: "You must be an editor to access this page."
      end
    end

  # GET /service_view_cards or /service_view_cards.json


  def index
    @service_view_cards = ServiceViewCard.all
    @product_categories = ProductCategory.all # Fetch all Product Categories
  end

  # GET /service_view_cards/1 or /service_view_cards/1.json
  def show
  end

  # GET /service_view_cards/new
  def new
    @service_view_card = ServiceViewCard.new
  end

  # GET /service_view_cards/1/edit
  def edit
  end

  # POST /service_view_cards or /service_view_cards.json
  def create
    @service_view_card = ServiceViewCard.new(service_view_card_params)

    respond_to do |format|
      if @service_view_card.save
        format.html { redirect_to service_view_card_url(@service_view_card), notice: "Service view card was successfully created." }
        format.json { render :show, status: :created, location: @service_view_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @service_view_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_view_cards/1 or /service_view_cards/1.json
  def update
    respond_to do |format|
      if @service_view_card.update(service_view_card_params)
        format.html { redirect_to service_view_card_url(@service_view_card), notice: "Service view card was successfully updated." }
        format.json { render :show, status: :ok, location: @service_view_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @service_view_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_view_cards/1 or /service_view_cards/1.json
  def destroy
    @service_view_card.destroy

    respond_to do |format|
      format.html { redirect_to service_view_cards_url, notice: "Service view card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_view_card
      @service_view_card = ServiceViewCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_view_card_params
      params.require(:service_view_card).permit(:title, :description)
    end
end
