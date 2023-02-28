class ContactViewsController < ApplicationController
  before_action :set_contact_view, only: %i[ show edit update destroy ]

  # GET /contact_views or /contact_views.json
  def index
    @contact_views = ContactView.all
  end

  # GET /contact_views/1 or /contact_views/1.json
  def show
  end

  # GET /contact_views/new
  def new
    @contact_view = ContactView.new
  end

  # GET /contact_views/1/edit
  def edit
  end

  # POST /contact_views or /contact_views.json
  def create
    @contact_view = ContactView.new(contact_view_params)

    respond_to do |format|
      if @contact_view.save
        format.html { redirect_to contact_view_url(@contact_view), notice: "Contact view was successfully created." }
        format.json { render :show, status: :created, location: @contact_view }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contact_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_views/1 or /contact_views/1.json
  def update
    respond_to do |format|
      if @contact_view.update(contact_view_params)
        format.html { redirect_to contact_view_url(@contact_view), notice: "Contact view was successfully updated." }
        format.json { render :show, status: :ok, location: @contact_view }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contact_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_views/1 or /contact_views/1.json
  def destroy
    @contact_view.destroy

    respond_to do |format|
      format.html { redirect_to contact_views_url, notice: "Contact view was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_view
      @contact_view = ContactView.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contact_view_params
      params.require(:contact_view).permit(:name, :email, :message)
    end
end
