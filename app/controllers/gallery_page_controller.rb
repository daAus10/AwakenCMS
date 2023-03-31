include GalleryViewsHelper

class GalleryPageController < ApplicationController
  # before_action :authorize_user,
  #   def authorize_user
  #     unless current_user
  #       redirect_to root_path, alert: "You must be an editor to access this page."
  #     end
  #   end

  def galleryIndex
    # Gallery View Header data
    @gallery_data_title = GalleryView.pluck(:title)
    @gallery_data_desc = GalleryView.pluck(:description)

    #Gallery View Post Images
    # (This helps pulls all the images and displays it on the page)
    @galleryImages = GalleryImagePost.all

  end
end
