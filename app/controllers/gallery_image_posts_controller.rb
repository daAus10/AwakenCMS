class GalleryImagePostsController < ApplicationController
  before_action :set_gallery_image_post, only: %i[ show edit update destroy ]
  before_action :authorize_user,
    def authorize_user
      unless current_user
        redirect_to root_path, alert: "You must be an editor to access this page."
      end
    end

  # GET /gallery_image_posts or /gallery_image_posts.json
  def index
    @gallery_image_posts = GalleryImagePost.all
  end

  # GET /gallery_image_posts/1 or /gallery_image_posts/1.json
  def show
  end

  # GET /gallery_image_posts/new
  def new
    @gallery_image_post = GalleryImagePost.new
  end

  # GET /gallery_image_posts/1/edit
  def edit
  end

  # POST /gallery_image_posts or /gallery_image_posts.json
  def create
    @gallery_image_post = GalleryImagePost.new(gallery_image_post_params)

    respond_to do |format|
      if @gallery_image_post.save
        format.html { redirect_to gallery_image_post_url(@gallery_image_post), notice: "Gallery image post was successfully created." }
        format.json { render :show, status: :created, location: @gallery_image_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gallery_image_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gallery_image_posts/1 or /gallery_image_posts/1.json
  def update
    respond_to do |format|
      if @gallery_image_post.update(gallery_image_post_params)
        format.html { redirect_to gallery_image_post_url(@gallery_image_post), notice: "Gallery image post was successfully updated." }
        format.json { render :show, status: :ok, location: @gallery_image_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gallery_image_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gallery_image_posts/1 or /gallery_image_posts/1.json
  def destroy
    @gallery_image_post.destroy

    respond_to do |format|
      format.html { redirect_to gallery_image_posts_url, notice: "Gallery image post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallery_image_post
      @gallery_image_post = GalleryImagePost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gallery_image_post_params
      params.require(:gallery_image_post).permit(:image)
    end
end
