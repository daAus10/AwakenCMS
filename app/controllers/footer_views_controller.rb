class FooterViewsController < ApplicationController
  before_action :set_footer_view, only: %i[ show edit update destroy ]
  before_action :authorize_user,
    def authorize_user
      unless current_user
        redirect_to root_path, alert: "You must be an editor to access this page."
      end
    end

  # GET /footer_views or /footer_views.json
  def index
    @footer_views = FooterView.all
  end

  # GET /footer_views/1 or /footer_views/1.json
  def show
  end

  # GET /footer_views/new
  def new
    @footer_view = FooterView.new
  end

  # GET /footer_views/1/edit
  def edit
  end

  # POST /footer_views or /footer_views.json
  def create
    @footer_view = FooterView.new(footer_view_params)

    respond_to do |format|
      if @footer_view.save
        format.html { redirect_to footer_view_url(@footer_view), notice: "Footer view was successfully created." }
        format.json { render :show, status: :created, location: @footer_view }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @footer_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /footer_views/1 or /footer_views/1.json
  def update
    respond_to do |format|
      if @footer_view.update(footer_view_params)
        format.html { redirect_to footer_view_url(@footer_view), notice: "Footer view was successfully updated." }
        format.json { render :show, status: :ok, location: @footer_view }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @footer_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /footer_views/1 or /footer_views/1.json
  def destroy
    @footer_view.destroy

    respond_to do |format|
      format.html { redirect_to footer_views_url, notice: "Footer view was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_footer_view
      @footer_view = FooterView.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def footer_view_params
      params.require(:footer_view).permit(:brand_name, :brand_image, :group_title, :social_image_1, :social_image_2, :social_image_3, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday)
    end
end
