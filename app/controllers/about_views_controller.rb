class AboutViewsController < ApplicationController
  before_action :set_about_view, only: %i[ show edit update destroy ]
  before_action :authorize_user,
    def authorize_user
      unless current_user
        redirect_to root_path, alert: "You must be an editor to access this page."
      end
    end

  # GET /about_views or /about_views.json
  def index

    @about_views = AboutView.all
  end

  # GET /about_views/1 or /about_views/1.json
  def show
  end

  # GET /about_views/new
  def new
    @about_view = AboutView.new
  end

  # GET /about_views/1/edit
  def edit
  end

  # POST /about_views or /about_views.json
  def create
    @about_view = AboutView.new(about_view_params)

    respond_to do |format|
      if @about_view.save
        format.html { redirect_to about_view_url(@about_view), notice: "About view was successfully created." }
        format.json { render :show, status: :created, location: @about_view }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @about_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /about_views/1 or /about_views/1.json
  def update
    respond_to do |format|
      if @about_view.update(about_view_params)
        format.html { redirect_to about_view_url(@about_view), notice: "About view was successfully updated." }
        format.json { render :show, status: :ok, location: @about_view }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @about_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /about_views/1 or /about_views/1.json
  def destroy
    @about_view.destroy

    respond_to do |format|
      format.html { redirect_to about_views_url, notice: "About view was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about_view
      @about_view = AboutView.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def about_view_params
      params.require(:about_view).permit(:title, :description, :about_link)
    end
end
