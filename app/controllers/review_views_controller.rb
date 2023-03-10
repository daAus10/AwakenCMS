class ReviewViewsController < ApplicationController
  before_action :set_review_view, only: %i[ show edit update destroy ]

  # GET /review_views or /review_views.json
  def index
    @review_views = ReviewView.all
  end

  # GET /review_views/1 or /review_views/1.json
  def show
  end

  # GET /review_views/new
  def new
    @review_view = ReviewView.new
  end

  # GET /review_views/1/edit
  def edit
  end

  # POST /review_views or /review_views.json
  def create
    @review_view = ReviewView.new(review_view_params)

    respond_to do |format|
      if @review_view.save
        format.html { redirect_to review_view_url(@review_view), notice: "Review view was successfully created." }
        format.json { render :show, status: :created, location: @review_view }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @review_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /review_views/1 or /review_views/1.json
  def update
    respond_to do |format|
      if @review_view.update(review_view_params)
        format.html { redirect_to review_view_url(@review_view), notice: "Review view was successfully updated." }
        format.json { render :show, status: :ok, location: @review_view }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @review_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /review_views/1 or /review_views/1.json
  def destroy
    @review_view.destroy

    respond_to do |format|
      format.html { redirect_to review_views_url, notice: "Review view was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review_view
      @review_view = ReviewView.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def review_view_params
      params.require(:review_view).permit(:title, :content)
    end
end
