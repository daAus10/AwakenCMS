class HotSectionViewsController < ApplicationController
  before_action :set_hot_section_view, only: %i[ show edit update destroy ]

  # GET /hot_section_views or /hot_section_views.json
  def index
    @hot_section_views = HotSectionView.all
  end

  # GET /hot_section_views/1 or /hot_section_views/1.json
  def show
  end

  # GET /hot_section_views/new
  def new
    @hot_section_view = HotSectionView.new
  end

  # GET /hot_section_views/1/edit
  def edit
  end

  # POST /hot_section_views or /hot_section_views.json
  def create
    @hot_section_view = HotSectionView.new(hot_section_view_params)

    respond_to do |format|
      if @hot_section_view.save
        format.html { redirect_to hot_section_view_url(@hot_section_view), notice: "Hot section view was successfully created." }
        format.json { render :show, status: :created, location: @hot_section_view }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hot_section_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hot_section_views/1 or /hot_section_views/1.json
  def update
    respond_to do |format|
      if @hot_section_view.update(hot_section_view_params)
        format.html { redirect_to hot_section_view_url(@hot_section_view), notice: "Hot section view was successfully updated." }
        format.json { render :show, status: :ok, location: @hot_section_view }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hot_section_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hot_section_views/1 or /hot_section_views/1.json
  def destroy
    @hot_section_view.destroy

    respond_to do |format|
      format.html { redirect_to hot_section_views_url, notice: "Hot section view was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hot_section_view
      @hot_section_view = HotSectionView.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hot_section_view_params
      params.require(:hot_section_view).permit(:image, :title, :description, :isVisible, :link)
    end
end
