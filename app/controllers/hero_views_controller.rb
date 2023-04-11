class HeroViewsController < ApplicationController
  before_action :set_hero_view, only: %i[ show edit update destroy ]

  # GET /hero_views or /hero_views.json
  def index
    @hero_views = HeroView.all
  end

  # GET /hero_views/1 or /hero_views/1.json
  def show
  end

  # GET /hero_views/new
  def new
    @hero_view = HeroView.new
  end

  # GET /hero_views/1/edit
  def edit
  end

  # POST /hero_views or /hero_views.json
  def create
    @hero_view = HeroView.new(hero_view_params)

    respond_to do |format|
      if @hero_view.save
        format.html { redirect_to hero_view_url(@hero_view), notice: "Hero view was successfully created." }
        format.json { render :show, status: :created, location: @hero_view }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hero_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hero_views/1 or /hero_views/1.json
  def update
    respond_to do |format|
      if @hero_view.update(hero_view_params)
        format.html { redirect_to hero_view_url(@hero_view), notice: "Hero view was successfully updated." }
        format.json { render :show, status: :ok, location: @hero_view }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hero_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hero_views/1 or /hero_views/1.json
  def destroy
    @hero_view.destroy

    respond_to do |format|
      format.html { redirect_to hero_views_url, notice: "Hero view was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hero_view
      @hero_view = HeroView.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hero_view_params
      params.require(:hero_view).permit(:title, :description, :button, :image)
    end
end
