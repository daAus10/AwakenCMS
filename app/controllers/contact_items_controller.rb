class ContactItemsController < ApplicationController
  before_action :set_contact_item, only: %i[ show edit update destroy ]
  before_action :authorize_user,
    def authorize_user
      unless current_user
        redirect_to root_path, alert: "You must be an editor to access this page."
      end
    end

  # GET /contact_items or /contact_items.json
  def index
    @contact_items = ContactItem.all
  end

  # GET /contact_items/1 or /contact_items/1.json
  def show
  end

  # GET /contact_items/new
  def new
    @contact_item = ContactItem.new
  end

  # GET /contact_items/1/edit
  def edit
  end

  # POST /contact_items or /contact_items.json
  def create
    @contact_item = ContactItem.new(contact_item_params)

    respond_to do |format|
      if @contact_item.save
        format.html { redirect_to contact_item_url(@contact_item), notice: "Contact item was successfully created." }
        format.json { render :show, status: :created, location: @contact_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contact_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_items/1 or /contact_items/1.json
  def update
    respond_to do |format|
      if @contact_item.update(contact_item_params)
        format.html { redirect_to contact_item_url(@contact_item), notice: "Contact item was successfully updated." }
        format.json { render :show, status: :ok, location: @contact_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contact_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_items/1 or /contact_items/1.json
  def destroy
    @contact_item.destroy

    respond_to do |format|
      format.html { redirect_to contact_items_url, notice: "Contact item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_item
      @contact_item = ContactItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contact_item_params
      params.require(:contact_item).permit(:image, :attachment, :contactType, :string, :contact)
    end
end
