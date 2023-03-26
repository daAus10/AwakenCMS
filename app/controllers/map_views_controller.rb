class MapViewsController < ApplicationController
  before_action :set_map_view, only: %i[ show edit update destroy ]
  before_action :authorize_user,

    def authorize_user
      unless current_user
        redirect_to root_path, alert: "You must be an editor to access this page."
      end
    end



  # GET /map_views or /map_views.json
  def index

    @map_views = MapView.all
  end

  # GET /map_views/1 or /map_views/1.json
  def show
  end

  # GET /map_views/new
  def new
    @map_view = MapView.new
  end

  # GET /map_views/1/edit
  def edit
  end

  # POST /map_views or /map_views.json
  def create
    @map_view = MapView.new(map_view_params)

    respond_to do |format|
      if @map_view.save
        format.html { redirect_to map_view_url(@map_view), notice: "Map view was successfully created." }
        format.json { render :show, status: :created, location: @map_view }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @map_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /map_views/1 or /map_views/1.json
  def update
    respond_to do |format|
      if @map_view.update(map_view_params)
        format.html { redirect_to map_view_url(@map_view), notice: "Map view was successfully updated." }
        format.json { render :show, status: :ok, location: @map_view }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @map_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /map_views/1 or /map_views/1.json
  def destroy
    @map_view.destroy

    respond_to do |format|
      format.html { redirect_to map_views_url, notice: "Map view was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_map_view
      @map_view = MapView.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def map_view_params
      params.require(:map_view).permit(:url)
    end
end
