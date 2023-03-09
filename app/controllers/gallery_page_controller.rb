include GalleryViewsHelper

class GalleryPageController < ApplicationController

  def galleryIndex
    # Gallery View Header data
    @gallery_data_title = GalleryView.pluck(:title)
    @gallery_data_desc = GalleryView.pluck(:description)

    #Gallery View Post Images
    # (This helps pulls all the images and displays it on the page)
    @galleryImages = GalleryImagePost.all

  end
end
