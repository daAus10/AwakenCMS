class GalleryViewsController < ApplicationController
  before_action :set_gallery_view, only: %i[ show edit update destroy ]
  before_action :authorize_user,
    def authorize_user
      unless current_user
        redirect_to root_path, alert: "You must be an editor to access this page."
      end
    end

  # GET /gallery_views or /gallery_views.json
  def index
    @gallery_views = GalleryView.all
  end

  # GET /gallery_views/1 or /gallery_views/1.json
  def show
  end

  # GET /gallery_views/new
  def new
    @gallery_view = GalleryView.new
  end

  # GET /gallery_views/1/edit
  def edit
  end

  # POST /gallery_views or /gallery_views.json
  def create
    @gallery_view = GalleryView.new(gallery_view_params)

    respond_to do |format|
      if @gallery_view.save
        format.html { redirect_to gallery_view_url(@gallery_view), notice: "Gallery view was successfully created." }
        format.json { render :show, status: :created, location: @gallery_view }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gallery_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gallery_views/1 or /gallery_views/1.json
  def update
    respond_to do |format|
      if @gallery_view.update(gallery_view_params)
        format.html { redirect_to gallery_view_url(@gallery_view), notice: "Gallery view was successfully updated." }
        format.json { render :show, status: :ok, location: @gallery_view }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gallery_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gallery_views/1 or /gallery_views/1.json
  def destroy
    @gallery_view.destroy

    respond_to do |format|
      format.html { redirect_to gallery_views_url, notice: "Gallery view was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallery_view
      @gallery_view = GalleryView.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gallery_view_params
      params.require(:gallery_view).permit(:title, :description, :external_link, :image)
    end
end
