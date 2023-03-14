class HotNewViewsController < ApplicationController
  before_action :set_hot_new_view, only: %i[ show edit update destroy ]
  before_action :authorize_user,
    def authorize_user
      unless current_user
        redirect_to root_path, alert: "You must be an editor to access this page."
      end
    end
  # GET /hot_new_views or /hot_new_views.json
  def index
    @hot_new_views = HotNewView.all
  end

  # GET /hot_new_views/1 or /hot_new_views/1.json
  def show
  end

  # GET /hot_new_views/new
  def new
    @hot_new_view = HotNewView.new
  end

  # GET /hot_new_views/1/edit
  def edit
  end

  # POST /hot_new_views or /hot_new_views.json
  def create
    @hot_new_view = HotNewView.new(hot_new_view_params)

    respond_to do |format|
      if @hot_new_view.save
        format.html { redirect_to hot_new_view_url(@hot_new_view), notice: "Hot new view was successfully created." }
        format.json { render :show, status: :created, location: @hot_new_view }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hot_new_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hot_new_views/1 or /hot_new_views/1.json
  def update
    respond_to do |format|
      if @hot_new_view.update(hot_new_view_params)
        format.html { redirect_to hot_new_view_url(@hot_new_view), notice: "Hot new view was successfully updated." }
        format.json { render :show, status: :ok, location: @hot_new_view }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hot_new_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hot_new_views/1 or /hot_new_views/1.json
  def destroy
    @hot_new_view.destroy

    respond_to do |format|
      format.html { redirect_to hot_new_views_url, notice: "Hot new view was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hot_new_view
      @hot_new_view = HotNewView.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hot_new_view_params
      params.require(:hot_new_view).permit(:image, :title, :description, :isVisible, :link)
    end
end
