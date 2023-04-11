class NavbarViewsController < ApplicationController
  before_action :set_navbar_view, only: %i[ show edit update destroy ]
  before_action :authorize_user

    def authorize_user
      unless current_user
        redirect_to root_path, alert: "You must be an editor to access this page."
      end
    end

  # GET /navbar_views or /navbar_views.json
  def index
    @navbar_views = NavbarView.all

  end

  # GET /navbar_views/1 or /navbar_views/1.json
  def show
  end

  # GET /navbar_views/new
  def new
    @navbar_view = NavbarView.new
  end

  # GET /navbar_views/1/edit
  def edit
  end

  # POST /navbar_views or /navbar_views.json
  def create
    @navbar_view = NavbarView.new(navbar_view_params)

    respond_to do |format|
      if @navbar_view.save
        format.html { redirect_to navbar_view_url(@navbar_view), notice: "Navbar view was successfully created." }
        format.json { render :show, status: :created, location: @navbar_view }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @navbar_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /navbar_views/1 or /navbar_views/1.json
  def update
    respond_to do |format|
      if @navbar_view.update(navbar_view_params)
        format.html { redirect_to navbar_view_url(@navbar_view), notice: "Navbar view was successfully updated." }
        format.json { render :show, status: :ok, location: @navbar_view }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @navbar_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /navbar_views/1 or /navbar_views/1.json
  def destroy
    @navbar_view.destroy

    respond_to do |format|
      format.html { redirect_to navbar_views_url, notice: "Navbar view was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_navbar_view
      @navbar_view = NavbarView.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def navbar_view_params
      params.require(:navbar_view).permit(:image, :brand_name, :link_name1, :link_name2, :link_name3, :link_name4, :services_link, :gallery_link)
    end
end
